`timescale 1ns / 1ps

module spi_master #
       (
           parameter DATA_WIDTH = 16,
           parameter DIV = 12 // clock divider
       )
       (
           input wire clk, // 25 MHz system clock
           input wire rst, // async reset (high)
           input wire start, // start transmission
           input wire [DATA_WIDTH-1:0] datain,

           output reg spi_cs_l,
           output reg spi_sclk,
           output reg spi_mosi,

           output reg busy,
           output reg done
       );

// FSM states
localparam IDLE = 3'd0;
localparam LOAD = 3'd1;
localparam LOW = 3'd2;
localparam HIGH = 3'd3;
localparam DONE = 3'd4;

reg [2:0] state;
reg [DATA_WIDTH-1:0] shreg;
reg [$clog2(DATA_WIDTH):0] bit_cnt;
reg [$clog2(DIV+1):0] div_cnt;

/*--------------------------------------------------
 * Main FSM
 *--------------------------------------------------*/
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        spi_cs_l <= 1'b1;
        spi_sclk <= 1'b0;
        spi_mosi <= 1'b0;
        shreg <= 0;
        bit_cnt <= 0;
        div_cnt <= 0;
        busy <= 1'b0;
        done <= 1'b0;
    end
    else begin
        done <= 1'b0;

        case (state)
            //------------------------------------------
            IDLE: begin
                spi_cs_l <= 1'b1;
                spi_sclk <= 1'b0;
                busy <= 1'b0;

                if (start) begin
                    state <= LOAD;
                end
            end

            //------------------------------------------
            LOAD: begin
                spi_cs_l <= 1'b0;
                shreg <= datain;
                bit_cnt <= DATA_WIDTH;
                busy <= 1'b1;
                div_cnt <= 0;
                state <= LOW;
            end

            //------------------------------------------
            LOW: begin
                spi_sclk <= 1'b0;

                if (div_cnt == DIV) begin
                    div_cnt <= 0;
                    spi_mosi <= shreg[DATA_WIDTH-1]; // data valid before rising edge
                    state <= HIGH;
                end
                else begin
                    div_cnt <= div_cnt + 1;
                end
            end

            //------------------------------------------
            HIGH: begin
                spi_sclk <= 1'b1;

                if (div_cnt == DIV) begin
                    div_cnt <= 0;
                    shreg <= {shreg[DATA_WIDTH-2:0], 1'b0};
                    bit_cnt <= bit_cnt - 1;

                    if (bit_cnt == 1)
                        state <= DONE;
                    else
                        state <= LOW;
                end
                else begin
                    div_cnt <= div_cnt + 1;
                end
            end

            //------------------------------------------
            DONE: begin
                spi_cs_l <= 1'b1;
                spi_sclk <= 1'b0;
                busy <= 1'b0;
                done <= 1'b1;
                state <= IDLE;
            end

            default:
                state <= IDLE;
        endcase
    end
end

endmodule

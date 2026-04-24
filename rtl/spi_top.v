`include "command_setting.v"
module spi_top (
           input clk,
           input wire rst,

           output wire spi_cs_l,
           output wire spi_sclk,
           output wire spi_data
       );

// -------------------------------------------------
// Command storage
// -------------------------------------------------
reg [15:0] datain;
reg [3:0] cmd_counter;
reg [31:0] delay_counter;
// -------------------------------------------------
// SPI master control
// -------------------------------------------------
reg start;
wire busy;
wire done;

// -------------------------------------------------
// Command Sequencer FSM
// -------------------------------------------------
localparam CMD_IDLE = 2'd0;
localparam CMD_LOAD = 2'd1;
localparam CMD_WAIT = 2'd2;
localparam CMD_DONE = 2'd3;

reg [1:0] state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= CMD_IDLE;
        cmd_counter <= 4'd0;
        delay_counter <= 32'd0;
        datain <= 16'd0;
        start <= 1'b0;
    end
    else begin
        start <= 1'b0; // default

        case (state)

            //------------------------------------------
            CMD_IDLE: begin
                cmd_counter <= 4'd0;
                if(delay_counter <= `DELAY_TIME) begin
                    delay_counter <= delay_counter + 32'd1;
                end
                else begin
                    state <= CMD_LOAD;
                end
            end

            //------------------------------------------
            CMD_LOAD: begin
                case (cmd_counter)
                    0:
                        datain <= 16'b0000_0000_0000_0000;
                    1:
                        datain <= {`SET_1, `ADDR_1, `DATA_1};
                    2:
                        datain <= {`SET_2, `ADDR_2, `DATA_2};
                    3:
                        datain <= {`SET_3, `ADDR_3, `DATA_3};
                    4:
                        datain <= {`SET_4, `ADDR_4, `DATA_4};
                    5:
                        datain <= {`SET_5, `ADDR_5, `DATA_5};
                    6:
                        datain <= {`SET_6, `ADDR_6, `DATA_6};
                    7:
                        datain <= {`SET_7, `ADDR_7, `DATA_7};
                    8:
                        datain <= {`SET_8, `ADDR_8, `DATA_8};
                    9:
                        datain <= {`SET_9, `ADDR_9, `DATA_9};
                    10:
                        datain <= {`SET_10, `ADDR_10, `DATA_10};
                    11:
                        datain <= {`SET_11, `ADDR_11, `DATA_11};
                    12:
                        datain <= {`SET_12, `ADDR_12, `DATA_12};
                    13:
                        datain <= {`SET_13, `ADDR_13, `DATA_13};
                    14:
                        datain <= {`SET_14, `ADDR_14, `DATA_14};
                    15:
                        datain <= {`SET_15, `ADDR_15, `DATA_15};
                    16:
                        datain <= {`SET_16, `ADDR_16, `DATA_16};
                    17:
                        datain <= {`SET_17, `ADDR_17, `DATA_17};
                    18:
                        datain <= {`SET_18, `ADDR_18, `DATA_18};
                    19:
                        datain <= {`SET_19, `ADDR_19, `DATA_19};
                    20:
                        datain <= {`SET_20, `ADDR_20, `DATA_20};
                    21:
                        datain <= {`SET_21, `ADDR_21, `DATA_21};
                    22:
                        datain <= {`SET_22, `ADDR_22, `DATA_22};
                    23:
                        datain <= {`SET_23, `ADDR_23, `DATA_23};
                    24:
                        datain <= {`SET_24, `ADDR_24, `DATA_24};
                    25:
                        datain <= {`SET_25, `ADDR_25, `DATA_25};
                    26:
                        datain <= {`SET_26, `ADDR_26, `DATA_26};
                    27:
                        datain <= {`SET_27, `ADDR_27, `DATA_27};
                    28:
                        datain <= {`SET_28, `ADDR_28, `DATA_28};
                    29:
                        datain <= {`SET_29, `ADDR_29, `DATA_29};
                    30:
                        datain <= {`SET_30, `ADDR_30, `DATA_30};
                    31:
                        datain <= {`SET_31, `ADDR_31, `DATA_31};
                    32:
                        datain <= {`SET_32, `ADDR_32, `DATA_32};
                    33:
                        datain <= {`SET_33, `ADDR_33, `DATA_33};
                    34:
                        datain <= {`SET_34, `ADDR_34, `DATA_34};
                    35:
                        datain <= {`SET_35, `ADDR_35, `DATA_35};
                    36:
                        datain <= {`SET_36, `ADDR_36, `DATA_36};
                    37:
                        datain <= {`SET_37, `ADDR_37, `DATA_37};
                    38:
                        datain <= {`SET_38, `ADDR_38, `DATA_38};
                    39:
                        datain <= {`SET_39, `ADDR_39, `DATA_39};
                    40:
                        datain <= {`SET_40, `ADDR_40, `DATA_40};
                    41:
                        datain <= {`SET_41, `ADDR_41, `DATA_41};
                    42:
                        datain <= {`SET_42, `ADDR_42, `DATA_42};
                    43:
                        datain <= {`SET_43, `ADDR_43, `DATA_43};
                    44:
                        datain <= {`SET_44, `ADDR_44, `DATA_44};
                    45:
                        datain <= {`SET_45, `ADDR_45, `DATA_45};
                    46:
                        datain <= {`SET_46, `ADDR_46, `DATA_46};
                    47:
                        datain <= {`SET_47, `ADDR_47, `DATA_47};
                    48:
                        datain <= {`SET_48, `ADDR_48, `DATA_48};
                    49:
                        datain <= {`SET_49, `ADDR_49, `DATA_49};
                    50:
                        datain <= {`SET_50, `ADDR_50, `DATA_50};
                    51:
                        datain <= {`SET_51, `ADDR_51, `DATA_51};
                    52:
                        datain <= {`SET_52, `ADDR_52, `DATA_52};
                    53:
                        datain <= {`SET_53, `ADDR_53, `DATA_53};
                    54:
                        datain <= {`SET_54, `ADDR_54, `DATA_54};
                    55:
                        datain <= {`SET_55, `ADDR_55, `DATA_55};
                    56:
                        datain <= {`SET_56, `ADDR_56, `DATA_56};
                    57:
                        datain <= {`SET_57, `ADDR_57, `DATA_57};
                    58:
                        datain <= {`SET_58, `ADDR_58, `DATA_58};
                    59:
                        datain <= {`SET_59, `ADDR_59, `DATA_59};
                    60:
                        datain <= {`SET_60, `ADDR_60, `DATA_60};
                    61:
                        datain <= {`SET_61, `ADDR_61, `DATA_61};
                    62:
                        datain <= {`SET_62, `ADDR_62, `DATA_62};
                    63:
                        datain <= {`SET_63, `ADDR_63, `DATA_63};
                    64:
                        datain <= {`SET_64, `ADDR_64, `DATA_64};
                    65:
                        datain <= {`SET_65, `ADDR_65, `DATA_65};
                    66:
                        datain <= {`SET_66, `ADDR_66, `DATA_66};
                    67:
                        datain <= {`SET_67, `ADDR_67, `DATA_67};
                    68:
                        datain <= {`SET_68, `ADDR_68, `DATA_68};
                    69:
                        datain <= {`SET_69, `ADDR_69, `DATA_69};
                    70:
                        datain <= {`SET_70, `ADDR_70, `DATA_70};
                    71:
                        datain <= {`SET_71, `ADDR_71, `DATA_71};
                    72:
                        datain <= {`SET_72, `ADDR_72, `DATA_72};
                    73:
                        datain <= {`SET_73, `ADDR_73, `DATA_73};
                    74:
                        datain <= {`SET_74, `ADDR_74, `DATA_74};
                    75:
                        datain <= {`SET_75, `ADDR_75, `DATA_75};
                    76:
                        datain <= {`SET_76, `ADDR_76, `DATA_76};
                    77:
                        datain <= {`SET_77, `ADDR_77, `DATA_77};
                    78:
                        datain <= {`SET_78, `ADDR_78, `DATA_78};
                    79:
                        datain <= {`SET_79, `ADDR_79, `DATA_79};
                    80:
                        datain <= {`SET_80, `ADDR_80, `DATA_80};
                    81:
                        datain <= {`SET_81, `ADDR_81, `DATA_81};
                    82:
                        datain <= {`SET_82, `ADDR_82, `DATA_82};
                    83:
                        datain <= {`SET_83, `ADDR_83, `DATA_83};
                    84:
                        datain <= {`SET_84, `ADDR_84, `DATA_84};
                    85:
                        datain <= {`SET_85, `ADDR_85, `DATA_85};
                    86:
                        datain <= {`SET_86, `ADDR_86, `DATA_86};
                    87:
                        datain <= {`SET_87, `ADDR_87, `DATA_87};
                    88:
                        datain <= {`SET_88, `ADDR_88, `DATA_88};
                    89:
                        datain <= {`SET_89, `ADDR_89, `DATA_89};
                    90:
                        datain <= {`SET_90, `ADDR_90, `DATA_90};
                    91:
                        datain <= {`SET_91, `ADDR_91, `DATA_91};
                    92:
                        datain <= {`SET_92, `ADDR_92, `DATA_92};
                    93:
                        datain <= {`SET_93, `ADDR_93, `DATA_93};
                    94:
                        datain <= {`SET_94, `ADDR_94, `DATA_94};
                    95:
                        datain <= {`SET_95, `ADDR_95, `DATA_95};
                    96:
                        datain <= {`SET_96, `ADDR_96, `DATA_96};
                    97:
                        datain <= {`SET_97, `ADDR_97, `DATA_97};
                    98:
                        datain <= {`SET_98, `ADDR_98, `DATA_98};
                    99:
                        datain <= {`SET_99, `ADDR_99, `DATA_99};
                    100:
                        datain <= {`SET_100, `ADDR_100, `DATA_100};
                    101:
                        datain <= {`SET_101, `ADDR_101, `DATA_101};
                    102:
                        datain <= {`SET_102, `ADDR_102, `DATA_102};
                    103:
                        datain <= {`SET_103, `ADDR_103, `DATA_103};
                    104:
                        datain <= {`SET_104, `ADDR_104, `DATA_104};
                    105:
                        datain <= {`SET_105, `ADDR_105, `DATA_105};
                    106:
                        datain <= {`SET_106, `ADDR_106, `DATA_106};
                    107:
                        datain <= {`SET_107, `ADDR_107, `DATA_107};
                    108:
                        datain <= {`SET_108, `ADDR_108, `DATA_108};
                    109:
                        datain <= {`SET_109, `ADDR_109, `DATA_109};
                    110:
                        datain <= {`SET_110, `ADDR_110, `DATA_110};
                    111:
                        datain <= {`SET_111, `ADDR_111, `DATA_111};
                    112:
                        datain <= {`SET_112, `ADDR_112, `DATA_112};
                    113:
                        datain <= {`SET_113, `ADDR_113, `DATA_113};
                    114:
                        datain <= {`SET_114, `ADDR_114, `DATA_114};
                    115:
                        datain <= {`SET_115, `ADDR_115, `DATA_115};
                    116:
                        datain <= {`SET_116, `ADDR_116, `DATA_116};
                    117:
                        datain <= {`SET_117, `ADDR_117, `DATA_117};
                    118:
                        datain <= {`SET_118, `ADDR_118, `DATA_118};
                    119:
                        datain <= {`SET_119, `ADDR_119, `DATA_119};
                    120:
                        datain <= {`SET_120, `ADDR_120, `DATA_120};
                    121:
                        datain <= {`SET_121, `ADDR_121, `DATA_121};
                    122:
                        datain <= {`SET_122, `ADDR_122, `DATA_122};
                    123:
                        datain <= {`SET_123, `ADDR_123, `DATA_123};
                    124:
                        datain <= {`SET_124, `ADDR_124, `DATA_124};
                    125:
                        datain <= {`SET_125, `ADDR_125, `DATA_125};
                    126:
                        datain <= {`SET_126, `ADDR_126, `DATA_126};
                    127:
                        datain <= {`SET_127, `ADDR_127, `DATA_127};
                    128:
                        datain <= {`SET_128, `ADDR_128, `DATA_128};
                    129:
                        datain <= {`SET_129, `ADDR_129, `DATA_129};
                    130:
                        datain <= {`SET_130, `ADDR_130, `DATA_130};
                    131:
                        datain <= {`SET_131, `ADDR_131, `DATA_131};
                    132:
                        datain <= {`SET_132, `ADDR_132, `DATA_132};
                    133:
                        datain <= {`SET_133, `ADDR_133, `DATA_133};
                    134:
                        datain <= {`SET_134, `ADDR_134, `DATA_134};
                    135:
                        datain <= {`SET_135, `ADDR_135, `DATA_135};
                    136:
                        datain <= {`SET_136, `ADDR_136, `DATA_136};
                    137:
                        datain <= {`SET_137, `ADDR_137, `DATA_137};
                    138:
                        datain <= {`SET_138, `ADDR_138, `DATA_138};
                    139:
                        datain <= {`SET_139, `ADDR_139, `DATA_139};
                    140:
                        datain <= {`SET_140, `ADDR_140, `DATA_140};
                    141:
                        datain <= {`SET_141, `ADDR_141, `DATA_141};
                    142:
                        datain <= {`SET_142, `ADDR_142, `DATA_142};
                    143:
                        datain <= {`SET_143, `ADDR_143, `DATA_143};
                    144:
                        datain <= {`SET_144, `ADDR_144, `DATA_144};
                    145:
                        datain <= {`SET_145, `ADDR_145, `DATA_145};
                    146:
                        datain <= {`SET_146, `ADDR_146, `DATA_146};

                    default:
                        datain <= 16'd0;
                endcase

                start <= 1'b1; // pulse start
                state <= CMD_WAIT;
            end

            //------------------------------------------
            CMD_WAIT: begin
                if (done) begin
                    if (cmd_counter == `CMD_NUM)
                        state <= CMD_DONE;
                    else begin
                        cmd_counter <= cmd_counter + 1'b1;
                        state <= CMD_LOAD;
                    end
                end
            end

            //------------------------------------------
            CMD_DONE: begin
                // All commands sent
                state <= CMD_DONE;
            end

            default:
                state <= CMD_IDLE;
        endcase
    end
end

// -------------------------------------------------
// SPI master instance
// -------------------------------------------------
spi_master uut (
               .clk (clk),
               .rst (rst),
               .start (start),
               .datain (datain),
               .spi_cs_l (spi_cs_l),
               .spi_sclk (spi_sclk),
               .spi_mosi (spi_data),
               .busy (busy),
               .done (done)
           );


// clk_wiz_0 inst
//                   (
//                       // Clock out ports
//                       .clk_out1(clk),
//                       // Status and control signals
//                       .reset(rst),
//                       .locked(locked),
//                       // Clock in ports
//                       .clk_in1(clk)
//                   );
endmodule

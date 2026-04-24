`define DELAY_TIME 32'd5000000 // 0.6615us/Unit, 1000000 Units ??? 0.6615s, 5000000 Units ??? 3.3075s, 10000000 Units ??? 6.615s

// SPI DATA FORMAT: W/R ID[1:0] ADDR[4:0] DATA[7:0]
`define CMD_NUM 3

`define SET_1 3'b000
`define ADDR_1 5'b00000
`define DATA_1 8'b00000000

`define SET_2 3'b000
`define ADDR_2 5'b11111
`define DATA_2 8'b10101010

`define SET_3 3'b000
`define ADDR_3 5'b00011
`define DATA_3 8'b00001101

`define SET_4 3'b000
`define ADDR_4 5'b01101
`define DATA_4 8'b11000110

`define SET_5 3'b000
`define ADDR_5 5'b01010
`define DATA_5 8'b01010101

`define SET_6 3'b000
`define ADDR_6 5'b01011
`define DATA_6 8'b00000001

`define SET_7 3'b000
`define ADDR_7 5'b01110
`define DATA_7 8'b00000001

`define SET_8 3'b000
`define ADDR_8 5'b01111
`define DATA_8 8'b00111111

`define SET_9 3'b000
`define ADDR_9 5'b00000
`define DATA_9 8'b00000011

`define SET_10 3'b000
`define ADDR_10 5'b11111
`define DATA_10 8'b10101010

`define SET_11 3'b000
`define ADDR_11 5'b01110
`define DATA_11 8'b01000100

`define SET_12 3'b000
`define ADDR_12 5'b10000
`define DATA_12 8'b00000101

`define SET_13 3'b000
`define ADDR_13 5'b00000
`define DATA_13 8'b00000100

`define SET_14 3'b000
`define ADDR_14 5'b11111
`define DATA_14 8'b10101010

`define SET_15 3'b000
`define ADDR_15 5'b00001
`define DATA_15 8'b00000011

`define SET_16 3'b000
`define ADDR_16 5'b00000
`define DATA_16 8'b00001011

`define SET_17 3'b000
`define ADDR_17 5'b11111
`define DATA_17 8'b10101010

`define SET_18 3'b000
`define ADDR_18 5'b00001
`define DATA_18 8'b00011101

`define SET_19 3'b000
`define ADDR_19 5'b00010
`define DATA_19 8'b10000000

`define SET_20 3'b000
`define ADDR_20 5'b00011
`define DATA_20 8'b11000111

`define SET_21 3'b000
`define ADDR_21 5'b00100
`define DATA_21 8'b11010000

`define SET_22 3'b000
`define ADDR_22 5'b00101
`define DATA_22 8'b01000010

`define SET_23 3'b000
`define ADDR_23 5'b00111
`define DATA_23 8'b00000110

`define SET_24 3'b000
`define ADDR_24 5'b01000
`define DATA_24 8'b00010100

`define SET_25 3'b000
`define ADDR_25 5'b01001
`define DATA_25 8'b01000010

`define SET_26 3'b000
`define ADDR_26 5'b01111
`define DATA_26 8'b00110101

`define SET_27 3'b000
`define ADDR_27 5'b10000
`define DATA_27 8'b11100110

`define SET_28 3'b000
`define ADDR_28 5'b10001
`define DATA_28 8'b00001011

`define SET_29 3'b000
`define ADDR_29 5'b10010
`define DATA_29 8'b11000011

`define SET_30 3'b000
`define ADDR_30 5'b10011
`define DATA_30 8'b10000100

`define SET_31 3'b000
`define ADDR_31 5'b00000
`define DATA_31 8'b00001100

`define SET_32 3'b000
`define ADDR_32 5'b11111
`define DATA_32 8'b10101010

`define SET_33 3'b000
`define ADDR_33 5'b00100
`define DATA_33 8'b11111111

`define SET_34 3'b000
`define ADDR_34 5'b11000
`define DATA_34 8'b11000000

`define SET_35 3'b000
`define ADDR_35 5'b11010
`define DATA_35 8'b00000000

`define SET_36 3'b000
`define ADDR_36 5'b11100
`define DATA_36 8'b01110100

`define SET_37 3'b000
`define ADDR_37 5'b11101
`define DATA_37 8'b00001001

`define SET_38 3'b000
`define ADDR_38 5'b00000
`define DATA_38 8'b00001101

`define SET_39 3'b000
`define ADDR_39 5'b11111
`define DATA_39 8'b10101010

`define SET_40 3'b000
`define ADDR_40 5'b00010
`define DATA_40 8'b00111011

`define SET_41 3'b000
`define ADDR_41 5'b00011
`define DATA_41 8'b00110100

`define SET_42 3'b000
`define ADDR_42 5'b00100
`define DATA_42 8'b00111011

`define SET_43 3'b000
`define ADDR_43 5'b00101
`define DATA_43 8'b00110100

`define SET_44 3'b000
`define ADDR_44 5'b01001
`define DATA_44 8'b10000000

`define SET_45 3'b000
`define ADDR_45 5'b01110
`define DATA_45 8'b10100001

`define SET_46 3'b000
`define ADDR_46 5'b00000
`define DATA_46 8'b00010001

`define SET_47 3'b000
`define ADDR_47 5'b11111
`define DATA_47 8'b10101010

`define SET_48 3'b000
`define ADDR_48 5'b01011
`define DATA_48 8'b01100111

`define SET_49 3'b000
`define ADDR_49 5'b01100
`define DATA_49 8'b11111100

`define SET_50 3'b000
`define ADDR_50 5'b01101
`define DATA_50 8'b00011111

`define SET_51 3'b000
`define ADDR_51 5'b10000
`define DATA_51 8'b01110100

`define SET_52 3'b000
`define ADDR_52 5'b10001
`define DATA_52 8'b00001001

`define SET_53 3'b000
`define ADDR_53 5'b00000
`define DATA_53 8'b00010010

`define SET_54 3'b000
`define ADDR_54 5'b11111
`define DATA_54 8'b10101010

`define SET_55 3'b000
`define ADDR_55 5'b00010
`define DATA_55 8'b00000000

`define SET_56 3'b000
`define ADDR_56 5'b00011
`define DATA_56 8'b00110100

`define SET_57 3'b000
`define ADDR_57 5'b00000
`define DATA_57 8'b00010100

`define SET_58 3'b000
`define ADDR_58 5'b11111
`define DATA_58 8'b10101010

`define SET_59 3'b000
`define ADDR_59 5'b00110
`define DATA_59 8'b00000000

`define SET_60 3'b000
`define ADDR_60 5'b00000
`define DATA_60 8'b00011001

`define SET_61 3'b000
`define ADDR_61 5'b11111
`define DATA_61 8'b10101010

`define SET_62 3'b000
`define ADDR_62 5'b00001
`define DATA_62 8'b00000010

`define SET_63 3'b000
`define ADDR_63 5'b00010
`define DATA_63 8'b00100011

`define SET_64 3'b000
`define ADDR_64 5'b00011
`define DATA_64 8'b00101101

`define SET_65 3'b000
`define ADDR_65 5'b00100
`define DATA_65 8'b00100101

`define SET_66 3'b000
`define ADDR_66 5'b00101
`define DATA_66 8'b00100101

`define SET_67 3'b000
`define ADDR_67 5'b00110
`define DATA_67 8'b00100101

`define SET_68 3'b000
`define ADDR_68 5'b00111
`define DATA_68 8'b00100100

`define SET_69 3'b000
`define ADDR_69 5'b01000
`define DATA_69 8'b00100000

`define SET_70 3'b000
`define ADDR_70 5'b01001
`define DATA_70 8'b00011111

`define SET_71 3'b000
`define ADDR_71 5'b01010
`define DATA_71 8'b00011101

`define SET_72 3'b000
`define ADDR_72 5'b01011
`define DATA_72 8'b00011100

`define SET_73 3'b000
`define ADDR_73 5'b01100
`define DATA_73 8'b00010111

`define SET_74 3'b000
`define ADDR_74 5'b01101
`define DATA_74 8'b00010111

`define SET_75 3'b000
`define ADDR_75 5'b01110
`define DATA_75 8'b00010110

`define SET_76 3'b000
`define ADDR_76 5'b01111
`define DATA_76 8'b00010101

`define SET_77 3'b000
`define ADDR_77 5'b10000
`define DATA_77 8'b00010101

`define SET_78 3'b000
`define ADDR_78 5'b10001
`define DATA_78 8'b00010110

`define SET_79 3'b000
`define ADDR_79 5'b10010
`define DATA_79 8'b00001111

`define SET_80 3'b000
`define ADDR_80 5'b10011
`define DATA_80 8'b00101011

`define SET_81 3'b000
`define ADDR_81 5'b10100
`define DATA_81 8'b00111111

`define SET_82 3'b000
`define ADDR_82 5'b10101
`define DATA_82 8'b00011001

`define SET_83 3'b000
`define ADDR_83 5'b10110
`define DATA_83 8'b00000000

`define SET_84 3'b000
`define ADDR_84 5'b00000
`define DATA_84 8'b00011010

`define SET_85 3'b000
`define ADDR_85 5'b11111
`define DATA_85 8'b10101010

`define SET_86 3'b000
`define ADDR_86 5'b00001
`define DATA_86 8'b00000010

`define SET_87 3'b000
`define ADDR_87 5'b00010
`define DATA_87 8'b00100011

`define SET_88 3'b000
`define ADDR_88 5'b00011
`define DATA_88 8'b00101101

`define SET_89 3'b000
`define ADDR_89 5'b00100
`define DATA_89 8'b00100101

`define SET_90 3'b000
`define ADDR_90 5'b00101
`define DATA_90 8'b00100101

`define SET_91 3'b000
`define ADDR_91 5'b00110
`define DATA_91 8'b00100101

`define SET_92 3'b000
`define ADDR_92 5'b00111
`define DATA_92 8'b00100100

`define SET_93 3'b000
`define ADDR_93 5'b01000
`define DATA_93 8'b00100000

`define SET_94 3'b000
`define ADDR_94 5'b01001
`define DATA_94 8'b00011111

`define SET_95 3'b000
`define ADDR_95 5'b01010
`define DATA_95 8'b00011101

`define SET_96 3'b000
`define ADDR_96 5'b01011
`define DATA_96 8'b00011100

`define SET_97 3'b000
`define ADDR_97 5'b01100
`define DATA_97 8'b00010111

`define SET_98 3'b000
`define ADDR_98 5'b01101
`define DATA_98 8'b00010111

`define SET_99 3'b000
`define ADDR_99 5'b01110
`define DATA_99 8'b00010110

`define SET_100 3'b000
`define ADDR_100 5'b01111
`define DATA_100 8'b00010101

`define SET_101 3'b000
`define ADDR_101 5'b10000
`define DATA_101 8'b00010101

`define SET_102 3'b000
`define ADDR_102 5'b10001
`define DATA_102 8'b00010110

`define SET_103 3'b000
`define ADDR_103 5'b10010
`define DATA_103 8'b00001111

`define SET_104 3'b000
`define ADDR_104 5'b10011
`define DATA_104 8'b00101011

`define SET_105 3'b000
`define ADDR_105 5'b10100
`define DATA_105 8'b00111111

`define SET_106 3'b000
`define ADDR_106 5'b10101
`define DATA_106 8'b00011001

`define SET_107 3'b000
`define ADDR_107 5'b10110
`define DATA_107 8'b00000000

`define SET_108 3'b000
`define ADDR_108 5'b00000
`define DATA_108 8'b00101110

`define SET_109 3'b000
`define ADDR_109 5'b11111
`define DATA_109 8'b10101010

`define SET_110 3'b000
`define ADDR_110 5'b00001
`define DATA_110 8'b10000000

`define SET_111 3'b000
`define ADDR_111 5'b00000
`define DATA_111 8'b00110011

`define SET_112 3'b000
`define ADDR_112 5'b11111
`define DATA_112 8'b11001100

`define SET_113 3'b000
`define ADDR_113 5'b10001
`define DATA_113 8'b00000000

`define SET_114 3'b000
`define ADDR_114 5'b00000
`define DATA_114 8'b00110100

`define SET_115 3'b000
`define ADDR_115 5'b11111
`define DATA_115 8'b11001100

`define SET_116 3'b000
`define ADDR_116 5'b10101
`define DATA_116 8'b10000000

`define SET_117 3'b000
`define ADDR_117 5'b00000
`define DATA_117 8'b00110110

`define SET_118 3'b000
`define ADDR_118 5'b11111
`define DATA_118 8'b11001100

`define SET_119 3'b000
`define ADDR_119 5'b01000
`define DATA_119 8'b11000000

`define SET_120 3'b000
`define ADDR_120 5'b10101
`define DATA_120 8'b11000000

`define SET_121 3'b000
`define ADDR_121 5'b00000
`define DATA_121 8'b00110111

`define SET_122 3'b000
`define ADDR_122 5'b11111
`define DATA_122 8'b11001100

`define SET_123 3'b000
`define ADDR_123 5'b00101
`define DATA_123 8'b00000000

`define SET_124 3'b000
`define ADDR_124 5'b00000
`define DATA_124 8'b00111000

`define SET_125 3'b000
`define ADDR_125 5'b11111
`define DATA_125 8'b11001100

`define SET_126 3'b000
`define ADDR_126 5'b00100
`define DATA_126 8'b01000000

`define SET_127 3'b000
`define ADDR_127 5'b10101
`define DATA_127 8'b01000000

`define SET_128 3'b000
`define ADDR_128 5'b11100
`define DATA_128 8'b11000000

`define SET_129 3'b000
`define ADDR_129 5'b00000
`define DATA_129 8'b00111001

`define SET_130 3'b000
`define ADDR_130 5'b11111
`define DATA_130 8'b11001100

`define SET_131 3'b000
`define ADDR_131 5'b11000
`define DATA_131 8'b00000000

`define SET_132 3'b000
`define ADDR_132 5'b00000
`define DATA_132 8'b00111011

`define SET_133 3'b000
`define ADDR_133 5'b11111
`define DATA_133 8'b11001100

`define SET_134 3'b000
`define ADDR_134 5'b00011
`define DATA_134 8'b01000000

`define SET_135 3'b000
`define ADDR_135 5'b00100
`define DATA_135 8'b10000000

`define SET_136 3'b000
`define ADDR_136 5'b00110
`define DATA_136 8'b01000000

`define SET_137 3'b000
`define ADDR_137 5'b00000
`define DATA_137 8'b01000010

`define SET_138 3'b000
`define ADDR_138 5'b11111
`define DATA_138 8'b10101010

`define SET_139 3'b000
`define ADDR_139 5'b00101
`define DATA_139 8'b00000111

`define SET_140 3'b000
`define ADDR_140 5'b00110
`define DATA_140 8'b10000000

`define SET_141 3'b000
`define ADDR_141 5'b00000
`define DATA_141 8'b01000011

`define SET_142 3'b000
`define ADDR_142 5'b11111
`define DATA_142 8'b10101010

`define SET_143 3'b000
`define ADDR_143 5'b00011
`define DATA_143 8'b10000000

`define SET_144 3'b000
`define ADDR_144 5'b00000
`define DATA_144 8'b01000101

`define SET_145 3'b000
`define ADDR_145 5'b11111
`define DATA_145 8'b11001100

`define SET_146 3'b000
`define ADDR_146 5'b10010
`define DATA_146 8'b10000000

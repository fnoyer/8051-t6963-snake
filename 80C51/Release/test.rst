                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:09 2017
                              5 ;--------------------------------------------------------
                              6 	.module test
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _TF1
                             13 	.globl _TR1
                             14 	.globl _TF0
                             15 	.globl _TR0
                             16 	.globl _IE1
                             17 	.globl _IT1
                             18 	.globl _IE0
                             19 	.globl _IT0
                             20 	.globl _SM0
                             21 	.globl _SM1
                             22 	.globl _SM2
                             23 	.globl _REN
                             24 	.globl _TB8
                             25 	.globl _RB8
                             26 	.globl _TI
                             27 	.globl _RI
                             28 	.globl _CY
                             29 	.globl _AC
                             30 	.globl _F0
                             31 	.globl _RS1
                             32 	.globl _RS0
                             33 	.globl _OV
                             34 	.globl _F1
                             35 	.globl _P
                             36 	.globl _RD
                             37 	.globl _WR
                             38 	.globl _T1
                             39 	.globl _T0
                             40 	.globl _INT1
                             41 	.globl _INT0
                             42 	.globl _TXD0
                             43 	.globl _TXD
                             44 	.globl _RXD0
                             45 	.globl _RXD
                             46 	.globl _P3_7
                             47 	.globl _P3_6
                             48 	.globl _P3_5
                             49 	.globl _P3_4
                             50 	.globl _P3_3
                             51 	.globl _P3_2
                             52 	.globl _P3_1
                             53 	.globl _P3_0
                             54 	.globl _P2_7
                             55 	.globl _P2_6
                             56 	.globl _P2_5
                             57 	.globl _P2_4
                             58 	.globl _P2_3
                             59 	.globl _P2_2
                             60 	.globl _P2_1
                             61 	.globl _P2_0
                             62 	.globl _P1_7
                             63 	.globl _P1_6
                             64 	.globl _P1_5
                             65 	.globl _P1_4
                             66 	.globl _P1_3
                             67 	.globl _P1_2
                             68 	.globl _P1_1
                             69 	.globl _P1_0
                             70 	.globl _P0_7
                             71 	.globl _P0_6
                             72 	.globl _P0_5
                             73 	.globl _P0_4
                             74 	.globl _P0_3
                             75 	.globl _P0_2
                             76 	.globl _P0_1
                             77 	.globl _P0_0
                             78 	.globl _PS
                             79 	.globl _PT1
                             80 	.globl _PX1
                             81 	.globl _PT0
                             82 	.globl _PX0
                             83 	.globl _EA
                             84 	.globl _ES
                             85 	.globl _ET1
                             86 	.globl _EX1
                             87 	.globl _ET0
                             88 	.globl _EX0
                             89 	.globl _BREG_F7
                             90 	.globl _BREG_F6
                             91 	.globl _BREG_F5
                             92 	.globl _BREG_F4
                             93 	.globl _BREG_F3
                             94 	.globl _BREG_F2
                             95 	.globl _BREG_F1
                             96 	.globl _BREG_F0
                             97 	.globl _TMOD
                             98 	.globl _TL1
                             99 	.globl _TL0
                            100 	.globl _TH1
                            101 	.globl _TH0
                            102 	.globl _TCON
                            103 	.globl _SP
                            104 	.globl _SCON
                            105 	.globl _SBUF0
                            106 	.globl _SBUF
                            107 	.globl _PSW
                            108 	.globl _PCON
                            109 	.globl _P3
                            110 	.globl _P2
                            111 	.globl _P1
                            112 	.globl _P0
                            113 	.globl _IP
                            114 	.globl _IE
                            115 	.globl _DP0L
                            116 	.globl _DPL
                            117 	.globl _DP0H
                            118 	.globl _DPH
                            119 	.globl _B
                            120 	.globl _ACC
                            121 ;--------------------------------------------------------
                            122 ; special function registers
                            123 ;--------------------------------------------------------
                            124 	.area RSEG    (ABS,DATA)
   0000                     125 	.org 0x0000
                    00E0    126 _ACC	=	0x00e0
                    00F0    127 _B	=	0x00f0
                    0083    128 _DPH	=	0x0083
                    0083    129 _DP0H	=	0x0083
                    0082    130 _DPL	=	0x0082
                    0082    131 _DP0L	=	0x0082
                    00A8    132 _IE	=	0x00a8
                    00B8    133 _IP	=	0x00b8
                    0080    134 _P0	=	0x0080
                    0090    135 _P1	=	0x0090
                    00A0    136 _P2	=	0x00a0
                    00B0    137 _P3	=	0x00b0
                    0087    138 _PCON	=	0x0087
                    00D0    139 _PSW	=	0x00d0
                    0099    140 _SBUF	=	0x0099
                    0099    141 _SBUF0	=	0x0099
                    0098    142 _SCON	=	0x0098
                    0081    143 _SP	=	0x0081
                    0088    144 _TCON	=	0x0088
                    008C    145 _TH0	=	0x008c
                    008D    146 _TH1	=	0x008d
                    008A    147 _TL0	=	0x008a
                    008B    148 _TL1	=	0x008b
                    0089    149 _TMOD	=	0x0089
                            150 ;--------------------------------------------------------
                            151 ; special function bits
                            152 ;--------------------------------------------------------
                            153 	.area RSEG    (ABS,DATA)
   0000                     154 	.org 0x0000
                    00F0    155 _BREG_F0	=	0x00f0
                    00F1    156 _BREG_F1	=	0x00f1
                    00F2    157 _BREG_F2	=	0x00f2
                    00F3    158 _BREG_F3	=	0x00f3
                    00F4    159 _BREG_F4	=	0x00f4
                    00F5    160 _BREG_F5	=	0x00f5
                    00F6    161 _BREG_F6	=	0x00f6
                    00F7    162 _BREG_F7	=	0x00f7
                    00A8    163 _EX0	=	0x00a8
                    00A9    164 _ET0	=	0x00a9
                    00AA    165 _EX1	=	0x00aa
                    00AB    166 _ET1	=	0x00ab
                    00AC    167 _ES	=	0x00ac
                    00AF    168 _EA	=	0x00af
                    00B8    169 _PX0	=	0x00b8
                    00B9    170 _PT0	=	0x00b9
                    00BA    171 _PX1	=	0x00ba
                    00BB    172 _PT1	=	0x00bb
                    00BC    173 _PS	=	0x00bc
                    0080    174 _P0_0	=	0x0080
                    0081    175 _P0_1	=	0x0081
                    0082    176 _P0_2	=	0x0082
                    0083    177 _P0_3	=	0x0083
                    0084    178 _P0_4	=	0x0084
                    0085    179 _P0_5	=	0x0085
                    0086    180 _P0_6	=	0x0086
                    0087    181 _P0_7	=	0x0087
                    0090    182 _P1_0	=	0x0090
                    0091    183 _P1_1	=	0x0091
                    0092    184 _P1_2	=	0x0092
                    0093    185 _P1_3	=	0x0093
                    0094    186 _P1_4	=	0x0094
                    0095    187 _P1_5	=	0x0095
                    0096    188 _P1_6	=	0x0096
                    0097    189 _P1_7	=	0x0097
                    00A0    190 _P2_0	=	0x00a0
                    00A1    191 _P2_1	=	0x00a1
                    00A2    192 _P2_2	=	0x00a2
                    00A3    193 _P2_3	=	0x00a3
                    00A4    194 _P2_4	=	0x00a4
                    00A5    195 _P2_5	=	0x00a5
                    00A6    196 _P2_6	=	0x00a6
                    00A7    197 _P2_7	=	0x00a7
                    00B0    198 _P3_0	=	0x00b0
                    00B1    199 _P3_1	=	0x00b1
                    00B2    200 _P3_2	=	0x00b2
                    00B3    201 _P3_3	=	0x00b3
                    00B4    202 _P3_4	=	0x00b4
                    00B5    203 _P3_5	=	0x00b5
                    00B6    204 _P3_6	=	0x00b6
                    00B7    205 _P3_7	=	0x00b7
                    00B0    206 _RXD	=	0x00b0
                    00B0    207 _RXD0	=	0x00b0
                    00B1    208 _TXD	=	0x00b1
                    00B1    209 _TXD0	=	0x00b1
                    00B2    210 _INT0	=	0x00b2
                    00B3    211 _INT1	=	0x00b3
                    00B4    212 _T0	=	0x00b4
                    00B5    213 _T1	=	0x00b5
                    00B6    214 _WR	=	0x00b6
                    00B7    215 _RD	=	0x00b7
                    00D0    216 _P	=	0x00d0
                    00D1    217 _F1	=	0x00d1
                    00D2    218 _OV	=	0x00d2
                    00D3    219 _RS0	=	0x00d3
                    00D4    220 _RS1	=	0x00d4
                    00D5    221 _F0	=	0x00d5
                    00D6    222 _AC	=	0x00d6
                    00D7    223 _CY	=	0x00d7
                    0098    224 _RI	=	0x0098
                    0099    225 _TI	=	0x0099
                    009A    226 _RB8	=	0x009a
                    009B    227 _TB8	=	0x009b
                    009C    228 _REN	=	0x009c
                    009D    229 _SM2	=	0x009d
                    009E    230 _SM1	=	0x009e
                    009F    231 _SM0	=	0x009f
                    0088    232 _IT0	=	0x0088
                    0089    233 _IE0	=	0x0089
                    008A    234 _IT1	=	0x008a
                    008B    235 _IE1	=	0x008b
                    008C    236 _TR0	=	0x008c
                    008D    237 _TF0	=	0x008d
                    008E    238 _TR1	=	0x008e
                    008F    239 _TF1	=	0x008f
                            240 ;--------------------------------------------------------
                            241 ; overlayable register banks
                            242 ;--------------------------------------------------------
                            243 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     244 	.ds 8
                            245 ;--------------------------------------------------------
                            246 ; internal ram data
                            247 ;--------------------------------------------------------
                            248 	.area DSEG    (DATA)
                            249 ;--------------------------------------------------------
                            250 ; overlayable items in internal ram 
                            251 ;--------------------------------------------------------
                            252 	.area OSEG    (OVR,DATA)
                            253 ;--------------------------------------------------------
                            254 ; indirectly addressable internal ram data
                            255 ;--------------------------------------------------------
                            256 	.area ISEG    (DATA)
                            257 ;--------------------------------------------------------
                            258 ; absolute internal ram data
                            259 ;--------------------------------------------------------
                            260 	.area IABS    (ABS,DATA)
                            261 	.area IABS    (ABS,DATA)
                            262 ;--------------------------------------------------------
                            263 ; bit data
                            264 ;--------------------------------------------------------
                            265 	.area BSEG    (BIT)
                            266 ;--------------------------------------------------------
                            267 ; paged external ram data
                            268 ;--------------------------------------------------------
                            269 	.area PSEG    (PAG,XDATA)
                            270 ;--------------------------------------------------------
                            271 ; external ram data
                            272 ;--------------------------------------------------------
                            273 	.area XSEG    (XDATA)
                            274 ;--------------------------------------------------------
                            275 ; absolute external ram data
                            276 ;--------------------------------------------------------
                            277 	.area XABS    (ABS,XDATA)
                            278 ;--------------------------------------------------------
                            279 ; external initialized ram data
                            280 ;--------------------------------------------------------
                            281 	.area XISEG   (XDATA)
                            282 	.area HOME    (CODE)
                            283 	.area GSINIT0 (CODE)
                            284 	.area GSINIT1 (CODE)
                            285 	.area GSINIT2 (CODE)
                            286 	.area GSINIT3 (CODE)
                            287 	.area GSINIT4 (CODE)
                            288 	.area GSINIT5 (CODE)
                            289 	.area GSINIT  (CODE)
                            290 	.area GSFINAL (CODE)
                            291 	.area CSEG    (CODE)
                            292 ;--------------------------------------------------------
                            293 ; global & static initialisations
                            294 ;--------------------------------------------------------
                            295 	.area HOME    (CODE)
                            296 	.area GSINIT  (CODE)
                            297 	.area GSFINAL (CODE)
                            298 	.area GSINIT  (CODE)
                            299 ;--------------------------------------------------------
                            300 ; Home
                            301 ;--------------------------------------------------------
                            302 	.area HOME    (CODE)
                            303 	.area HOME    (CODE)
                            304 ;--------------------------------------------------------
                            305 ; code
                            306 ;--------------------------------------------------------
                            307 	.area CSEG    (CODE)
                            308 	.area CSEG    (CODE)
                            309 	.area CONST   (CODE)
                            310 	.area XINIT   (CODE)
                            311 	.area CABS    (ABS,CODE)

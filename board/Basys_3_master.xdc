## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Timing constraint
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## Switches
set_property PACKAGE_PIN V17 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

set_property PACKAGE_PIN V16 [get_ports {SW[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]

set_property PACKAGE_PIN W16 [get_ports {SW[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]

set_property PACKAGE_PIN W17 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]

set_property PACKAGE_PIN W15 [get_ports {SW[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[4]}]

set_property PACKAGE_PIN V15 [get_ports {SW[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[5]}]

set_property PACKAGE_PIN W14 [get_ports {SW[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[6]}]

set_property PACKAGE_PIN W13 [get_ports {SW[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[7]}]

set_property PACKAGE_PIN V2 [get_ports {SW[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[8]}]

set_property PACKAGE_PIN T3 [get_ports {SW[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[9]}]

set_property PACKAGE_PIN T2 [get_ports {SW[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[10]}]

set_property PACKAGE_PIN R3 [get_ports {SW[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[11]}]

set_property PACKAGE_PIN W2 [get_ports {SW[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[12]}]

set_property PACKAGE_PIN U1 [get_ports {SW[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[13]}]

set_property PACKAGE_PIN T1 [get_ports {SW[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[14]}]

set_property PACKAGE_PIN R2 [get_ports {SW[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[15]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN E19 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN U19 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN V19 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

set_property PACKAGE_PIN W18 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]

set_property PACKAGE_PIN U15 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]

set_property PACKAGE_PIN U14 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]

set_property PACKAGE_PIN V14 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]

set_property PACKAGE_PIN V13 [get_ports {LED[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]

set_property PACKAGE_PIN V3 [get_ports {LED[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]

set_property PACKAGE_PIN W3 [get_ports {LED[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]

set_property PACKAGE_PIN U3 [get_ports {LED[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]

set_property PACKAGE_PIN P3 [get_ports {LED[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]

set_property PACKAGE_PIN N3 [get_ports {LED[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]

set_property PACKAGE_PIN P1 [get_ports {LED[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]

set_property PACKAGE_PIN L1 [get_ports {LED[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]

##7 segment display
set_property PACKAGE_PIN W7 [get_ports {CA}]
set_property IOSTANDARD LVCMOS33 [get_ports {CA}]

set_property PACKAGE_PIN W6 [get_ports {CB}]
set_property IOSTANDARD LVCMOS33 [get_ports {CB}]

set_property PACKAGE_PIN U8 [get_ports {CC}]
set_property IOSTANDARD LVCMOS33 [get_ports {CC}]

set_property PACKAGE_PIN V8 [get_ports {CD}]
set_property IOSTANDARD LVCMOS33 [get_ports {CD}]

set_property PACKAGE_PIN U5 [get_ports {CE}]
set_property IOSTANDARD LVCMOS33 [get_ports {CE}]

set_property PACKAGE_PIN V5 [get_ports {CF}]
set_property IOSTANDARD LVCMOS33 [get_ports {CF}]

set_property PACKAGE_PIN U7 [get_ports {CG}]
set_property IOSTANDARD LVCMOS33 [get_ports {CG}]

set_property PACKAGE_PIN V7 [get_ports {CDP}]
set_property IOSTANDARD LVCMOS33 [get_ports {CDP}]

set_property PACKAGE_PIN U2 [get_ports {an0}]
set_property IOSTANDARD LVCMOS33 [get_ports {an0}]

set_property PACKAGE_PIN U4 [get_ports {an1}]
set_property IOSTANDARD LVCMOS33 [get_ports {an1}]

set_property PACKAGE_PIN V4 [get_ports {an2}]
set_property IOSTANDARD LVCMOS33 [get_ports {an2}]

set_property PACKAGE_PIN W4 [get_ports {an3}]
set_property IOSTANDARD LVCMOS33 [get_ports {an3}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports BTNC]
set_property IOSTANDARD LVCMOS33 [get_ports BTNC]

set_property PACKAGE_PIN T18 [get_ports BTNU]
set_property IOSTANDARD LVCMOS33 [get_ports BTNU]

set_property PACKAGE_PIN W19 [get_ports BTNL]
set_property IOSTANDARD LVCMOS33 [get_ports BTNL]

set_property PACKAGE_PIN T17 [get_ports BTNR]
set_property IOSTANDARD LVCMOS33 [get_ports BTNR]

set_property PACKAGE_PIN U17 [get_ports BTND]
set_property IOSTANDARD LVCMOS33 [get_ports BTND]

##Pmod Header JA

##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {JA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]

##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {JA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]

##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {JA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]

##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {JA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]

##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {JA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]

##Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {JA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]

##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {JA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]

##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {JA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]
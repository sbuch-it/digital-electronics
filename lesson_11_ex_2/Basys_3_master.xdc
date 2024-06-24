## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Timing constraint
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## Switches
set_property PACKAGE_PIN V17 [get_ports {run}]
set_property IOSTANDARD LVCMOS33 [get_ports {run}]

set_property PACKAGE_PIN V16 [get_ports {direction}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {state[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {state[0]}]

set_property PACKAGE_PIN E19 [get_ports {state[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {state[1]}]

set_property PACKAGE_PIN U19 [get_ports {state[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {state[2]}]

set_property PACKAGE_PIN V19 [get_ports {state[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {state[3]}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

##Pmod Header JA

##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {Vis_reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {Vis_reset}]

##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {clk_50_Hz}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_50_Hz}]

##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {Vis_run}]
set_property IOSTANDARD LVCMOS33 [get_ports {Vis_run}]

##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {Vis_direction}]
set_property IOSTANDARD LVCMOS33 [get_ports {Vis_direction}]

##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {a}]
set_property IOSTANDARD LVCMOS33 [get_ports {a}]

##Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {b}]
set_property IOSTANDARD LVCMOS33 [get_ports {b}]

##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {c}]
set_property IOSTANDARD LVCMOS33 [get_ports {c}]

##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {d}]
set_property IOSTANDARD LVCMOS33 [get_ports {d}]
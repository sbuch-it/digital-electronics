## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {D[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]

set_property PACKAGE_PIN V16 [get_ports {D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]

set_property PACKAGE_PIN W16 [get_ports {D[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[2]}]

set_property PACKAGE_PIN W17 [get_ports {D[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[3]}]

set_property PACKAGE_PIN U1 [get_ports {S[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

set_property PACKAGE_PIN T1 [get_ports {S[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

set_property PACKAGE_PIN R2 [get_ports {G}]
set_property IOSTANDARD LVCMOS33 [get_ports {G}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {Q}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q}]
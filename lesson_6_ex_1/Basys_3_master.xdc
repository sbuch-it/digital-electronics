## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {D[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]

set_property PACKAGE_PIN V16 [get_ports {D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]

set_property PACKAGE_PIN R2 [get_ports {G}]
set_property IOSTANDARD LVCMOS33 [get_ports {G}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {Q[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q[0]}]

set_property PACKAGE_PIN E19 [get_ports {Q[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q[1]}]

set_property PACKAGE_PIN U19 [get_ports {Q[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q[2]}]

set_property PACKAGE_PIN V19 [get_ports {Q[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q[3]}]
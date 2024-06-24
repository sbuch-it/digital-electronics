## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {K}]
set_property IOSTANDARD LVCMOS33 [get_ports {K}]

set_property PACKAGE_PIN V16 [get_ports {J}]
set_property IOSTANDARD LVCMOS33 [get_ports {J}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {Q}]
set_property IOSTANDARD LVCMOS33 [get_ports {Q}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

set_property PACKAGE_PIN T18 [get_ports ce]
set_property IOSTANDARD LVCMOS33 [get_ports ce]
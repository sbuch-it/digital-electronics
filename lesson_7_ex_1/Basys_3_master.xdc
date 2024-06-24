## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {a}]
set_property IOSTANDARD LVCMOS33 [get_ports {a}]

set_property PACKAGE_PIN V16 [get_ports {b}]
set_property IOSTANDARD LVCMOS33 [get_ports {b}]

set_property PACKAGE_PIN W16 [get_ports {cin}]
set_property IOSTANDARD LVCMOS33 [get_ports {cin}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {sum}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum}]

set_property PACKAGE_PIN E19 [get_ports {cout}]
set_property IOSTANDARD LVCMOS33 [get_ports {cout}]
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {abcd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcd[0]}]

set_property PACKAGE_PIN V16 [get_ports {abcd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcd[1]}]

set_property PACKAGE_PIN W16 [get_ports {abcd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcd[2]}]

set_property PACKAGE_PIN W17 [get_ports {abcd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {abcd[3]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {Y}]
set_property IOSTANDARD LVCMOS33 [get_ports {Y}]
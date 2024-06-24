## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]

set_property PACKAGE_PIN V16 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]

set_property PACKAGE_PIN W16 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]

set_property PACKAGE_PIN W17 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]

set_property PACKAGE_PIN W15 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]

set_property PACKAGE_PIN V15 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]

set_property PACKAGE_PIN W14 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]

set_property PACKAGE_PIN W13 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]

set_property PACKAGE_PIN T1 [get_ports {sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]

set_property PACKAGE_PIN R2 [get_ports {sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {result[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[0]}]

set_property PACKAGE_PIN E19 [get_ports {result[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[1]}]

set_property PACKAGE_PIN U19 [get_ports {result[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[2]}]

set_property PACKAGE_PIN V19 [get_ports {result[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[3]}]

set_property PACKAGE_PIN W18 [get_ports {result[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[4]}]

set_property PACKAGE_PIN U15 [get_ports {result[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[5]}]

set_property PACKAGE_PIN U14 [get_ports {result[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[6]}]

set_property PACKAGE_PIN V14 [get_ports {result[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {result[7]}]
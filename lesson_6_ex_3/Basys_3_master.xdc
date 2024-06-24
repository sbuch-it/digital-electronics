## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Switches
set_property PACKAGE_PIN V17 [get_ports {DIN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN[0]}]

set_property PACKAGE_PIN V16 [get_ports {DIN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN[1]}]

set_property PACKAGE_PIN W16 [get_ports {DIN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN[2]}]

set_property PACKAGE_PIN W17 [get_ports {DIN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN[3]}]

set_property PACKAGE_PIN R2 [get_ports {en}]
set_property IOSTANDARD LVCMOS33 [get_ports {en}]

##7 segment display
set_property PACKAGE_PIN W7 [get_ports {ABCDEFG[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[6]}]

set_property PACKAGE_PIN W6 [get_ports {ABCDEFG[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[5]}]

set_property PACKAGE_PIN U8 [get_ports {ABCDEFG[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[4]}]

set_property PACKAGE_PIN V8 [get_ports {ABCDEFG[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[3]}]

set_property PACKAGE_PIN U5 [get_ports {ABCDEFG[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[2]}]

set_property PACKAGE_PIN V5 [get_ports {ABCDEFG[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[1]}]

set_property PACKAGE_PIN U7 [get_ports {ABCDEFG[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ABCDEFG[0]}]

set_property PACKAGE_PIN V7 [get_ports {DP}]
set_property IOSTANDARD LVCMOS33 [get_ports {DP}]

set_property PACKAGE_PIN U2 [get_ports {an0}]
set_property IOSTANDARD LVCMOS33 [get_ports {an0}]

set_property PACKAGE_PIN U4 [get_ports {an1}]
set_property IOSTANDARD LVCMOS33 [get_ports {an1}]

set_property PACKAGE_PIN V4 [get_ports {an2}]
set_property IOSTANDARD LVCMOS33 [get_ports {an2}]

set_property PACKAGE_PIN W4 [get_ports {an3}]
set_property IOSTANDARD LVCMOS33 [get_ports {an3}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports dp_in]
set_property IOSTANDARD LVCMOS33 [get_ports dp_in]
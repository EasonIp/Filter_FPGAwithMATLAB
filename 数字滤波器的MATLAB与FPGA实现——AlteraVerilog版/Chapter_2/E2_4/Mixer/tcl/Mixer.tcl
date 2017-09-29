#------------------GLOBAL--------------------#
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
set_global_assignment -name ENABLE_INIT_DONE_OUTPUT OFF

#复位引脚
set_location_assignment	PIN_M1	-to rst

#时钟引脚
set_location_assignment	PIN_R9	-to clk

#LED对应的引脚
set_location_assignment	PIN_J1	-to ldoc
set_location_assignment	PIN_J2	-to ldmix


#输入信号对应的引脚
set_location_assignment	PIN_R8	-to din[0]
set_location_assignment	PIN_E1	-to din[1]
set_location_assignment	PIN_T8   -to din[2]
set_location_assignment	PIN_M2	-to din[3]
set_location_assignment	PIN_T9	-to din[4]
set_location_assignment	PIN_A8	-to din[5]
set_location_assignment	PIN_G5	-to din[6]
set_location_assignment	PIN_G11	-to din[7]
set_location_assignment	PIN_C14	-to din[8]
set_location_assignment	PIN_E7	-to din[9]


#SDRAM引脚
set_location_assignment	PIN_A10	-to dout[0]
set_location_assignment	PIN_B10	-to dout[1]
set_location_assignment	PIN_A11 -to dout[2]
set_location_assignment	PIN_B11	-to dout[3]
set_location_assignment	PIN_A12	-to dout[4]
set_location_assignment	PIN_B12	-to dout[5]
set_location_assignment	PIN_A13	-to dout[6]
set_location_assignment	PIN_B13	-to dout[7]
set_location_assignment	PIN_A2	-to dout[8]
set_location_assignment	PIN_B1 	-to dout[9]

set_location_assignment	PIN_F15	-to s_oc[0]
set_location_assignment	PIN_F16	-to s_oc[1]
set_location_assignment	PIN_G15	-to s_oc[2]
set_location_assignment	PIN_G16	-to s_oc[3]
set_location_assignment	PIN_C8	-to s_oc[4]
set_location_assignment	PIN_A7	-to s_oc[5]
set_location_assignment	PIN_B7	-to s_oc[6]
set_location_assignment	PIN_A6	-to s_oc[7]
set_location_assignment	PIN_B6	-to s_oc[8]
set_location_assignment	PIN_A5	-to s_oc[9]


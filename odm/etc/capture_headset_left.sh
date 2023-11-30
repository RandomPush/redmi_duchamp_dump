tinymix 'UL1_CH1 ADDA_UL_CH1' 1
tinymix 'UL1_CH2 ADDA_UL_CH2' 1
tinymix 'MISO0_MUX' 'UL1_CH1'
tinymix 'MISO1_MUX' 'UL1_CH1'
tinymix 'ADC_L_Mux' 'Left Preamplifier'
tinymix 'PGA_L_Mux' 'AIN1'

tinycap /sdcard/loopback_left.wav -D 0 -d 10 -c 1 -r 48000 -b 16 -p 1024 -n 8 -T 2

tinymix 'UL1_CH1 ADDA_UL_CH1' 0
tinymix 'UL1_CH2 ADDA_UL_CH2' 0
tinymix 'ADC_L_Mux' 'Idle'
tinymix 'ADC_R_Mux' 'Idle'
tinymix 'PGA_L_Mux' 'None'
tinymix 'PGA_R_Mux' 'None'
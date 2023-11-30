tinymix 'ADDA_DL_CH1 DL1_CH1' 1
tinymix 'DAC In Mux' 'Normal Path'
tinymix 'HPL Mux' 'Audio Playback'

tinyplay /odm/etc/1khz.wav

tinymix 'ADDA_DL_CH1 DL1_CH1' 0
tinymix 'HPL Mux' 'Open'

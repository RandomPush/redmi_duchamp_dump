tinymix 'ADDA_DL_CH2 DL1_CH2' 1
tinymix 'DAC In Mux' 'Normal Path'
tinymix 'HPR Mux' 'Audio Playback'

tinyplay /odm/etc/1khz.wav

tinymix 'ADDA_DL_CH2 DL1_CH2' 0
tinymix 'HPR Mux' 'Open'

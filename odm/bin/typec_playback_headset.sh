echo "enable headphone playback"
tinymix 'ADDA_DL_CH1 DL2_CH1' 1
tinymix 'ADDA_DL_CH2 DL2_CH2' 1
tinymix 'ADDA_DL_CH3 DL2_CH1' 1
tinymix 'ADDA_DL_CH4 DL2_CH2' 1
tinymix 'DAC In Mux' 'Normal Path'
tinymix 'HPL Mux' 'Audio Playback'
tinymix 'HPR Mux' 'Audio Playback'

tinyplay /odm/etc/RES1K.wav -D 0 -d 2

echo "disable headphone playback"
tinymix 'ADDA_DL_CH1 DL1_CH1' 0
tinymix 'ADDA_DL_CH2 DL1_CH2' 0
tinymix 'ADDA_DL_CH3 DL2_CH1' 0
tinymix 'ADDA_DL_CH4 DL2_CH2' 0
tinymix 'HPL Mux' 'Open'
tinymix 'HPR Mux' 'Open'

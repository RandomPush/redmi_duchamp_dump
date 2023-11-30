# sample usage: just run capture_headsetmic.sh
VOCALTRACT=$1

function enable_headset_mic
{
    echo "enabling headset mic"
    tinymix "adsp_capture_sharemem_scenario" 0
    tinymix 'UL9_CH1 ADDA_UL_CH1' 1
    tinymix 'UL9_CH2 ADDA_UL_CH2' 1
    tinymix 'UL_CM1_CH1 ADDA_UL_CH1' 1
    tinymix 'UL_CM1_CH2 ADDA_UL_CH2' 1
    tinymix 'CM1_UL_MUX' 'CM1_16CH_PATH'
    tinymix 'MISO0_MUX' 'UL1_CH1'
    tinymix 'MISO1_MUX' 'UL1_CH1'
    tinymix 'ADC_L_Mux' 'Left Preamplifier'
    tinymix 'PGA_L_Mux' 'AIN1'
    tinymix 'PGA1 Volume' 4
}

function disable_headset_mic
{
    echo "disabling headset mic"
    tinymix 'UL9_CH1 ADDA_UL_CH1' 0
    tinymix 'UL9_CH2 ADDA_UL_CH2' 0
    tinymix 'UL_CM1_CH1 ADDA_UL_CH1' 0
    tinymix 'UL_CM1_CH2 ADDA_UL_CH2' 0	
    tinymix 'CM1_UL_MUX' 'CM1_2CH_PATH'		
    tinymix 'ADC_L_Mux' 'Idle'
    tinymix 'ADC_R_Mux' 'Idle'
    tinymix 'PGA_L_Mux' 'None'
    tinymix 'PGA_R_Mux' 'None'
    tinymix 'PGA1 Volume' 0
}

# setup

enable_headset_mic

# start recording
tinycap /data/data/test1_${VOCALTRACT}.wav -D 0 -d 13 -c 1 -r 48000 -b 16 -p 1024 -n 8 -T 3

disable_headset_mic

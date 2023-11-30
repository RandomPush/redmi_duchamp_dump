#!/system/bin/sh
# Copyright (c) 2023, The Linux Foundation. All rights reserved.
#

if [ -d /data/vendor/touch ]; then
    dmesg -s 5242880 | grep -iE "mitouch|GTP" > /data/vendor/touch/tp_init_log.txt
    if [ ! -s /data/vendor/touch/tp_init_log.txt ]; then
        echo "File is null."
        echo "dmesg again" > /data/vendor/touch/tp_init_log.txt
        dmesg -s 8388608 | grep -iE "mitouch|GTP" >> /data/vendor/touch/tp_init_log.txt
    fi
    date >> /data/vendor/touch/tp_init_log.txt
    echo "Finished"
else
    echo "Failed"
fi

chmod 0666 /data/vendor/touch/tp_init_log.txt
chown system system /data/vendor/touch/tp_init_log.txt

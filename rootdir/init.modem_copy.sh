#!/system/bin/sh

multisim=`getprop persist.radio.multisim.config`

if [ ! -f /data/modem/modem.mdt ]; then
    case "$multisim" in
        "dsds"|"dsda")
            cp /system/etc/firmware/d5302/mba.* /data/modem/
            cp /system/etc/firmware/d5302/modem.* /data/modem/
            ;;
        *)
            cp /system/etc/firmware/d5303/mba.* /data/modem/
            cp /system/etc/firmware/d5303/modem.* /data/modem/
            ;;
    esac
fi

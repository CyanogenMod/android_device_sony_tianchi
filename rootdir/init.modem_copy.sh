#!/system/bin/sh

multisim=`getprop persist.radio.multisim.config`

if [ ! -f /system/etc/firmware/modem.mdt ]; then
    case "$multisim" in
        "dsds"|"dsda")
            cp /system/etc/firmware/d5322/mba.* /system/etc/firmware/
            cp /system/etc/firmware/d5322/modem.* /system/etc/firmware/
            ;;
        *)
            cp /system/etc/firmware/d5303/mba.* /system/etc/firmware/
            cp /system/etc/firmware/d5303/modem.* /system/etc/firmware/
            ;;
    esac
fi

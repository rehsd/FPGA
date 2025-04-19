RAW_TEMP=$(cat /sys/bus/iio/devices/iio:device0/in_temp0_raw)
TEMP_C=$(echo "scale=4; (($RAW_TEMP / 4096) * 503.975) - 273.15" | bc)
TEMP_F=$(echo "scale=4; ($TEMP_C * 9/5) + 32" | bc)
echo "Internal Zynq-7000 temp >>> RAW:${RAW_TEMP}   C:${TEMP_C}   F:${TEMP_F}"

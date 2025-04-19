set -x
sudo chmod 777 /sys/bus/i2c/drivers/wm8960/*
echo 2-001a | sudo tee /sys/bus/i2c/drivers/wm8960/unbind
echo 2-001a | sudo tee /sys/bus/i2c/drivers/wm8960/bind
set +x

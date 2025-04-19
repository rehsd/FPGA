while true; do
    sysbench --threads=2 cpu run
    sysbench --threads=2 memory run
    ./fps_test_1080.sh
done

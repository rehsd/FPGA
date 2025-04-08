#!/bin/bash

# Function to prompt user for confirmation
confirm() {
    while true; do
        read -p "This will remove all partitions on /dev/sdb and create new ones. Do you wish to proceed? (yes/no): " choice
        case "$choice" in 
            yes|Yes|YES ) break;;
            no|No|NO ) echo "Operation cancelled."; exit 0;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

# Prompt user for confirmation
confirm

# Unmount all partitions on /dev/sdb
sudo umount /dev/sdb*

# Remove all existing partitions
echo -e "o\nw" | sudo fdisk /dev/sdb

# Create a 1GB FAT32 partition
echo -e "n\np\n1\n\n+1G\nt\nb\nw" | sudo fdisk /dev/sdb
sleep 1

# Create a 10GB ext4 partition
echo -e "n\np\n2\n\n+10G\nt\n2\n83\nw" | sudo fdisk /dev/sdb
echo "5"
sleep 1 
echo "4"
sleep 1 
echo "3"
sleep 1 
echo "2"
sleep 1 
echo "1"
sleep 1 


# Create an ext4 partition with the remaining space
echo -e "n\np\n3\n\n\nw" | sudo fdisk /dev/sdb
echo "5"
sleep 1 
echo "4"
sleep 1 
echo "3"
sleep 1 
echo "2"
sleep 1 
echo "1"
sleep 1 

# Format the partitions and add labels
sudo mkfs.vfat -n BOOT /dev/sdb1
sudo mkfs.ext4 -L ROOT /dev/sdb2
sudo mkfs.ext4 -L DATA /dev/sdb3

echo "SD card configuration and labeling complete!"


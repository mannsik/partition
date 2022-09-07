#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "/dev/sdX is needed as parameter"
    exit 1
fi

echo $1

umount $1"1"
umount $1"2"
umount $1"3"
umount $1"4"

echo "
o

n
p
1

+100M
y

n
p
2

+5G
y

n
p
3

+45G
y

n
p


t
1
c

t
2
83

t
3
83

t
4
c

w

" | sudo fdisk $1

sudo mkfs -t vfat $1"1"
sudo mkfs -t ext4 $1"2"
sudo mkfs -t ext4 $1"3"
sudo mkfs -t vfat $1"4"

sudo fatlabel $1"1" BOOT
sudo e2label  $1"2" RootFs
sudo e2label  $1"3" EdgeCare
sudo fatlabel $1"4" EdgeData

sync


# partition
## Info
Script to make four partitions in 64GB SD card.  
Partition will be as below  


| Nu | Format | Size   | Label    |
|----|--------|-------:|:---------|
| 1  | vfat   | 105 MB | BOOT     |
| 2  | ext4   | 5.4GB  | RootFs   |
| 3  | ext4   | 48 GB  | EdgeCare |
| 4  | vfat   | 10 GB  | EdgeData |


## Usage
/dev/sdX should be replaced for your own.


```
$ ./p /dev/sdX
```

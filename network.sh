#! /bin/bash

###################################
# Belajarlah menjadi orang males  #
# karena orang males akan membuat #
# pekerjaan menjadi lebih mudah   #
# bagaimanapun caranya            # 
###################################

##########################################
# Install Intel Wireless on Dracos Linux #
##########################################

clear
lspci | grep Network
echo ""
echo ""
echo "carilah file iwlwifi di https://wireless.wiki.kernel.org/en/users/drivers/iwlwifi#firmware"
echo ""
echo -n -e "masukan url file untuk download : ";tput sgr0
read download
wget $download
ls
echo -n -e "masukan nama file yang tadi di download : ";tput sgr0
read file
tar -zxvf $file
ls
echo -n -e "masukan nama directory : ";tput sgr0
read dir 
cd $dir
ls
echo -n -e "masukan nama file untuk di copy : ";tput sgr0
read wifi 
echo -n -e "masukan /dev/sda dracos kalian (Ex:/dev/sda7) : ";tput sgr0
read sda
echo -n -e "masukan nama file /mnt/ anda(Ex:/mnt/dracos) : ";tput sgr0
read mnt
mount -t ext4 $sda $mnt
cp $wifi $mnt/lib/firmware 
echo "sukses"
exit


![alt text](https://www.android.com/static/2016/img/logo-android-green_1x.png "Android-Text-Logo")

# Android-Experiments
# (Hindering_Forensics) Technical Writeup

# Inventory needed
#### My recommendations are based on the version that I've used to build the experiment.
# ==== ==== ==== ==== ==== ==== ==== ==== ====
[1. Ubuntu Operating System {Recommended Version : 15.10} ](https://www.ubuntu.com/) 
#
[2. OpenSSL for Android {Recommended Version : 1.0.2g} ](https://wiki.openssl.org/index.php/Android)
# 
[3. Android NDK ](http://developer.android.com/ndk/downloads/index.html) 
# 
[4. The Android factory image “hammerhead” for Nexus 5 (GSM/LTE) for MMB29Q](https://dl.google.com/dl/android/aosp/hammerhead-mmb29qfactory-6356d31e.tgz)
# ==== ==== ==== ==== ==== ==== ==== ==== ====

# Here is a high-level view of what you were be doing to achieve this experiment.
# (The image below shows the insides of the boot.img found in your Android Image)
![](Images/Modified-Boot-Image-Diagram.png?raw=true)
# ==== ==== ==== ==== ==== ==== ==== ==== ====
## Let's begin our Journey shall we?

# Part 1- Extracting the boot image from the factory image
![](Images/Journey1.png?raw=true)

#### Once you are done with the Part 1 Journey, here's a simple explanation of what has happened. You have basically unpacked an Android factory image and extracted out the contents in the boot.img file. 
#### You should be able to see this 3 files : bootimg.cfg, zImage and initrd.img. 
#### The bootimg.cfg file contains the bootsize, pagesize, kerneladdr, ramdiskaddr and other information about the boot image, it is used during the packing of boot image as shown as the green section in the image above.
#### The zImage file is a compressed version of the Linux kernel image that is self-extracting as shown in the blue section in the image above.
#### The initrd.img file stands for initial ramdisk which is a scheme for loading a temporary root file system into memory, which may be used as part of the Linux startup process as shown in the red section in the image above.

## Let's continue our Journey 

# Part 2- Creating a kernel for Android 6.0.1 Build: MMQ29Q and set SELINUX to permissive mode
![](Images/Journey2.png?raw=true)

# Part 3- Extracting the Initial RAM File System 
![](Images/Journey3.png?raw=true)

# Part 4- Enabling Encryption and Decryption to take place in the system. ( The reason is because in the event whereby it is possible for a user to grab hold of all your data. The hidden data would be encrypted. ) 
![](Images/Journey4.png?raw=true)

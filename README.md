![alt text](https://www.android.com/static/2016/img/logo-android-green_1x.png "Android-Text-Logo")

# Android-Experiments - (Hindering_Forensics) 

This Android Experiment gives your phone the capability to hide your contacts and call logs by toggling between USB debugging mode. 

# How to use

User must have a Nexus 5 device that can be unlocked.

User must have android sdk tools pre-installed in their system.
Android SDK tools can be downloaded from https://developer.android.com/studio/releases/platform-tools.html

## Step 1: Connect your Nexus 5 to your machine and boot it to the bootloader.
####    Using the command: adb reboot bootloader

## Step 2: Wait for your bootloader screen to appear.
####    Once it does (big Android with START) type: fastboot oem unlock

* A bootloader unlock confirmation page will appear. 
* Tap Volume Up to highlight “Yes,” and Power to select it. 
* Your phone will then be erased and the bootloader will be unlocked.

## Step 3: Go and download the custom-made Android rom zip file from [here](file-directory)
* Unzip the zip file
* Connect your Nexus5 device to your machine
* If you are running on Linux, run the flash-all.sh file  
* If you are running on Windows, run the flash-all.bat file

## Last step: Wait for your phone to boot up and start playing!

# ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ==== ====

Go to [here](https://github.com/negoug/Android-Experiments--Hindering_Forensics-/blob/master/Technical-Writeup.md) for technical writeup on trying this experiment.







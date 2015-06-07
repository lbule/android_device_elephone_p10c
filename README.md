# Build

* Working
  * RIL (First and Second SIM)
  * Wifi
  * Bluetooth
  * Audio
  * Sensors
  * Camera (photo recording)
  * GPS (not completely tested)
  * NFC
  * OTG

* Not Working
  * Dual SIM (Using both sim's at the same time isn't working.)
  * 3G on second SIM
  * Video recording
  * Video en/decoding
  * MTP (ADB is working)

* Compilation

        # repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0
        
        # repo sync
        
        # source build/envsetup.sh
        
        # brunch cm_k1_turbo-eng

# MTK

Few words about mtk related binaries, services and migration peculiarities.

# Limitations

Services requires root:

`system/core/rootdir/init.rd`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')

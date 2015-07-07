# ENGLISH

# GPS lib taken from ALPS KK
#Build LOG:
#
#device/elephone/p10c/gps/gps_mtk.c: In function 'nmea_reader_parse':
#device/elephone/p10c/gps/gps_mtk.c:1122:50: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[0] |= ( 1 << (sate_id-1) );
#                                                  ^
#device/elephone/p10c/gps/gps_mtk.c:1127:47: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[1] |= ( 1 << (sate_id-33) );
#                                               ^
#device/elephone/p10c/gps/gps_mtk.c:1132:35: error: subscripted value is neither array nor pointer nor vector
#      		  r->sv_status.used_in_fix_mask[2] |= ( 1 << (sate_id-65) );
#                                   ^
#device/elephone/p10c/gps/gps_mtk.c:1137:35: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[3] |= ( 1 << (sate_id-97) );
#                                   ^
#device/elephone/p10c/gps/gps_mtk.c:1142:35: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[4] |= ( 1 << (sate_id-129) );
#                                   ^
#device/elephone/p10c/gps/gps_mtk.c:1147:35: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[5] |= ( 1 << (sate_id-161) );
#                                   ^
#device/elephone/p10c/gps/gps_mtk.c:1152:35: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[6] |= ( 1 << (sate_id-193) );
#                                   ^
#device/elephone/p10c/gps/gps_mtk.c:1157:35: error: subscripted value is neither array nor pointer nor vector
#                  r->sv_status.used_in_fix_mask[7] |= ( 1 << (sate_id-225) );
#                                   ^


# Build

* features

  * wifi
  * gsm (call in / call out / hangout)
  * egl
  * sound
  * camera
  * BT
  * sensors

* init

        # repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
        
        # repo sync
        
        # source build/envsetup.sh
        
        # lunch cm_p10c-eng

* recoveries

        # . build/tools/device/makerecoveries.sh cm_p10c-eng
    
        # mka bootimage

* full build

        # brunch cm_p10c-eng

# MTK

Few words about mtk related binaries, services and migration peculiarities.

# Limitations

Services requires root:

`system/core/rootdir/init.rc`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')

  
# Create by
  * chrmhoffmann
  * moonrotation
  * mr-illusionist
  * fire855
  * ariafan
  * anomalchik 
  
  
# RUSSIAN Section

# GPS библиотека взята из ALPS KK
Ошибка в логе сборки (подумаю на ней позже):

device/elephone/p10c/gps/gps_mtk.c: In function 'nmea_reader_parse':
device/elephone/p10c/gps/gps_mtk.c:1122:50: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[0] |= ( 1 << (sate_id-1) );
                                                  ^
device/elephone/p10c/gps/gps_mtk.c:1127:47: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[1] |= ( 1 << (sate_id-33) );
                                               ^
device/elephone/p10c/gps/gps_mtk.c:1132:35: error: subscripted value is neither array nor pointer nor vector
      		  r->sv_status.used_in_fix_mask[2] |= ( 1 << (sate_id-65) );
                                   ^
device/elephone/p10c/gps/gps_mtk.c:1137:35: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[3] |= ( 1 << (sate_id-97) );
                                   ^
device/elephone/p10c/gps/gps_mtk.c:1142:35: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[4] |= ( 1 << (sate_id-129) );
                                   ^
device/elephone/p10c/gps/gps_mtk.c:1147:35: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[5] |= ( 1 << (sate_id-161) );
                                   ^
device/elephone/p10c/gps/gps_mtk.c:1152:35: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[6] |= ( 1 << (sate_id-193) );
                                   ^
device/elephone/p10c/gps/gps_mtk.c:1157:35: error: subscripted value is neither array nor pointer nor vector
                  r->sv_status.used_in_fix_mask[7] |= ( 1 << (sate_id-225) );
                                   ^


# Билд

* рабочее

  * Wi-fi
  * GSM/3G Сеть
  * Mali
  * Звук
  * Камера
  * Bluetooth
  * Датчики
  
* не работает
  * Декодинг/Энкодинг видео. Декодинг только аппаратный
  * Микрофон с кодеком amr
  * GPS  

* скачивание

        # repo init -u git://github.com/CyanogenMod/android.git -b cm-12.1
        
        # repo sync
        
        # source build/envsetup.sh
        
        # lunch cm_p10c-eng

* рекавери

        # . build/tools/device/makerecoveries.sh cm_p10c-eng
    
        # mka bootimage

* полная сборка

        # brunch cm_p10c-eng

  
# Создано благодаря:
  * chrmhoffmann
  * moonrotation
  * mr-illusionist
  * fire855
  * ariafan
  * anomalchik - я тут касаюсь по меньшей мере 
# ايبي السرفر
endpoint_add_tcp "0.0.0.0:30120" <-- البورت:الأيبي
endpoint_add_udp "0.0.0.0:30120" <-- البورت:الأيبي

# ربط السرفر بقاعدة البيانات
set mysql_connection_string "mysql://user:password@host/database?charset=utf8mb4"
set mysql_slow_query_warning 100

# اعدادات الصوت في اللعبة pma-voice (https://github.com/AvarianKnight/pma-voice)
setr voice_useNativeAudio true
setr voice_useSendingRangeOnly true
setr voice_defaultCycle "GRAVE"
setr voice_defaultVolume 0.3
setr voice_enableRadioAnim 1
setr voice_syncData 1

# تشغيل سكريبتات الاساسية في الفيف ام
ensure mapmanager
ensure chat
ensure spawnmanager
ensure sessionmanager
ensure basic-gamemode
ensure hardcap
ensure baseevents

# QBCore تسغيل سكريبتات الـ 
ensure oxmysql
ensure qb-core

# QBCore تشغيل ملفات سكريبتات الـ
# ملاحظة: تشغيل الملف يعني تشغيل كل السكريبتات بداخله
ensure [qb]
ensure [standalone]
ensure [voice]

# scripthook-based يسمح هذا للاعبين باستخدام المكونات الإضافية مثلا مينيو او اي سكريبت مستند لـ 
sv_scriptHookAllowed 0 <-- 0 - يعني غير مفعل ///// 1 - مفعل

# ريكون الحصول على صلاحيات في السرفر و يجب تحديد كلمة سر و تفعيله لتتمكن من استعماله
#rcon_password ""

# تاغات السرفر مثل (https://imgur.com/qm0rmh5)
# يمكن استعمل اكثر من ثاغ باضافة الفاصلة
sets tags "default"


# الدولة و اللغة الخاصة بالسرفر
# مثلا "en-US", "fr-CA", "ar-DZ"
# https://docs.plesk.com/en-US/12.5/localization-guide/appendix-locale-codes.64474
sets locale "root-AQ" 

# صورة تسجيل الدخول و البانار
sets banner_detail "https://i.imgur.com/A5mB3dm.png" <-- مثال (https://imgur.com/NEt76zj)
sets banner_connecting "https://i.imgur.com/fmm3qoe.png" <-- مثال (https://imgur.com/z72fMKS)

# اسم سرفرك في كل الاتصالات بسكريبتات او مواقع
sv_hostname "FXServer, but unconfigured" <-- مثال (https://imgur.com/NEt76zj)

# اسم السرفر 
sets sv_projectName "My FXServer Project" <-- مثال (https://imgur.com/3JnGE32)

# ديسكربشن الخاص بالسرفر
sets sv_projectDesc "Default FXServer requiring configuration" <-- مثال (https://imgur.com/MWv07BM)

# اد بدك تربط سي اف جي ثاني
#exec server_internal.cfg

# (96x96 الحجم) صورة السرفر
#load_server_icon myLogo.png

# كونفرت خاص بالسكريبتات لتجربة
set temp_convar "hey world!"

# قم بإزالة # من السطر أدناه إذا كنت لا تريد أن يتم إدراج خادمك في متصفح الخادم
# يعني لا تظهر في قائمة البحث هده (https://imgur.com/PY6lCQF)
#sv_master1 ""

# صلاحيات السرفر للاشخاص و السكريبتات
add_ace group.admin command allow # allow all commands
add_ace group.admin command.quit deny # but don't allow quit
add_principal identifier.(ستيم/ليسنسز/فايفام/ديسكورد) group.admin # add the admin to the group <-- أونر

# الوان سينغ (https://patreon.com/fivem)
set onesync on

# عدد الاقصى للاعبين في السرفر
sv_maxclients 48

# رمز ستيم (https://steamcommunity.com/dev/apikey)
set steam_webApiKey ""

# رمز الفيف ام (https://keymaster.fivem.net)
sv_licenseKey 

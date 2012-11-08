From 5a412e2897806b363d824f652585e89bf8969edd Mon Sep 17 00:00:00 2001
From: gexudong <gexudong@xiaomi.com>
Date: Mon, 29 Oct 2012 16:15:08 +0800
Subject: [PATCH] changed in Camera stockrom and build.prop

Change-Id: I06d842b2a3127f207bc54ef2475ff133ddaea175
---
 other/build.prop |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

--- a/other/build.prop
+++ b/other/build.prop
@@ -21,8 +21,8 @@
 ro.product.cpu.abi2=armeabi
 ro.product_ship=true
 ro.product.manufacturer=samsung
-ro.product.locale.language=en
-ro.product.locale.region=GB
+ro.product.locale.language=zh
+ro.product.locale.region=CN
 ro.wifi.channels=
 ro.board.platform=exynos4
 # ro.build.product is obsolete; use ro.product.device
@@ -68,10 +68,10 @@
 ro.hdcp2.rx=tz
 ro.secwvk=220
 ro.sec.fle.encryption=true
-ro.config.ringtone=S_Over_the_horizon.ogg
-ro.config.notification_sound=S_Whistle.ogg
-ro.config.alarm_alert=Walk_in_the_forest.ogg
-ro.config.media_sound=Media_preview_Touch_the_light.ogg
+ro.config.ringtone=MI.ogg
+ro.config.notification_sound=FadeIn.ogg
+ro.config.alarm_alert=GoodMorning.ogg
+ro.config.media_sound=FadeIn.ogg
 keyguard.no_require_sim=true
 ro.com.android.dateformat=MM-dd-yyyy
 ro.carrier=unknown
@@ -85,3 +85,4 @@
 net.bt.name=Android
 dalvik.vm.stack-trace-file=/data/anr/traces.txt
 
+ro.telephony.call_ring.multiple=false
-- 
1.7.5.4


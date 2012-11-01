From d50398a2a5e73647327b25ce6a528dd38f0f21d0 Mon Sep 17 00:00:00 2001
From: gexudong <gexudong@xiaomi.com>
Date: Thu, 21 Jun 2012 17:27:36 +0800
Subject: [PATCH] git.appy the patch from i9100 and no manuall merge

Change-Id: I9b440077b55048122d43b11e0c011513d2166ebc
---
 .../smali/android/telephony/PhoneNumberUtils.smali |    6 ++++--
 .../smali/android/telephony/TelephonyManager.smali |    5 ++---
 2 files changed, 6 insertions(+), 5 deletions(-)

--- a/framework.jar.out/smali/android/telephony/PhoneNumberUtils.smali
+++ b/framework.jar.out/smali/android/telephony/PhoneNumberUtils.smali
@@ -4534,6 +4534,10 @@
     .parameter "defaultCountryIso"
 
     .prologue
+    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object p0
+
     invoke-virtual {p0}, Ljava/lang/String;->length()I
 
     move-result v1
--- a/framework.jar.out/smali/android/telephony/TelephonyManager.smali
+++ b/framework.jar.out/smali/android/telephony/TelephonyManager.smali
@@ -5011,9 +5011,9 @@
     .locals 1
 
     .prologue
-    const-string v0, "gsm.sim.operator.numeric"
+    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;
 
-    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
+    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;
 
     move-result-object v0
 
-- 
1.7.5.4


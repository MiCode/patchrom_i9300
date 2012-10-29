From 6306556bf7bc36e90ebbf8c6225fb0164098116c Mon Sep 17 00:00:00 2001
From: wangwenjun <wangwenjun@xiaomi.com>
Date: Wed, 24 Oct 2012 20:20:46 +0800
Subject: [PATCH] add miui hook into telephony

Change-Id: I268c19e419d646e52a1d2007053fcda2579474f9
---
 .../smali/android/telephony/PhoneNumberUtils.smali |   55 +++++++-
 .../smali/android/telephony/TelephonyManager.smali |   27 ++++
 .../com/android/internal/telephony/AdnRecord.smali |   28 ++++-
 .../internal/telephony/AdnRecordCache.smali        |   85 ++++++++++-
 .../android/internal/telephony/CallerInfo.smali    |   47 +++++-
 ...nfoAsyncQuery$CallerInfoAsyncQueryHandler.smali |   11 ++
 .../internal/telephony/CallerInfoAsyncQuery.smali  |   12 ++-
 .../internal/telephony/DataConnectionTracker.smali |   56 +++++++-
 .../telephony/IIccPhoneBook$Stub$Proxy.smali       |  116 +++++++++++++++
 .../internal/telephony/IIccPhoneBook$Stub.smali    |   41 ++++++
 .../android/internal/telephony/IIccPhoneBook.smali |   16 ++
 .../telephony/IccPhoneBookInterfaceManager.smali   |   26 ++++
 .../IccPhoneBookInterfaceManagerProxy.smali        |   26 ++++
 .../android/internal/telephony/IccProvider.smali   |   19 +++
 .../android/internal/telephony/SMSDispatcher.smali |   53 ++++++-
 .../internal/telephony/SmsUsageMonitor.smali       |   16 ++
 .../internal/telephony/TelephonyCapabilities.smali |    5 +-
 .../internal/telephony/WapPushOverSms.smali        |   80 ++++++++++-
 .../internal/telephony/cdma/CDMAPhone.smali        |    8 +
 .../internal/telephony/cdma/CdmaConnection.smali   |   17 ++-
 .../telephony/cdma/CdmaDataConnectionTracker.smali |   53 +++++++
 .../telephony/cdma/CdmaServiceStateTracker.smali   |   49 ++++++-
 .../android/internal/telephony/gsm/GSMPhone.smali  |   22 +++-
 .../telephony/gsm/GsmDataConnectionTracker.smali   |  115 +++++++++++++++-
 .../telephony/gsm/GsmServiceStateTracker.smali     |   23 +++-
 .../internal/telephony/gsm/SIMRecords.smali        |   32 ++++-
 .../internal/telephony/gsm/SmsMessage.smali        |  152 +++++++++++++++++++-
 27 files changed, 1141 insertions(+), 49 deletions(-)

--- a/framework.jar.out/smali/android/telephony/PhoneNumberUtils.smali
+++ b/framework.jar.out/smali/android/telephony/PhoneNumberUtils.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
+        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
+        Landroid/telephony/PhoneNumberUtils$Injector;
     }
 .end annotation
 
@@ -827,6 +828,21 @@
     .end packed-switch
 .end method
 
+.method static callIndexOfLastNetworkChar(Ljava/lang/String;)I
+    .locals 1
+    .parameter "a"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
     .locals 2
     .parameter "bytes"
@@ -1548,6 +1564,9 @@
     .locals 11
     .parameter "a"
     .parameter "b"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x0
@@ -1670,14 +1689,14 @@
 
     if-ge v6, v10, :cond_b
 
-    invoke-virtual {p0}, Ljava/lang/String;->length()I
+    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils$Injector;->getEffectiveLength(Ljava/lang/String;)I
 
     move-result v10
 
     sub-int v2, v10, v7
 
     .local v2, effectiveALen:I
-    invoke-virtual {p1}, Ljava/lang/String;->length()I
+    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils$Injector;->getEffectiveLength(Ljava/lang/String;)I
 
     move-result v10
 
@@ -3103,8 +3122,15 @@
     .parameter "phoneNumber"
     .parameter "phoneNumberE164"
     .parameter "defaultCountryIso"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object p0
+
     invoke-virtual {p0}, Ljava/lang/String;->length()I
 
     move-result v1
@@ -4079,6 +4105,9 @@
     .parameter "number"
     .parameter "defaultCountryIso"
     .parameter "useExactMatch"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x1
@@ -4102,6 +4131,21 @@
 
     move-result-object p0
 
+    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->parseNumber(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object p0
+
+    invoke-static {p0, p2}, Lmiui/telephony/PhoneNumberUtils;->isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
+
+    move-result v8
+
+    if-eqz v8, :cond_ff
+
+    move v6, v7
+
+    goto :goto_0
+
+    :cond_ff
     const-string v8, "ril.ecclist"
 
     invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
@@ -5460,6 +5504,9 @@
 .method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
     .locals 6
     .parameter "phoneNumber"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v4, Ljava/lang/StringBuilder;
@@ -5483,6 +5530,8 @@
     move-result v0
 
     .local v0, c:C
+    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils$Injector;->appendNonSeparator(Ljava/lang/StringBuilder;C)V
+
     const/16 v5, 0xa
 
     invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I
--- a/framework.jar.out/smali/android/telephony/TelephonyManager.smali
+++ b/framework.jar.out/smali/android/telephony/TelephonyManager.smali
@@ -3,6 +3,14 @@
 .source "TelephonyManager.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Landroid/telephony/TelephonyManager$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"
 
@@ -218,6 +226,18 @@
     return-object v0
 .end method
 
+.method static getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
 .method public static getDefault()Landroid/telephony/TelephonyManager;
     .locals 1
 
@@ -1413,6 +1433,9 @@
 
 .method public getSimOperator()Ljava/lang/String;
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const-string v0, "gsm.sim.operator.numeric"
@@ -1421,6 +1444,10 @@
 
     move-result-object v0
 
+    invoke-static {v0}, Landroid/telephony/TelephonyManager$Injector;->getSimOperator(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v0
+
     return-object v0
 .end method
 
--- a/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
@@ -6,6 +6,14 @@
 .implements Landroid/os/Parcelable;
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/internal/telephony/AdnRecord$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field static final ADN_BCD_NUMBER_LENGTH:I = 0x0
 
@@ -42,7 +50,7 @@
 
 .field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa
 
-.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb
+.field static final MAX_NUMBER_SIZE_BYTES:I = 0xff
 
 
 # instance fields
@@ -220,6 +228,9 @@
 .method private parseRecord([B)V
     .locals 6
     .parameter "record"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x0
@@ -247,7 +258,7 @@
     and-int/lit16 v2, v3, 0xff
 
     .local v2, numberLength:I
-    const/16 v3, 0xb
+    const/16 v3, 0xff
 
     if-le v2, v3, :cond_0
 
@@ -299,6 +310,10 @@
 
     const-string v4, "Error parsing AdnRecord"
 
+    invoke-static {p0, v4}, Lcom/android/internal/telephony/AdnRecord$Injector;->adnRecordError(Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v4
+
     invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
 
     const-string v3, ""
@@ -436,6 +451,9 @@
 .method public buildAdnString(I)[B
     .locals 10
     .parameter "recordSize"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x0
@@ -590,7 +608,11 @@
     .local v2, byteTag:[B
     array-length v5, v2
 
-    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
+    invoke-static {v2, v9, v0, v9, v5}, Lcom/android/internal/telephony/AdnRecord$Injector;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
+
+    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;
+
+    invoke-static {v0, v5, v3}, Lcom/android/internal/telephony/MiuiAdnUtils;->encodeAlphaTag([BLjava/lang/String;I)Z
 
     goto :goto_1
 .end method
--- a/framework.jar.out/smali/com/android/internal/telephony/AdnRecordCache.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/AdnRecordCache.smali
@@ -39,6 +39,12 @@
     .end annotation
 .end field
 
+.field private mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mFh:Lcom/android/internal/telephony/IccFileHandler;
 
 .field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
@@ -59,6 +65,9 @@
 .method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
     .locals 2
     .parameter "fh"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Landroid/os/Handler;-><init>()V
@@ -91,6 +100,12 @@
 
     iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
 
+    new-instance v0, Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-direct {v0, p0}, Lcom/android/internal/telephony/AdnCacheManager;-><init>(Lcom/android/internal/telephony/AdnRecordCache;)V
+
+    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
     return-void
 .end method
 
@@ -319,6 +334,38 @@
     .end sparse-switch
 .end method
 
+.method public getAdnCapacity()I
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnCacheManager;->getAdnCapacity()I
+
+    move-result v0
+
+    return v0
+.end method
+
+.method public getFreeAdn()I
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnCacheManager;->getFreeAdn()I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
     .locals 1
     .parameter "efid"
@@ -347,6 +394,9 @@
 .method public handleMessage(Landroid/os/Message;)V
     .locals 8
     .parameter "msg"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget v6, p1, Landroid/os/Message;->what:I
@@ -382,13 +432,9 @@
 
     if-nez v6, :cond_0
 
-    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;
+    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
 
-    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
-
-    check-cast v6, Ljava/util/ArrayList;
-
-    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
+    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/AdnCacheManager;->handleLoadAllAdnLike(ILandroid/os/AsyncResult;)V
 
     :cond_0
     invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
@@ -475,6 +521,9 @@
     .parameter "efid"
     .parameter "extensionEf"
     .parameter "response"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v2, 0x4f30
@@ -493,6 +542,10 @@
 
     if-eqz p3, :cond_0
 
+    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/AdnCacheManager;->handleAllAdnLikeLoaded(ILjava/util/ArrayList;)V
+
     invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
 
     move-result-object v2
@@ -601,6 +654,9 @@
 
 .method public reset()V
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;
@@ -615,6 +671,10 @@
 
     invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V
 
+    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnCacheManager;->reset()V
+
     return-void
 .end method
 
@@ -728,6 +788,9 @@
     .parameter "newAdn"
     .parameter "pin2"
     .parameter "response"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I
@@ -870,6 +933,10 @@
 
     invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
 
+    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/AdnCacheManager;->handleNonExistentAdnRecord(I)V
+
     goto :goto_0
 
     :cond_4
@@ -911,6 +978,12 @@
 
     .end local v9           #foundAdn:Lcom/android/internal/telephony/AdnRecord;
     :cond_6
+    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    move-object/from16 v0, p3
+
+    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/AdnCacheManager;->handleUpdateAdnRecord(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V
+
     iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;
 
     invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
@@ -3,6 +3,14 @@
 .source "CallerInfo.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/internal/telephony/CallerInfo$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"
 
@@ -28,6 +36,12 @@
 
 .field public contactRingtoneUri:Landroid/net/Uri;
 
+.field public extra:Lmiui/telephony/ExtraCallerInfo;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public geoDescription:Ljava/lang/String;
 
 .field public isCachedPhotoCurrent:Z
@@ -80,16 +94,22 @@
 .end method
 
 .method public constructor <init>()V
-    .locals 1
+    .locals 2
 
     .prologue
-    const/4 v0, 0x0
+    const/4 v1, 0x0
 
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 
-    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z
+    new-instance v0, Lmiui/telephony/ExtraCallerInfo;
 
-    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z
+    invoke-direct {v0}, Lmiui/telephony/ExtraCallerInfo;-><init>()V
+
+    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;
+
+    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z
+
+    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z
 
     return-void
 .end method
@@ -216,6 +236,9 @@
     .parameter "context"
     .parameter "contactRef"
     .parameter "cursor"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v4, 0x1
@@ -280,9 +303,11 @@
     iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
 
     :cond_1
+    invoke-static {p1}, Lcom/android/internal/telephony/CallerInfo$Injector;->setContactRef(Landroid/net/Uri;)V
+
     const-string v3, "number"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
 
     move-result v0
 
@@ -297,7 +322,7 @@
     :cond_2
     const-string v3, "normalized_number"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
 
     move-result v0
 
@@ -312,7 +337,7 @@
     :cond_3
     const-string v3, "label"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
 
     move-result v0
 
@@ -320,7 +345,7 @@
 
     const-string v3, "type"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
 
     move-result v2
 
@@ -443,6 +468,12 @@
 
     iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z
 
+    invoke-static {p0, v1, p2}, Lmiui/telephony/ExtraCallerInfo;->getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;
+
+    move-result-object v3
+
+    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;
+
     .end local v0           #columnIndex:I
     :cond_6
     invoke-interface {p2}, Landroid/database/Cursor;->close()V
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler.smali
@@ -112,6 +112,9 @@
     .parameter "token"
     .parameter "cookie"
     .parameter "cursor"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x3
@@ -269,6 +272,14 @@
     iput-object v10, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
 
     :cond_9
+    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
+
+    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;
+
+    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
+
+    invoke-static {v0, v1, v4}, Lmiui/telephony/CallerInfo;->doSpNumberQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
+
     iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
 
     iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
@@ -10,7 +10,8 @@
         Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
         Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;,
         Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;,
-        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
+        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;,
+        Lcom/android/internal/telephony/CallerInfoAsyncQuery$Injector;
     }
 .end annotation
 
@@ -236,6 +237,9 @@
     .parameter "number"
     .parameter "listener"
     .parameter "cookie"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x1
@@ -313,7 +317,11 @@
     :cond_0
     sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;
 
-    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
+    invoke-static {p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$Injector;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v1
+
+    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
 
     move-result-object v1
 
--- a/framework.jar.out/smali/com/android/internal/telephony/DataConnectionTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/DataConnectionTracker.smali
@@ -10,7 +10,8 @@
         Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;,
         Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;,
         Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
-        Lcom/android/internal/telephony/DataConnectionTracker$State;
+        Lcom/android/internal/telephony/DataConnectionTracker$State;,
+        Lcom/android/internal/telephony/DataConnectionTracker$Injector;
     }
 .end annotation
 
@@ -2456,6 +2457,9 @@
 
 .method public getAnyDataEnabled()Z
     .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;
@@ -2483,6 +2487,10 @@
 
     .local v0, result:Z
     :goto_0
+    invoke-static {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker$Injector;->getAnyDataEnabled(Lcom/android/internal/telephony/DataConnectionTracker;Z)Z
+
+    move-result v0
+
     monitor-exit v2
     :try_end_0
     .catchall {:try_start_0 .. :try_end_0} :catchall_0
@@ -3469,6 +3477,52 @@
     throw v1
 .end method
 
+.method protected isMmsDataEnabled()Z
+    .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v0, 0x1
+
+    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;
+
+    const-string v2, "mms"
+
+    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
+
+    move-result v1
+
+    if-eqz v1, :cond_0
+
+    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
+
+    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;
+
+    move-result-object v1
+
+    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
+
+    move-result-object v1
+
+    const-string v2, "always_enable_mms"
+
+    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
+
+    move-result v1
+
+    if-ne v1, v0, :cond_0
+
+    :goto_0
+    return v0
+
+    :cond_0
+    const/4 v0, 0x0
+
+    goto :goto_0
+.end method
+
 .method protected abstract log(Ljava/lang/String;)V
 .end method
 
--- a/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook$Stub$Proxy.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook$Stub$Proxy.smali
@@ -45,6 +45,64 @@
     return-object v0
 .end method
 
+.method public getAdnCapacity()I
+    .locals 6
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
+        }
+    .end annotation
+
+    .prologue
+    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
+
+    move-result-object v0
+
+    .local v0, _data:Landroid/os/Parcel;
+    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
+
+    move-result-object v1
+
+    .local v1, _reply:Landroid/os/Parcel;
+    :try_start_0
+    const-string v3, "com.android.internal.telephony.IIccPhoneBook"
+
+    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
+
+    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;
+
+    const/4 v4, 0x6
+
+    const/4 v5, 0x0
+
+    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
+
+    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
+
+    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
+    :try_end_0
+    .catchall {:try_start_0 .. :try_end_0} :catchall_0
+
+    move-result v2
+
+    .local v2, _result:I
+    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
+
+    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
+
+    return v2
+
+    .end local v2           #_result:I
+    :catchall_0
+    move-exception v3
+
+    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
+
+    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
+
+    throw v3
+.end method
+
 .method public getAdnRecordsInEf(I)Ljava/util/List;
     .locals 6
     .parameter "efid"
@@ -172,6 +230,64 @@
     :catchall_0
     move-exception v3
 
+    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
+
+    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
+
+    throw v3
+.end method
+
+.method public getFreeAdn()I
+    .locals 6
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
+        }
+    .end annotation
+
+    .prologue
+    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
+
+    move-result-object v0
+
+    .local v0, _data:Landroid/os/Parcel;
+    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
+
+    move-result-object v1
+
+    .local v1, _reply:Landroid/os/Parcel;
+    :try_start_0
+    const-string v3, "com.android.internal.telephony.IIccPhoneBook"
+
+    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
+
+    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;
+
+    const/4 v4, 0x5
+
+    const/4 v5, 0x0
+
+    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
+
+    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
+
+    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
+    :try_end_0
+    .catchall {:try_start_0 .. :try_end_0} :catchall_0
+
+    move-result v2
+
+    .local v2, _result:I
+    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
+
+    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
+
+    return v2
+
+    .end local v2           #_result:I
+    :catchall_0
+    move-exception v3
+
     invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
 
     invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
--- a/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook$Stub.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook$Stub.smali
@@ -26,10 +26,14 @@
 # static fields
 .field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"
 
+.field static final TRANSACTION_getAdnCapacity:I = 0x6
+
 .field static final TRANSACTION_getAdnRecordsInEf:I = 0x1
 
 .field static final TRANSACTION_getAdnRecordsSize:I = 0x4
 
+.field static final TRANSACTION_getFreeAdn:I = 0x5
+
 .field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3
 
 .field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2
@@ -293,6 +297,41 @@
 
     goto/16 :goto_0
 
+    .end local v1           #_arg0:I
+    .end local v7           #_result:[I
+    :sswitch_5
+    const-string v0, "com.android.internal.telephony.IIccPhoneBook"
+
+    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
+
+    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getFreeAdn()I
+
+    move-result v7
+
+    .local v7, _result:I
+    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
+
+    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
+
+    goto/16 :goto_0
+
+    .end local v7           #_result:I
+    :sswitch_6
+    const-string v0, "com.android.internal.telephony.IIccPhoneBook"
+
+    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
+
+    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCapacity()I
+
+    move-result v7
+
+    .restart local v7       #_result:I
+    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
+
+    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
+
+    goto/16 :goto_0
+
     nop
 
     :sswitch_data_0
@@ -301,6 +340,8 @@
         0x2 -> :sswitch_2
         0x3 -> :sswitch_3
         0x4 -> :sswitch_4
+        0x5 -> :sswitch_5
+        0x6 -> :sswitch_6
         0x5f4e5446 -> :sswitch_0
     .end sparse-switch
 .end method
--- a/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook.smali
@@ -15,6 +15,14 @@
 
 
 # virtual methods
+.method public abstract getAdnCapacity()I
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
+        }
+    .end annotation
+.end method
+
 .method public abstract getAdnRecordsInEf(I)Ljava/util/List;
     .annotation system Ldalvik/annotation/Signature;
         value = {
@@ -37,6 +45,14 @@
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Landroid/os/RemoteException;
+        }
+    .end annotation
+.end method
+
+.method public abstract getFreeAdn()I
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
         }
     .end annotation
 .end method
--- a/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManager.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManager.smali
@@ -140,6 +140,19 @@
     return-void
 .end method
 
+.method public getAdnCapacity()I
+    .locals 1
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getAdnCapacity()I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public getAdnRecordsInEf(I)Ljava/util/List;
     .locals 5
     .parameter "efid"
@@ -260,6 +273,19 @@
 .method public abstract getAdnRecordsSize(I)[I
 .end method
 
+.method public getFreeAdn()I
+    .locals 1
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeAdn()I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method protected abstract logd(Ljava/lang/String;)V
 .end method
 
--- a/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManagerProxy.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManagerProxy.smali
@@ -35,6 +35,19 @@
 
 
 # virtual methods
+.method public getAdnCapacity()I
+    .locals 1
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnCapacity()I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public getAdnRecordsInEf(I)Ljava/util/List;
     .locals 1
     .parameter "efid"
@@ -83,6 +96,19 @@
     return-object v0
 .end method
 
+.method public getFreeAdn()I
+    .locals 1
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getFreeAdn()I
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
     .locals 0
     .parameter "iccPhoneBookInterfaceManager"
--- a/framework.jar.out/smali/com/android/internal/telephony/IccProvider.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IccProvider.smali
@@ -228,6 +228,18 @@
     goto :goto_0
 .end method
 
+.method static getURL_MATCHER()Landroid/content/UriMatcher;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;
+
+    return-object v0
+.end method
+
 .method private loadFromEf(I)Landroid/database/MatrixCursor;
     .locals 7
     .parameter "efType"
@@ -473,6 +485,13 @@
     move-object v1, p1
 
     .local v1, retVal:Ljava/lang/String;
+	const/4 v2, 0x1
+
+	if-gt v0, v2, :cond_ff
+
+	return-object v1
+
+	:cond_ff
     const/4 v2, 0x0
 
     invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
--- a/framework.jar.out/smali/com/android/internal/telephony/SMSDispatcher.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/SMSDispatcher.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
-        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
+        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
+        Lcom/android/internal/telephony/SMSDispatcher$Injector;
     }
 .end annotation
 
@@ -848,6 +849,9 @@
 .method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
     .locals 14
     .parameter "sms"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v9, 0x0
@@ -897,7 +901,11 @@
 
     move-result-object v1
 
-    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I
+    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;
+
+    move-result-object v2
+
+    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I
 
     move-result v8
 
@@ -963,8 +971,21 @@
 .method protected dispatchPdus([[B)V
     .locals 3
     .parameter "pdus"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z
+
+    move-result v1
+
+    if-eqz v1, :cond_0
+
+    :goto_0
+    return-void
+
+    :cond_0
     new-instance v0, Landroid/content/Intent;
 
     const-string v1, "android.provider.Telephony.SMS_RECEIVED"
@@ -988,15 +1009,28 @@
 
     invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V
 
-    return-void
+    goto :goto_0
 .end method
 
 .method protected dispatchPortAddressedPdus([[BI)V
     .locals 4
     .parameter "pdus"
     .parameter "port"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z
+
+    move-result v2
+
+    if-eqz v2, :cond_0
+
+    :goto_0
+    return-void
+
+    :cond_0
     new-instance v2, Ljava/lang/StringBuilder;
 
     invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
@@ -1043,7 +1077,7 @@
 
     invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V
 
-    return-void
+    goto :goto_0
 .end method
 
 .method public abstract dispose()V
@@ -1651,6 +1685,9 @@
     .parameter "timestamp"
     .parameter "destPort"
     .parameter "isCdmaWapPush"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v20, 0x0
@@ -2165,7 +2202,9 @@
 
     iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;
 
-    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I
+    move-object/from16 v0, p2
+
+    invoke-virtual {v3, v13, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I
 
     move-result v3
 
@@ -2260,7 +2299,9 @@
 
     move-result-object v4
 
-    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I
+    move-object/from16 v0, p2
+
+    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I
 
     move-result v3
 
--- a/framework.jar.out/smali/com/android/internal/telephony/SmsUsageMonitor.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/SmsUsageMonitor.smali
@@ -300,8 +300,24 @@
     .locals 3
     .parameter "appName"
     .parameter "smsWaiting"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    const-string v1, "com.android.mms"
+
+    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
+
+    move-result v1
+
+    if-eqz v1, :cond_ff
+
+    const/4 v1, 0x1
+
+    return v1
+
+    :cond_ff
     iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;
 
     monitor-enter v2
--- a/framework.jar.out/smali/com/android/internal/telephony/TelephonyCapabilities.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/TelephonyCapabilities.smali
@@ -8,8 +8,11 @@
 
 
 # direct methods
-.method private constructor <init>()V
+.method protected constructor <init>()V
     .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
--- a/framework.jar.out/smali/com/android/internal/telephony/WapPushOverSms.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/WapPushOverSms.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
+        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;,
+        Lcom/android/internal/telephony/WapPushOverSms$Injector;
     }
 .end annotation
 
@@ -20,6 +21,12 @@
 
 .field private final WAKE_LOCK_TIMEOUT:I
 
+.field mAddress:Ljava/lang/String;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private final mContext:Landroid/content/Context;
 
 .field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
@@ -78,6 +85,9 @@
 .method public dispatchWapPdu([B)I
     .locals 24
     .parameter "pdu"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v10, 0x0
@@ -425,7 +435,17 @@
 
     invoke-static {v0, v6, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
 
-    goto :goto_1
+    move-object/from16 v0, p0
+
+    invoke-static {v0, v13}, Lcom/android/internal/telephony/WapPushOverSms$Injector;->checkFirewallForWapPush(Lcom/android/internal/telephony/WapPushOverSms;[B)Z
+
+    move-result v22
+
+    if-eqz v22, :goto_1
+
+    const/16 v22, -0x1
+
+    goto/16 :goto_0
 
     .end local v6           #dataIndex:I
     .restart local v20       #wapAppId:Ljava/lang/String;
@@ -599,6 +619,20 @@
 
     invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
 
+    const-string v22, "address"
+
+    move-object/from16 v0, p0
+
+    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;
+
+    move-object/from16 v23, v0
+
+    move-object/from16 v0, v22
+
+    move-object/from16 v1, v23
+
+    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
+
     move-object/from16 v0, p0
 
     iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
@@ -623,3 +657,45 @@
     .restart local v16       #permission:Ljava/lang/String;
     goto :goto_4
 .end method
+
+.method public dispatchWapPdu([BLjava/lang/String;)I
+    .locals 1
+    .parameter "pdu"
+    .parameter "address"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;
+
+    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I
+
+    move-result v0
+
+    return v0
+.end method
+
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
+.method getSmsDispatcher()Lcom/android/internal/telephony/SMSDispatcher;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
+
+    return-object v0
+.end method
--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CDMAPhone.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CDMAPhone.smali
@@ -1103,6 +1103,10 @@
 # virtual methods
 .method public acceptCall()V
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Lcom/android/internal/telephony/CallStateException;
@@ -1110,6 +1114,10 @@
     .end annotation
 
     .prologue
+    const/16 v0, 0xf
+
+    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeMessages(I)V
+
     iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V
--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaConnection.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaConnection.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
-        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
+        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;,
+        Lcom/android/internal/telephony/cdma/CdmaConnection$Injector;
     }
 .end annotation
 
@@ -952,6 +953,9 @@
 .method private processPostDialChar(C)Z
     .locals 5
     .parameter "c"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x1
@@ -984,7 +988,7 @@
 
     sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;
 
-    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
+    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$Injector;->setPostDialState(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/Connection$PostDialState;)V
 
     iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;
 
@@ -1665,6 +1669,9 @@
 
 .method public getRemainingPostDialString()Ljava/lang/String;
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x0
@@ -1712,7 +1719,11 @@
     move-result-object v1
 
     .local v1, subStr:Ljava/lang/String;
-    if-eqz v1, :cond_1
+    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$Injector;->nullifyString(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v3
+
+    if-eqz v3, :cond_1
 
     const/16 v3, 0x3b
 
--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaDataConnectionTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaDataConnectionTracker.smali
@@ -3,6 +3,14 @@
 .source "CdmaDataConnectionTracker.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1
 
@@ -2243,6 +2251,41 @@
     return-object v0
 .end method
 
+.method getActiveApn()Lcom/android/internal/telephony/ApnSetting;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;
+
+    return-object v0
+.end method
+
+.method getDataConnectionAsyncChannels()Ljava/util/HashMap;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .annotation system Ldalvik/annotation/Signature;
+        value = {
+            "()",
+            "Ljava/util/HashMap",
+            "<",
+            "Ljava/lang/Integer;",
+            "Lcom/android/internal/telephony/DataConnectionAc;",
+            ">;"
+        }
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;
+
+    return-object v0
+.end method
+
 .method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
     .locals 1
     .parameter "apnType"
@@ -3103,6 +3146,9 @@
 .method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
     .locals 5
     .parameter "ar"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x0
@@ -3127,6 +3173,8 @@
 
     if-eqz v3, :cond_1
 
+    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$Injector;->onDataSetupComplete(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
+
     invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V
 
     :goto_0
@@ -3393,6 +3441,9 @@
     .locals 4
     .parameter "connId"
     .parameter "ar"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v2, Ljava/lang/StringBuilder;
@@ -3435,6 +3486,8 @@
 
     invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
 
+    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$Injector;->onDisconnectDone(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
+
     iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z
 
     if-eqz v2, :cond_1
--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaServiceStateTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaServiceStateTracker.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
+        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;,
+        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;
     }
 .end annotation
 
@@ -60,6 +61,12 @@
 
 .field protected mHomeSystemId:[I
 
+.field mIntentReceiver:Landroid/content/BroadcastReceiver;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mIsInPrl:Z
 
 .field protected mIsMinInfoReady:Z
@@ -109,6 +116,9 @@
 .method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
     .locals 8
     .parameter "phone"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x1
@@ -119,6 +129,12 @@
 
     invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V
 
+    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;
+
+    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$LocaleChangedIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
+
+    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;
+
     iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I
 
     const-string v2, "ro.nitz_update_spacing"
@@ -373,6 +389,8 @@
 
     iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z
 
+    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->monitorLocaleChange()V
+
     return-void
 
     .end local v0           #airplaneMode:I
@@ -6372,6 +6390,35 @@
 
     return-void
 .end method
+
+.method monitorLocaleChange()V
+    .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    new-instance v0, Landroid/content/IntentFilter;
+
+    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
+
+    .local v0, filter:Landroid/content/IntentFilter;
+    const-string v1, "android.intent.action.LOCALE_CHANGED"
+
+    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
+
+    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
+
+    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;
+
+    move-result-object v1
+
+    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;
+
+    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
+
+    return-void
+.end method
 
 .method protected onSignalStrengthResult(Landroid/os/AsyncResult;)V
     .locals 13
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/GSMPhone.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/GSMPhone.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/telephony/gsm/GSMPhone$2;,
-        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
+        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;,
+        Lcom/android/internal/telephony/gsm/GSMPhone$Injector;
     }
 .end annotation
 
@@ -1359,6 +1360,10 @@
 # virtual methods
 .method public acceptCall()V
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Lcom/android/internal/telephony/CallStateException;
@@ -1366,6 +1371,10 @@
     .end annotation
 
     .prologue
+    const/16 v0, 0xf
+
+    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeMessages(I)V
+
     iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
@@ -2229,10 +2238,21 @@
 
 .method public getDeviceId()Ljava/lang/String;
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;
 
+    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->checkEmptyImei(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v0
+
+    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;
+
+    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;
+
     return-object v0
 .end method
 
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker.smali
@@ -8,7 +8,8 @@
     value = {
         Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;,
         Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;,
-        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;
+        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;,
+        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;
     }
 .end annotation
 
@@ -3233,6 +3234,18 @@
     goto :goto_0
 .end method
 
+.method static getPolicyDataEnabled()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sPolicyDataEnabled:Z
+
+    return v0
+.end method
+
 .method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
     .locals 12
 
@@ -3409,6 +3422,9 @@
 .method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
     .locals 1
     .parameter "apnContext"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z
@@ -3417,7 +3433,7 @@
 
     if-eqz v0, :cond_0
 
-    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z
+    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;->isDataAllowed(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/ApnContext;)Z
 
     move-result v0
 
@@ -6563,6 +6579,49 @@
 
 
 # virtual methods
+.method callApnIdToType(I)Ljava/lang/String;
+    .locals 1
+    .parameter "apnId"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
+.method callIsDataAllowed()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z
+
+    move-result v0
+
+    return v0
+.end method
+
+.method callIsMmsDataEnabled()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isMmsDataEnabled()Z
+
+    move-result v0
+
+    return v0
+.end method
+
 .method protected cleanUpAllConnections(ZLjava/lang/String;)V
     .locals 4
     .parameter "tearDown"
@@ -7512,6 +7571,9 @@
 
 .method public getAnyDataEnabled()Z
     .locals 5
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v2, 0x0
@@ -7521,6 +7583,12 @@
     monitor-enter v3
 
     :try_start_0
+    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isMmsDataEnabled()Z
+
+    move-result v4
+
+    if-nez v4, :cond_1
+
     iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z
 
     if-eqz v4, :cond_0
@@ -7648,6 +7716,18 @@
     goto :goto_0
 .end method
 
+.method getInternalDataEnabled()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z
+
+    return v0
+.end method
+
 .method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
     .locals 4
     .parameter "apnType"
@@ -7970,6 +8050,18 @@
     goto :goto_0
 .end method
 
+.method getUserDataEnabled()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z
+
+    return v0
+.end method
+
 .method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
     .locals 2
     .parameter "reason"
@@ -9768,6 +9860,9 @@
 .method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
     .locals 16
     .parameter "ar"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;
@@ -9968,6 +10063,8 @@
     .end local v10           #proxy:Landroid/net/ProxyProperties;
     :cond_4
     :goto_3
+    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;->onDataSetupComplete(Lcom/android/internal/telephony/ApnContext;)V
+
     invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;
 
     move-result-object v12
@@ -10449,6 +10546,9 @@
     .locals 5
     .parameter "connId"
     .parameter "ar"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v4, 0x0
@@ -10492,6 +10592,8 @@
 
     invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
 
+    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;->onDisconnectDone(Lcom/android/internal/telephony/ApnContext;)V
+
     iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;
@@ -10581,10 +10683,19 @@
     .locals 4
     .parameter "apnId"
     .parameter "enabled"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x1
 
+    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;->getApnType(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;II)Ljava/lang/String;
+
+    move-result-object v2
+
+    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;
+
     iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
 
     invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmServiceStateTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmServiceStateTracker.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;
+        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;,
+        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;
     }
 .end annotation
 
@@ -1623,6 +1624,9 @@
 
 .method private pollStateDone()V
     .locals 38
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v34, Ljava/lang/StringBuilder;
@@ -2549,7 +2553,11 @@
 
     invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
 
-    if-nez v24, :cond_18
+    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
+
+    move-result v34
+
+    if-eqz v34, :cond_18
 
     const-string v34, "operatorNumeric is null"
 
@@ -7973,6 +7981,9 @@
 
 .method protected updateSpnDisplay()V
     .locals 12
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v11, 0x2
@@ -8002,6 +8013,10 @@
 
     invoke-virtual {v8}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;
 
+    move-result-object v8
+
+    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;->getSpn(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
+
     move-result-object v5
 
     .local v5, spn:Ljava/lang/String;
@@ -8009,6 +8024,10 @@
 
     invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;
 
+    move-result-object v8
+
+    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$Injector;->getPlmn(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
+
     move-result-object v1
 
     .local v1, plmn:Ljava/lang/String;
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/SIMRecords.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/SIMRecords.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/telephony/gsm/SIMRecords$1;,
-        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
+        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;,
+        Lcom/android/internal/telephony/gsm/SIMRecords$Injector;
     }
 .end annotation
 
@@ -892,6 +893,9 @@
     .parameter "card"
     .parameter "c"
     .parameter "ci"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x0
@@ -932,9 +936,9 @@
 
     iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;
 
-    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;
+    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;
 
-    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V
+    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;-><init>()V
 
     iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;
 
@@ -1855,6 +1859,9 @@
 .method private isOnMatchingPlmn(Ljava/lang/String;)Z
     .locals 5
     .parameter "plmn"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x1
@@ -1872,7 +1879,7 @@
 
     move-result-object v4
 
-    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
+    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/gsm/SIMRecords$Injector;->isMatchingOperator(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;Ljava/lang/String;)Z
 
     move-result v4
 
@@ -2064,6 +2071,9 @@
 .method private setSpnFromConfig(Ljava/lang/String;)V
     .locals 1
     .parameter "carrier"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;
@@ -2082,6 +2092,8 @@
 
     iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;
 
+    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$Injector;->updateSpnDisplayCondition(Lcom/android/internal/telephony/gsm/SIMRecords;)V
+
     :cond_0
     return-void
 .end method
@@ -2664,6 +2676,18 @@
     goto :goto_0
 .end method
 
+.method getSpn()Ljava/lang/String;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;
+
+    return-object v0
+.end method
+
 .method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
     .locals 1
 
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/SmsMessage.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/SmsMessage.smali
@@ -1163,6 +1163,9 @@
 .method private parsePdu([B)V
     .locals 4
     .parameter "pdu"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B
@@ -1196,7 +1199,6 @@
 
     packed-switch v2, :pswitch_data_0
 
-    :pswitch_0
     new-instance v2, Ljava/lang/RuntimeException;
 
     const-string v3, "Unsupported message type"
@@ -1205,12 +1207,17 @@
 
     throw v2
 
-    :pswitch_1
+    :pswitch_0
     invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
 
     :goto_0
     return-void
 
+    :pswitch_1
+    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
+
+    goto :goto_0
+
     :pswitch_2
     invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
 
@@ -1218,10 +1225,10 @@
 
     :pswitch_data_0
     .packed-switch 0x0
-        :pswitch_1
         :pswitch_0
-        :pswitch_2
         :pswitch_1
+        :pswitch_2
+        :pswitch_0
     .end packed-switch
 .end method
 
@@ -1439,6 +1446,111 @@
     goto :goto_2
 .end method
 
+.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
+    .locals 6
+    .parameter "p"
+    .parameter "firstByte"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v2, 0x1
+
+    const/4 v3, 0x0
+
+    and-int/lit16 v1, p2, 0x80
+
+    const/16 v4, 0x80
+
+    if-ne v1, v4, :cond_1
+
+    move v1, v2
+
+    :goto_0
+    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z
+
+    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I
+
+    move-result v1
+
+    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I
+
+    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    move-result-object v1
+
+    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    if-eqz v1, :cond_0
+
+    const-string v1, "GSM"
+
+    new-instance v4, Ljava/lang/StringBuilder;
+
+    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
+
+    const-string v5, "SMS recipient address: "
+
+    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
+
+    move-result-object v4
+
+    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;
+
+    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
+
+    move-result-object v4
+
+    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
+
+    move-result-object v4
+
+    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
+
+    :cond_0
+    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I
+
+    move-result v1
+
+    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I
+
+    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I
+
+    move-result v1
+
+    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I
+
+    and-int/lit8 v1, p2, 0x40
+
+    const/16 v4, 0x40
+
+    if-ne v1, v4, :cond_2
+
+    move v0, v2
+
+    .local v0, hasUserDataHeader:Z
+    :goto_1
+    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
+
+    return-void
+
+    .end local v0           #hasUserDataHeader:Z
+    :cond_1
+    move v1, v3
+
+    goto :goto_0
+
+    :cond_2
+    move v0, v3
+
+    goto :goto_1
+.end method
+
 .method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
     .locals 11
     .parameter "p"
@@ -2010,6 +2122,38 @@
     return v0
 .end method
 
+.method public getRecipientAddress()Ljava/lang/String;
+    .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    if-eqz v0, :cond_0
+
+    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;
+
+    move-result-object v0
+
+    :goto_0
+    return-object v0
+
+    :cond_0
+    const-string v0, "GSM"
+
+    const-string v1, "SMS recipient address is null"
+
+    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
+
+    const/4 v0, 0x0
+
+    goto :goto_0
+.end method
+
 .method public getStatus()I
     .locals 1
 
-- 
1.7.5.4


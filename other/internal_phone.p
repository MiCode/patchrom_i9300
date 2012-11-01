From d50398a2a5e73647327b25ce6a528dd38f0f21d0 Mon Sep 17 00:00:00 2001
From: gexudong <gexudong@xiaomi.com>
Date: Thu, 21 Jun 2012 17:27:36 +0800
Subject: [PATCH 1/8] git.appy the patch from i9100 and no manuall merge

Change-Id: I9b440077b55048122d43b11e0c011513d2166ebc
---
 .../com/android/internal/telephony/AdnRecord.smali |   10 +---
 .../internal/telephony/AdnRecordCache.smali        |   72 ++++++++++++++------
 .../android/internal/telephony/CallerInfo.smali    |   54 ++++++---------
 .../internal/telephony/CallerInfoAsyncQuery.smali  |   26 +++++++
 .../android/internal/telephony/IIccPhoneBook.smali |   16 +++++
 .../telephony/IccPhoneBookInterfaceManager.smali   |   26 +++++++
 .../IccPhoneBookInterfaceManagerProxy.smali        |   26 +++++++
 .../android/internal/telephony/SMSDispatcher.smali |   58 ++++++++++++++--
 .../telephony/gsm/GsmDataConnectionTracker.smali   |   27 ++++++-
 9 files changed, 240 insertions(+), 75 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
@@ -785,14 +785,7 @@
     :cond_8
     iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;
 
-    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
-
-    move-result-object v2
-
-    .local v2, byteTag:[B
-    array-length v6, v2
-
-    invoke-static {v2, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
+    invoke-static {v0, v6, v4}, Lcom/android/internal/telephony/MiuiAdnUtils;->encodeAlphaTag([BLjava/lang/String;I)Z
 
     .end local v1           #bcdNumber:[B
     .end local v2           #byteTag:[B
--- a/framework.jar.out/smali/com/android/internal/telephony/AdnRecordCache.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/AdnRecordCache.smali
@@ -49,6 +49,8 @@
     .end annotation
 .end field
 
+.field private mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
 .field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
 
 .field phone:Lcom/android/internal/telephony/PhoneBase;
@@ -99,6 +101,12 @@
 
     iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
 
+    new-instance v0, Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-direct {v0, p0}, Lcom/android/internal/telephony/AdnCacheManager;-><init>(Lcom/android/internal/telephony/AdnRecordCache;)V
+
+    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
     return-void
 .end method
 
@@ -382,6 +390,38 @@
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
@@ -1317,6 +1357,10 @@
 
     if-eqz p3, :cond_0
 
+    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/AdnCacheManager;->handleAllAdnLikeLoaded(ILjava/util/ArrayList;)V
+
     invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
 
     move-result-object v2
@@ -1582,6 +1626,10 @@
 
     invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V
 
+    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnCacheManager;->reset()V
+
     return-void
 .end method
 
@@ -1750,6 +1798,10 @@
 
     invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
 
+    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnCacheManager:Lcom/android/internal/telephony/AdnCacheManager;
+
+    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/AdnCacheManager;->handleNonExistentAdnRecord(I)V
+
     goto :goto_0
 
     :cond_2
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
@@ -113,6 +113,12 @@
 
     iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z
 
+    new-instance v0, Lmiui/telephony/ExtraCallerInfo;
+
+    invoke-direct {v0}, Lmiui/telephony/ExtraCallerInfo;-><init>()V
+
+    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;
+
     return-void
 .end method
 
@@ -304,7 +310,7 @@
     :cond_1
     const-string v3, "number"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p1, v3, p2}, Lmiui/telephony/CallerInfo;->getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
 
     move-result v0
 
@@ -319,7 +325,7 @@
     :cond_2
     const-string v3, "normalized_number"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p1, v3, p2}, Lmiui/telephony/CallerInfo;->getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
 
     move-result v0
 
@@ -334,7 +340,7 @@
     :cond_3
     const-string v3, "label"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p1, v3, p2}, Lmiui/telephony/CallerInfo;->getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
 
     move-result v0
 
@@ -342,7 +348,7 @@
 
     const-string v3, "type"
 
-    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
+    invoke-static {p1, v3, p2}, Lmiui/telephony/CallerInfo;->getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
 
     move-result v2
 
@@ -465,6 +471,12 @@
 
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
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
@@ -98,6 +98,32 @@
     return-void
 .end method
 
+.method private static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
+    .locals 2
+    .parameter "number"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
+
+    move-result-object v0
+
+    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
+    if-eqz v0, :cond_0
+
+    const/4 v1, 0x1
+
+    invoke-virtual {v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNumberWithoutPrefix(Z)Ljava/lang/String;
+
+    move-result-object p0
+
+    .end local p0
+    :cond_0
+    return-object p0
+.end method
+
 .method private release()V
     .locals 2
 
--- a/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IIccPhoneBook.smali
@@ -114,3 +114,19 @@
         }
     .end annotation
 .end method
+
+.method public abstract getFreeAdn()I
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
+        }
+    .end annotation
+.end method
+
+.method public abstract getAdnCapacity()I
+    .annotation system Ldalvik/annotation/Throws;
+        value = {
+            Landroid/os/RemoteException;
+        }
+    .end annotation
+.end method
--- a/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManager.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManager.smali
@@ -1267,3 +1267,29 @@
     :cond_0
     return-void
 .end method
+
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
--- a/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManagerProxy.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/IccPhoneBookInterfaceManagerProxy.smali
@@ -293,3 +293,29 @@
 
     return v0
 .end method
+
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
--- a/framework.jar.out/smali/com/android/internal/telephony/SMSDispatcher.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/SMSDispatcher.smali
@@ -3091,10 +3091,33 @@
 .end method
 
 .method protected dispatchPdus([[B)V
-    .locals 3
+    .locals 4
     .parameter "pdus"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
+
+    invoke-static {v1, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z
+
+    move-result v1
+
+    if-eqz v1, :cond_0
+
+    const/4 v1, 0x1
+
+    const/4 v2, -0x1
+
+    const/4 v3, 0x0
+
+    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
+
+    :goto_0
+    return-void
+
+    :cond_0
     new-instance v0, Landroid/content/Intent;
 
     const-string v1, "android.provider.Telephony.SMS_RECEIVED"
@@ -3150,11 +3173,34 @@
 .end method
 
 .method protected dispatchPortAddressedPdus([[BI)V
-    .locals 4
+    .locals 5
     .parameter "pdus"
     .parameter "port"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
+
+    invoke-static {v2, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z
+
+    move-result v2
+
+    if-eqz v2, :cond_0
+
+    const/4 v2, 0x1
+
+    const/4 v3, -0x1
+
+    const/4 v4, 0x0
+
+    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
+
+    :goto_0
+    return-void
+
+    :cond_0
     new-instance v2, Ljava/lang/StringBuilder;
 
     invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker.smali
@@ -11553,6 +11553,29 @@
 
     invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
 
+    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;
+
+    move-result-object v1
+
+    if-eqz v1, :cond_a
+
+    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;
+
+    move-result-object v1
+
+    const/4 v2, 0x0
+
+    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;
+
+    move-result-object v3
+
+    invoke-static {v3}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;
+
+    move-result-object v3
+
+    invoke-virtual {v1, v2, v3}, Lmiui/net/FirewallManager;->onDataDisconnected(ILjava/lang/String;)V
+
+    :cond_a
     iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;
-- 
1.7.5.4


From c66ed50838f33d5ac9c16ebf638e34c0112156cd Mon Sep 17 00:00:00 2001
From: gexudong <gexudong@xiaomi.com>
Date: Mon, 25 Jun 2012 21:16:21 +0800
Subject: [PATCH 2/8] manually merge part, AppErrorDialog is from 9100

Change-Id: Ic68732f9049ade5bee9f2686032a00b50b191280
---
 .../android/internal/telephony/CallerInfo.smali    |    2 ++
 .../internal/telephony/CallerInfoAsyncQuery.smali  |    6 +++++-
 2 files changed, 7 insertions(+), 1 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfo.smali
@@ -28,6 +28,8 @@
 
 .field public contactRingtoneUri:Landroid/net/Uri;
 
+.field public extra:Lmiui/telephony/ExtraCallerInfo;
+
 .field public geoDescription:Ljava/lang/String;
 
 .field public isBirthday:Z
--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
@@ -438,7 +438,11 @@
     :cond_1
     sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;
 
-    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
+    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v1
+
+    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
 
     move-result-object v2
 
-- 
1.7.5.4


From 77423660c4c9a4ff0ee468f81c4065453b70e04d Mon Sep 17 00:00:00 2001
From: gexudong <gexudong@xiaomi.com>
Date: Wed, 27 Jun 2012 20:10:12 +0800
Subject: [PATCH 3/8] fix error and adjust the left phone apps

Change-Id: I5d6aa66279cdbbb5e233f495cc0fd79f638dbdca
---
 .../internal/telephony/CallerInfoAsyncQuery.smali  |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/CallerInfoAsyncQuery.smali
@@ -436,7 +436,6 @@
     .end local v7           #selectionArgs:[Ljava/lang/String;
     .end local v9           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
     :cond_1
-    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;
 
     invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
 
@@ -446,6 +445,8 @@
 
     move-result-object v2
 
+    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;
+
     invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
 
     move-result-object v4
-- 
1.7.5.4


From 9d9a2f614f5a53dfa4dadf8466ccb582b93c71ed Mon Sep 17 00:00:00 2001
From: yumingyang <yumingyang@xiaomi.com>
Date: Mon, 27 Aug 2012 11:46:03 +0800
Subject: [PATCH 4/8] Change I94805c30: Fixes bug that highlight of extension
 number is incorrect for CDMA

Change-Id: I15a1a4c1ffc987a9603ac6f23451f5d6f608dd44
---
 .../internal/telephony/cdma/CdmaConnection.smali   |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaConnection.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaConnection.smali
@@ -1003,10 +1003,6 @@
 
     if-ne p1, v2, :cond_2
 
-    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;
-
-    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
-
     iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;
 
     iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;
@@ -1755,6 +1751,8 @@
     move-result-object v1
 
     .local v1, subStr:Ljava/lang/String;
+    goto :goto_0
+
     if-eqz v1, :cond_1
 
     const/16 v3, 0x3b
-- 
1.7.5.4


From f1514c33cd4a0653797c6d361ae7b99a10b816b8 Mon Sep 17 00:00:00 2001
From: yumingyang <yumingyang@xiaomi.com>
Date: Mon, 27 Aug 2012 12:13:43 +0800
Subject: [PATCH 5/8] Change I7d9d811d: Fixes bug that contacts read error
 from some SIM cards

Change-Id: I69e574ea05b83c40770f29adab18b1a5d494a6da
---
 .../com/android/internal/telephony/AdnRecord.smali |    7 ++-----
 1 files changed, 2 insertions(+), 5 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/AdnRecord.smali
@@ -398,6 +398,8 @@
     and-int/lit16 v2, v3, 0xff
 
     .local v2, numberLength:I
+    goto :cond_0
+
     const/16 v3, 0xb
 
     if-le v2, v3, :cond_0
-- 
1.7.5.4


From 306439b4b93f1b3d708143fd0286b8bf9ce8381b Mon Sep 17 00:00:00 2001
From: yumingyang <yumingyang@xiaomi.com>
Date: Tue, 18 Sep 2012 16:57:01 +0800
Subject: [PATCH 6/8] Change I39339c0e: Try to avoid keeping ringing after
 answer a call

Change-Id: If9f294ab98d930a5c8e674533c582de28862dfc6
---
 .../internal/telephony/cdma/CDMAPhone.smali        |    6 ++++--
 .../android/internal/telephony/gsm/GSMPhone.smali  |    6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CDMAPhone.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CDMAPhone.smali
@@ -1068,6 +1068,10 @@
     .end annotation
 
     .prologue
+    const/16 v0, 0xf
+
+    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeMessages(I)V
+
     iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V
--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/GSMPhone.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/GSMPhone.smali
@@ -1839,6 +1839,10 @@
     .end annotation
 
     .prologue
+    const/16 v0, 0xf
+
+    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeMessages(I)V
+
     iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;
 
     invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
-- 
1.7.5.4


From dd7774ad1ad9c21e74eb8105e311e440d25a1ecd Mon Sep 17 00:00:00 2001
From: yumingyang <yumingyang@xiaomi.com>
Date: Tue, 18 Sep 2012 19:56:38 +0800
Subject: [PATCH 7/8] Change I43a90d89: support read MO sms on sim card

Change-Id: I656aefb63364d78a19bcfe8c618e80c1dc7b86dd
---
 .../internal/telephony/gsm/SmsMessage.smali        |   32 ++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/gsm/SmsMessage.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/gsm/SmsMessage.smali
@@ -5733,3 +5733,35 @@
 
     goto :goto_0
 .end method
+
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
-- 
1.7.5.4


From dc934be9e5c1271a433bfe596f2e931dab900383 Mon Sep 17 00:00:00 2001
From: yumingyang <yumingyang@xiaomi.com>
Date: Fri, 19 Oct 2012 14:21:02 +0800
Subject: [PATCH 8/8] Change I835bb7b0: Fixes phone FC when data is
 disconnected immediately after it was connected

Change-Id: I9f1168ffcea83db1147c0c8253a1d7cbbaa7d245
---
 .../telephony/cdma/CdmaDataConnectionTracker.smali |   83 +++++++++++++++++++-
 1 files changed, 82 insertions(+), 1 deletions(-)

--- a/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaDataConnectionTracker.smali
+++ b/framework.jar.out/smali/com/android/internal/telephony/cdma/CdmaDataConnectionTracker.smali
@@ -3034,6 +3034,8 @@
 
     if-eqz v3, :cond_1
 
+    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyFirewallDataSetupComplete()V
+
     invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V
 
     :goto_0
@@ -3985,3 +3987,83 @@
 
     return-void
 .end method
+
+.method private notifyFirewallDataSetupComplete()V
+    .locals 8
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v1, 0x0
+
+    .local v1, current:Lcom/android/internal/telephony/DataConnectionAc;
+    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;
+
+    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
+    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;
+
+    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;
+
+    move-result-object v4
+
+    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
+
+    move-result-object v3
+
+    .local v3, i$:Ljava/util/Iterator;
+    :cond_0
+    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
+
+    move-result v4
+
+    if-eqz v4, :cond_1
+
+    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
+
+    move-result-object v2
+
+    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;
+
+    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
+    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;
+
+    move-result-object v4
+
+    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z
+
+    move-result v4
+
+    if-eqz v4, :cond_0
+
+    move-object v1, v2
+
+    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
+    :cond_1
+    if-eqz v1, :cond_2
+
+    if-eqz v0, :cond_2
+
+    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;
+
+    move-result-object v4
+
+    const/4 v5, 0x0
+
+    invoke-static {v0}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;
+
+    move-result-object v6
+
+    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;
+
+    move-result-object v7
+
+    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
+
+    move-result-object v7
+
+    invoke-virtual {v4, v5, v6, v7}, Lmiui/net/FirewallManager;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V
+
+    :cond_2
+    return-void
+.end method
\ No newline at end of file
-- 
1.7.5.4


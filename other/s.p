From fea9812970aa15c990fffd8cff333f9f38deca03 Mon Sep 17 00:00:00 2001
From: wangwenjun <wangwenjun@xiaomi.com>
Date: Tue, 23 Oct 2012 19:53:43 +0800
Subject: [PATCH] add miui hook into services

Change-Id: I904976522dc2d7f7832cf8b82627d5eab384898b
---
 .../com/android/server/AppWidgetService$2.smali    |   14 +++
 .../com/android/server/AppWidgetService.smali      |    8 +-
 .../com/android/server/AppWidgetServiceImpl.smali  |   67 +++++++++++-
 .../com/android/server/BackupManagerService.smali  |   29 ++++-
 .../com/android/server/ConnectivityService.smali   |   17 +++-
 .../com/android/server/LightsService$Light.smali   |   37 +++++--
 .../smali/com/android/server/LightsService.smali   |   16 +++
 .../server/NotificationManagerService.smali        |   50 ++++++++-
 .../com/android/server/PowerManagerService.smali   |  120 +++++++++++++++++---
 .../smali/com/android/server/ServerThread.smali    |    7 +-
 .../com/android/server/UiModeManagerService.smali  |   28 +++++-
 .../server/am/ActivityManagerService$2.smali       |   12 ++
 .../android/server/am/ActivityManagerService.smali |   58 +++++++++-
 .../com/android/server/am/ActivityStack.smali      |   13 ++
 .../com/android/server/am/AppErrorDialog$1.smali   |    7 +
 .../com/android/server/am/AppErrorDialog.smali     |   86 ++++++++++++++
 .../server/am/AppNotRespondingDialog$1.smali       |   20 ++++
 .../com/android/server/am/BaseErrorDialog.smali    |    5 +-
 .../server/location/GpsLocationProvider.smali      |   32 +++++-
 .../server/net/NetworkPolicyManagerService.smali   |   75 ++++++++++---
 .../com/android/server/pm/GrantedPermissions.smali |    5 +-
 .../pm/PackageManagerService$PackageHandler.smali  |    7 +-
 .../android/server/pm/PackageManagerService.smali  |   74 +++++++++++-
 .../pm/ShutdownThread$CloseDialogReceiver.smali    |    5 +
 .../com/android/server/pm/ShutdownThread.smali     |   88 ++++++++++++++-
 25 files changed, 812 insertions(+), 68 deletions(-)

--- a/services.jar.out/smali/com/android/server/AppWidgetService$2.smali
+++ b/services.jar.out/smali/com/android/server/AppWidgetService$2.smali
@@ -37,6 +37,9 @@
     .locals 4
     .parameter "context"
     .parameter "intent"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
@@ -44,6 +47,17 @@
     move-result-object v0
 
     .local v0, action:Ljava/lang/String;
+    iget-object v3, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;
+
+    invoke-static {v3, v0}, Lcom/android/server/AppWidgetService$Injector;->handleAction(Lcom/android/server/AppWidgetService;Ljava/lang/String;)Z
+
+    move-result v3
+
+    if-eqz v3, :cond_3
+
+    return-void
+
+    :cond_3
     const-string v3, "android.intent.action.BOOT_COMPLETED"
 
     invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
--- a/services.jar.out/smali/com/android/server/AppWidgetService.smali
+++ b/services.jar.out/smali/com/android/server/AppWidgetService.smali
@@ -9,7 +9,8 @@
         Lcom/android/server/AppWidgetService$ServiceConnectionProxy;,
         Lcom/android/server/AppWidgetService$AppWidgetId;,
         Lcom/android/server/AppWidgetService$Host;,
-        Lcom/android/server/AppWidgetService$Provider;
+        Lcom/android/server/AppWidgetService$Provider;,
+        Lcom/android/server/AppWidgetService$Injector;
     }
 .end annotation
 
@@ -720,6 +721,9 @@
 .method public systemReady(Z)V
     .locals 8
     .parameter "safeMode"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x0
@@ -738,6 +742,8 @@
 
     invoke-virtual {v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V
 
+    invoke-static {p0}, Lcom/android/server/AppWidgetService$Injector;->receiveRestoreFinish(Lcom/android/server/AppWidgetService;)V
+
     iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;
 
     iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
--- a/services.jar.out/smali/com/android/server/AppWidgetServiceImpl.smali
+++ b/services.jar.out/smali/com/android/server/AppWidgetServiceImpl.smali
@@ -9,7 +9,8 @@
         Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;,
         Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;,
         Lcom/android/server/AppWidgetServiceImpl$Host;,
-        Lcom/android/server/AppWidgetServiceImpl$Provider;
+        Lcom/android/server/AppWidgetServiceImpl$Provider;,
+        Lcom/android/server/AppWidgetServiceImpl$Injector;
     }
 .end annotation
 
@@ -4550,6 +4551,9 @@
 .method readStateFromFileLocked(Ljava/io/FileInputStream;)V
     .locals 26
     .parameter "stream"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v20, 0x0
@@ -5242,6 +5246,20 @@
 
     move-object/from16 v0, p0
 
+    move/from16 v1, v23
+
+    invoke-static {v0, v1}, Lcom/android/server/AppWidgetServiceImpl$Injector;->isDuplicateWidgetId(Lcom/android/server/AppWidgetServiceImpl;I)Z
+
+    move-result v23
+
+    if-nez v23, :cond_3
+
+    iget v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I
+
+    move/from16 v23, v0
+
+    move-object/from16 v0, p0
+
     iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I
 
     move/from16 v24, v0
@@ -5665,6 +5683,53 @@
 
     throw v0
 .end method
+
+.method reload()V
+    .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;
+
+    monitor-enter v1
+
+    :try_start_0
+    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;
+
+    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
+
+    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;
+
+    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
+
+    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;
+
+    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
+
+    const/4 v0, 0x0
+
+    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z
+
+    monitor-exit v1
+    :try_end_0
+    .catchall {:try_start_0 .. :try_end_0} :catchall_0
+
+    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V
+
+    return-void
+
+    :catchall_0
+    move-exception v0
+
+    :try_start_1
+    monitor-exit v1
+    :try_end_1
+    .catchall {:try_start_1 .. :try_end_1} :catchall_0
+
+    throw v0
+.end method
 
 .method removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V
     .locals 5
--- a/services.jar.out/smali/com/android/server/BackupManagerService.smali
+++ b/services.jar.out/smali/com/android/server/BackupManagerService.smali
@@ -31,7 +31,8 @@
         Lcom/android/server/BackupManagerService$RestoreParams;,
         Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
         Lcom/android/server/BackupManagerService$ProvisionedObserver;,
-        Lcom/android/server/BackupManagerService$BackupRequest;
+        Lcom/android/server/BackupManagerService$BackupRequest;,
+        Lcom/android/server/BackupManagerService$Injector;
     }
 .end annotation
 
@@ -7233,6 +7234,9 @@
     .parameter "doAllApps"
     .parameter "includeSystem"
     .parameter "pkgList"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
@@ -7430,7 +7434,7 @@
 
     const-string v2, "fullback"
 
-    invoke-virtual {p0, v11, v2}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
+    invoke-static {p0, v11, v2}, Lcom/android/server/BackupManagerService$Injector;->startConfirmationUi(Lcom/android/server/BackupManagerService;ILjava/lang/String;)Z
 
     move-result v2
 
@@ -7510,7 +7514,7 @@
 
     invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V
 
-    invoke-virtual {p0, v11, v1}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
+    invoke-static {p0, v11, v1}, Lcom/android/server/BackupManagerService$Injector;->startConfirmationTimeout(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$FullParams;)V
 
     const-string v2, "BackupManagerService"
 
@@ -7564,6 +7568,9 @@
 .method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
     .locals 9
     .parameter "fd"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v5, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
@@ -7669,7 +7676,7 @@
 
     const-string v5, "fullrest"
 
-    invoke-virtual {p0, v4, v5}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
+    invoke-static {p0, v4, v5}, Lcom/android/server/BackupManagerService$Injector;->startConfirmationUi(Lcom/android/server/BackupManagerService;ILjava/lang/String;)Z
 
     move-result v5
 
@@ -7749,7 +7756,7 @@
 
     invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V
 
-    invoke-virtual {p0, v4, v3}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
+    invoke-static {p0, v4, v3}, Lcom/android/server/BackupManagerService$Injector;->startConfirmationTimeout(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$FullParams;)V
 
     const-string v5, "BackupManagerService"
 
@@ -8035,6 +8042,18 @@
     throw v2
 .end method
 
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
 .method public getCurrentTransport()Ljava/lang/String;
     .locals 3
 
--- a/services.jar.out/smali/com/android/server/ConnectivityService.smali
+++ b/services.jar.out/smali/com/android/server/ConnectivityService.smali
@@ -10,7 +10,8 @@
         Lcom/android/server/ConnectivityService$SettingsObserver;,
         Lcom/android/server/ConnectivityService$MyHandler;,
         Lcom/android/server/ConnectivityService$FeatureUser;,
-        Lcom/android/server/ConnectivityService$RadioAttributes;
+        Lcom/android/server/ConnectivityService$RadioAttributes;,
+        Lcom/android/server/ConnectivityService$Injector;
     }
 .end annotation
 
@@ -201,6 +202,9 @@
     .parameter "netd"
     .parameter "statsService"
     .parameter "policyManager"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V
@@ -343,6 +347,8 @@
 
     invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
 
+    invoke-static/range {p1 .. p1}, Lcom/miui/server/FirewallService;->setupService(Landroid/content/Context;)V
+
     new-instance v13, Landroid/os/HandlerThread;
 
     const-string v2, "ConnectivityServiceThread"
@@ -6865,6 +6871,8 @@
     move-result v8
 
     .local v8, usedNetworkType:I
+    invoke-static {p1, v8}, Lcom/android/server/ConnectivityService$Injector;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;I)V
+
     iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
 
     aget-object v6, v10, v8
@@ -10270,6 +10278,9 @@
     .parameter "networkType"
     .parameter "feature"
     .parameter "binder"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const-wide/16 v14, 0x0
@@ -10823,9 +10834,11 @@
     :try_end_7
     .catchall {:try_start_7 .. :try_end_7} :catchall_2
 
+    :try_start_8
+    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService$Injector;->startUsingNetworkFeature(I)V
+
     if-ltz v13, :cond_c
 
-    :try_start_8
     move-object/from16 v0, p0
 
     iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
--- a/services.jar.out/smali/com/android/server/LightsService$Light.smali
+++ b/services.jar.out/smali/com/android/server/LightsService$Light.smali
@@ -1,15 +1,19 @@
-.class public final Lcom/android/server/LightsService$Light;
+.class public Lcom/android/server/LightsService$Light;
 .super Ljava/lang/Object;
 .source "LightsService.java"
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Lcom/android/server/LightsService;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x11
+    accessFlags = 0x1
     name = "Light"
 .end annotation
 
@@ -46,6 +50,21 @@
     return-void
 .end method
 
+.method constructor <init>(Lcom/android/server/LightsService;II)V
+    .locals 0
+    .parameter
+    .parameter "id"
+    .parameter "unused"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V
+
+    return-void
+.end method
+
 .method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
     .locals 0
     .parameter "x0"
@@ -68,7 +87,7 @@
     return-void
 .end method
 
-.method private setLightLocked(IIIII)V
+.method setLightLocked(IIIII)V
     .locals 7
     .parameter "color"
     .parameter "mode"
@@ -147,7 +166,7 @@
 
     move-object v0, p0
 
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     monitor-exit p0
 
@@ -207,7 +226,7 @@
 
     move v3, p2
 
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;
 
@@ -294,7 +313,7 @@
     move v5, p2
 
     :try_start_0
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     monitor-exit p0
 
@@ -330,7 +349,7 @@
     move v1, p1
 
     :try_start_0
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     monitor-exit p0
 
@@ -369,7 +388,7 @@
     move v4, p4
 
     :try_start_0
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     monitor-exit p0
 
@@ -404,7 +423,7 @@
     move-object v0, p0
 
     :try_start_0
-    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
+    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
 
     monitor-exit p0
 
--- a/services.jar.out/smali/com/android/server/LightsService.smali
+++ b/services.jar.out/smali/com/android/server/LightsService.smali
@@ -207,3 +207,19 @@
 
     return-object v0
 .end method
+
+.method setLight(ILcom/android/server/LightsService$Light;)V
+    .locals 1
+    .parameter "id"
+    .parameter "light"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
+
+    aput-object p2, v0, p1
+
+    return-void
+.end method
--- a/services.jar.out/smali/com/android/server/NotificationManagerService.smali
+++ b/services.jar.out/smali/com/android/server/NotificationManagerService.smali
@@ -9,7 +9,8 @@
         Lcom/android/server/NotificationManagerService$WorkerHandler;,
         Lcom/android/server/NotificationManagerService$SettingsObserver;,
         Lcom/android/server/NotificationManagerService$ToastRecord;,
-        Lcom/android/server/NotificationManagerService$NotificationRecord;
+        Lcom/android/server/NotificationManagerService$NotificationRecord;,
+        Lcom/android/server/NotificationManagerService$Injector;
     }
 .end annotation
 
@@ -1911,6 +1912,9 @@
 
 .method private updateLightsLocked()V
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
@@ -1999,6 +2003,26 @@
 
     iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
 
+    invoke-static {p0}, Lcom/android/server/NotificationManagerService$Injector;->updateNotificationLight(Lcom/android/server/NotificationManagerService;)V
+
+    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
+
+    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;
+
+    iget v0, v4, Landroid/app/Notification;->ledARGB:I
+
+    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
+
+    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;
+
+    iget v2, v4, Landroid/app/Notification;->ledOnMS:I
+
+    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
+
+    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;
+
+    iget v1, v4, Landroid/app/Notification;->ledOffMS:I
+
     :cond_4
     iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
 
@@ -4687,6 +4711,30 @@
     .catchall {:try_start_6 .. :try_end_6} :catchall_0
 .end method
 
+.method getDefaultNotificationColor()I
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
+
+    return v0
+.end method
+
+.method getLedNotification()Lcom/android/server/NotificationManagerService$NotificationRecord;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
+
+    return-object v0
+.end method
+
 .method public setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
     .locals 5
     .parameter "pkg"
--- a/services.jar.out/smali/com/android/server/PowerManagerService.smali
+++ b/services.jar.out/smali/com/android/server/PowerManagerService.smali
@@ -19,7 +19,8 @@
         Lcom/android/server/PowerManagerService$DockReceiver;,
         Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
         Lcom/android/server/PowerManagerService$BatteryReceiver;,
-        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
+        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;,
+        Lcom/android/server/PowerManagerService$Injector;
     }
 .end annotation
 
@@ -37,7 +38,11 @@
 
 .field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x78
 
-.field static final AUTODIMNESS_ANIM_STEPS:I = 0x147ae1
+.field static final AUTODIMNESS_ANIM_STEPS:I = 0x78
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
 
 .field private static final BATTERY_LOW_BIT:I = 0x10
 
@@ -1926,6 +1931,9 @@
 
 .method private enableProximityLockLocked()V
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
@@ -1957,7 +1965,7 @@
     invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
 
     .end local v0           #identity:J
-    :cond_0
+    :goto_0
     return-void
 
     .restart local v0       #identity:J
@@ -1967,6 +1975,14 @@
     invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
 
     throw v2
+
+    .end local v0           #identity:J
+    :cond_0
+    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
+
+    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
+
+    goto :goto_0
 .end method
 
 .method private forceReenableScreen()V
@@ -2813,7 +2829,7 @@
     throw v4
 
     :cond_7
-    const v3, 0x147ae1
+    const/16 v3, 0x78
 
     .restart local v3       #steps:I
     goto :goto_3
@@ -3448,6 +3464,9 @@
     .parameter "newState"
     .parameter "noChangeLights"
     .parameter "reason"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
@@ -3470,8 +3489,6 @@
 
     if-eqz v9, :cond_1
 
-    and-int/lit8 p1, p1, -0x4
-
     :cond_1
     invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z
 
@@ -4126,6 +4143,9 @@
 .method private setScreenStateLocked(Z)I
     .locals 4
     .parameter "on"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x0
@@ -4151,7 +4171,7 @@
 
     const/4 v2, 0x2
 
-    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V
+    invoke-static {p0, v1, v3, v2, v3}, Lcom/android/server/PowerManagerService$Injector;->animateTo(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;III)V
 
     :cond_1
     invoke-static {p1}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I
@@ -5163,6 +5183,9 @@
     .parameter "eventType"
     .parameter "force"
     .parameter "ignoreIfScreenOff"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I
@@ -5235,10 +5258,6 @@
 
     if-nez v1, :cond_4
 
-    const/4 v1, 0x0
-
-    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
-
     :cond_4
     iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J
 
@@ -5255,7 +5274,7 @@
 
     if-eqz v1, :cond_6
 
-    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
+    sget-boolean v1, Lcom/android/server/PowerManagerService$Injector;->FALSE:Z
 
     if-eqz v1, :cond_7
 
@@ -5492,6 +5511,9 @@
     .parameter "pid"
     .parameter "tag"
     .parameter "ws"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     if-eqz p6, :cond_0
@@ -5798,10 +5820,6 @@
 
     if-nez v2, :cond_e
 
-    const/4 v2, 0x0
-
-    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
-
     .end local v11           #oldWakeLockState:I
     :cond_e
     :goto_6
@@ -5864,6 +5882,8 @@
 
     goto/16 :goto_3
 
+    nop
+
     :sswitch_data_0
     .sparse-switch
         0x1 -> :sswitch_1
@@ -5927,6 +5947,20 @@
     throw v0
 .end method
 
+.method callGoToSleepLocked(JI)V
+    .locals 0
+    .parameter "time"
+    .parameter "reason"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V
+
+    return-void
+.end method
+
 .method public clearUserActivityTimeout(JJ)V
     .locals 9
     .parameter "now"
@@ -7896,6 +7930,42 @@
     return-object v0
 .end method
 
+.method getPowerState()I
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I
+
+    return v0
+.end method
+
+.method getProximitySensorActive()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
+
+    return v0
+.end method
+
+.method getScreenBrightnessHandler()Landroid/os/Handler;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
+
+    return-object v0
+.end method
+
 .method getStayOnConditionsLocked()I
     .locals 2
 
@@ -8854,6 +8924,9 @@
 .method public preventScreenOn(Z)V
     .locals 6
     .parameter "prevent"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
@@ -8909,6 +8982,8 @@
 
     invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
 
+    invoke-static {p0}, Lcom/android/server/PowerManagerService$Injector;->sleepIfProximitySensorActive(Lcom/android/server/PowerManagerService;)V
+
     iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z
 
     if-nez v1, :cond_1
@@ -9818,6 +9893,19 @@
     throw v0
 .end method
 
+.method setProxIgnoredBecauseScreenTurnedOff(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z
+
+    return-void
+.end method
+
 .method public setScreenBrightnessOverride(I)V
     .locals 3
     .parameter "brightness"
--- a/services.jar.out/smali/com/android/server/ServerThread.smali
+++ b/services.jar.out/smali/com/android/server/ServerThread.smali
@@ -113,6 +113,9 @@
 
 .method public run()V
     .locals 120
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v3, 0xbc2
@@ -536,11 +539,11 @@
 
     invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
 
-    new-instance v75, Lcom/android/server/LightsService;
+    new-instance v75, Lcom/android/server/MiuiLightsService;
 
     move-object/from16 v0, v75
 
-    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
+    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
     :try_end_6
     .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
 
--- a/services.jar.out/smali/com/android/server/UiModeManagerService.smali
+++ b/services.jar.out/smali/com/android/server/UiModeManagerService.smali
@@ -3,6 +3,14 @@
 .source "UiModeManagerService.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/server/UiModeManagerService$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"
 
@@ -80,6 +88,12 @@
 
 .field private mNightMode:I
 
+.field mNormalType:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mNotificationManager:Landroid/app/NotificationManager;
 
 .field private final mResultReceiver:Landroid/content/BroadcastReceiver;
@@ -118,6 +132,9 @@
 .method public constructor <init>(Landroid/content/Context;)V
     .locals 8
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x1
@@ -126,6 +143,8 @@
 
     invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V
 
+    iput v3, p0, Lcom/android/server/UiModeManagerService;->mNormalType:I
+
     new-instance v2, Ljava/lang/Object;
 
     invoke-direct {v2}, Ljava/lang/Object;-><init>()V
@@ -285,6 +304,10 @@
 
     invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
 
+    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;
+
+    invoke-static {p0, v2}, Lcom/android/server/UiModeManagerService$Injector;->registerUIModeScaleChangedOjbserver(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
+
     const-string v2, "power"
 
     invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
@@ -1218,6 +1241,9 @@
 .method final updateConfigurationLocked(Z)V
     .locals 4
     .parameter "sendIt"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z
@@ -1291,7 +1317,7 @@
 
     .end local v1           #uiMode:I
     :cond_2
-    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I
+    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNormalType:I
 
     goto :goto_0
 
--- a/services.jar.out/smali/com/android/server/am/ActivityManagerService$2.smali
+++ b/services.jar.out/smali/com/android/server/am/ActivityManagerService$2.smali
@@ -164,6 +164,18 @@
 
     if-nez v3, :cond_2
 
+    move-object/from16 v0, p0
+
+    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;
+
+    move-object/from16 v0, v22
+
+    invoke-static {v3, v0}, Lcom/android/server/am/ActivityManagerService$Injector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z
+
+    move-result v3
+
+    if-nez v3, :goto_1
+
     new-instance v21, Lcom/android/server/am/AppErrorDialog;
 
     move-object/from16 v0, p0
--- a/services.jar.out/smali/com/android/server/am/ActivityManagerService.smali
+++ b/services.jar.out/smali/com/android/server/am/ActivityManagerService.smali
@@ -26,7 +26,8 @@
         Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;,
         Lcom/android/server/am/ActivityManagerService$Identity;,
         Lcom/android/server/am/ActivityManagerService$ForegroundToken;,
-        Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
+        Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;,
+        Lcom/android/server/am/ActivityManagerService$Injector;
     }
 .end annotation
 
@@ -905,6 +906,9 @@
 
 .method private constructor <init>()V
     .locals 10
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x5
@@ -1347,6 +1351,8 @@
     .local v1, systemDir:Ljava/io/File;
     invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
 
+    invoke-static {v1, v0}, Lmiui/os/Environment;->init(Ljava/io/File;Ljava/io/File;)V
+
     new-instance v2, Lcom/android/server/am/BatteryStatsService;
 
     new-instance v3, Ljava/io/File;
@@ -5840,6 +5846,18 @@
     move-result-object v8
 
     .restart local v8       #queue:Lcom/android/server/am/BroadcastQueue;
+    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;
+
+    move-result-object v3
+
+    invoke-virtual/range {v44 .. v44}, Landroid/content/Intent;->getAction()Ljava/lang/String;
+
+    move-result-object v5
+
+    move-object/from16 v0, v24
+
+    invoke-static {v0, v3, v5}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
+
     new-instance v7, Lcom/android/server/am/BroadcastRecord;
 
     const/16 v31, 0x0
@@ -10344,6 +10362,9 @@
     .locals 24
     .parameter "r"
     .parameter "crashInfo"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
@@ -10747,6 +10768,12 @@
 
     invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 
+    const-string v3, "crash"
+
+    move-object/from16 v0, p2
+
+    invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
+
     iput-object v12, v15, Landroid/os/Message;->obj:Ljava/lang/Object;
 
     move-object/from16 v0, p0
@@ -19942,6 +19969,9 @@
 .method public static final main(I)Landroid/content/Context;
     .locals 7
     .parameter "factoryTest"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x1
@@ -20001,7 +20031,7 @@
     move-result-object v1
 
     .local v1, context:Landroid/content/Context;
-    const v4, 0x103006b
+    const v4, 0x103006e
 
     invoke-virtual {v1, v4}, Landroid/content/Context;->setTheme(I)V
 
@@ -44845,6 +44875,9 @@
 .method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
     .locals 2
     .parameter "token"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     monitor-enter p0
@@ -44871,7 +44904,9 @@
     return-object v1
 
     :cond_0
-    const/4 v1, 0x0
+    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
+
+    move-result-object v1
 
     goto :goto_0
 
@@ -64302,6 +64337,9 @@
     .parameter "starting"
     .parameter "persistent"
     .parameter "initLocale"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object/from16 v0, p0
@@ -64635,6 +64673,20 @@
 
     invoke-direct/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I
 
+    move-object/from16 v0, p0
+
+    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;
+
+    move-object/from16 v0, p0
+
+    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;
+
+    move/from16 v0, v23
+
+    move-object/from16 v1, v28
+
+    invoke-static {v0, v1, v2, v3}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
+
     and-int/lit8 v2, v23, 0x4
 
     if-eqz v2, :cond_9
--- a/services.jar.out/smali/com/android/server/am/ActivityStack.smali
+++ b/services.jar.out/smali/com/android/server/am/ActivityStack.smali
@@ -6226,6 +6226,9 @@
     .locals 7
     .parameter "r"
     .parameter "globalChanges"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x1
@@ -6316,6 +6319,16 @@
     if-eqz v5, :cond_c
 
     :cond_7
+    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;
+
+    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
+
+    invoke-static {v5, v0, v1}, Landroid/app/MiuiThemeHelper;->needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
+
+    move-result v5
+
+    if-nez v5, :cond_0
+
     iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I
 
     or-int/2addr v5, v0
--- a/services.jar.out/smali/com/android/server/am/AppErrorDialog$1.smali
+++ b/services.jar.out/smali/com/android/server/am/AppErrorDialog$1.smali
@@ -36,10 +36,17 @@
 .method public handleMessage(Landroid/os/Message;)V
     .locals 3
     .parameter "msg"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;
 
+    invoke-static {v0, p1}, Lcom/android/server/am/AppErrorDialog$Injector;->sendFcReport(Lcom/android/server/am/AppErrorDialog;Landroid/os/Message;)V
+
+    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;
+
     #getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
     invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
 
--- a/services.jar.out/smali/com/android/server/am/AppErrorDialog.smali
+++ b/services.jar.out/smali/com/android/server/am/AppErrorDialog.smali
@@ -3,6 +3,14 @@
 .source "AppErrorDialog.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/server/am/AppErrorDialog$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field static final DISMISS_TIMEOUT:J = 0x493e0L
 
@@ -14,6 +22,12 @@
 
 
 # instance fields
+.field mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private final mHandler:Landroid/os/Handler;
 
 .field private final mProc:Lcom/android/server/am/ProcessRecord;
@@ -230,6 +244,64 @@
     goto/16 :goto_0
 .end method
 
+.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
+    .locals 4
+    .parameter "context"
+    .parameter "result"
+    .parameter "app"
+    .parameter "crashInfo"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
+
+    iput-object p4, p0, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
+
+    const/4 v0, -0x2
+
+    new-instance v1, Ljava/lang/StringBuilder;
+
+    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
+
+    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
+
+    move-result-object v2
+
+    const v3, 0x10403d8
+
+    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
+
+    move-result-object v2
+
+    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
+
+    move-result-object v1
+
+    const-string v2, " MIUI"
+
+    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
+
+    move-result-object v1
+
+    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
+
+    move-result-object v1
+
+    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;
+
+    const/4 v3, 0x1
+
+    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
+
+    move-result-object v2
+
+    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
+
+    return-void
+.end method
+
 .method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
     .locals 1
     .parameter "x0"
@@ -249,3 +321,17 @@
 
     return-object v0
 .end method
+
+
+# virtual methods
+.method getProc()Lcom/android/server/am/ProcessRecord;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
+
+    return-object v0
+.end method
--- a/services.jar.out/smali/com/android/server/am/AppNotRespondingDialog$1.smali
+++ b/services.jar.out/smali/com/android/server/am/AppNotRespondingDialog$1.smali
@@ -36,8 +36,28 @@
 .method public handleMessage(Landroid/os/Message;)V
     .locals 8
     .parameter "msg"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    const/4 v5, 0x0
+
+    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;
+
+    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;
+
+    move-result-object v3
+
+    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;
+
+    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
+    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
+
+    move-result-object v4
+
+    invoke-static {v3, v4, v5}, Lcom/android/server/am/MiuiErrorReport;->sendAnrErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Z)V
+
     const/4 v1, 0x0
 
     .local v1, appErrorIntent:Landroid/content/Intent;
--- a/services.jar.out/smali/com/android/server/am/BaseErrorDialog.smali
+++ b/services.jar.out/smali/com/android/server/am/BaseErrorDialog.smali
@@ -13,11 +13,14 @@
 .method public constructor <init>(Landroid/content/Context;)V
     .locals 3
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/high16 v2, 0x2
 
-    const v0, 0x10302f2
+    const v0, 0x60d0020
 
     invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V
 
--- a/services.jar.out/smali/com/android/server/location/GpsLocationProvider.smali
+++ b/services.jar.out/smali/com/android/server/location/GpsLocationProvider.smali
@@ -11,7 +11,8 @@
     value = {
         Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
         Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
-        Lcom/android/server/location/GpsLocationProvider$Listener;
+        Lcom/android/server/location/GpsLocationProvider$Listener;,
+        Lcom/android/server/location/GpsLocationProvider$Injector;
     }
 .end annotation
 
@@ -3094,6 +3095,9 @@
 .method private reportStatus(I)V
     .locals 10
     .parameter "status"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
@@ -3313,6 +3317,8 @@
 
     invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
 
+    invoke-static {p0, v2}, Lcom/android/server/location/GpsLocationProvider$Injector;->appendUidExtra(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
+
     iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
 
     invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
@@ -4333,6 +4339,18 @@
     return v0
 .end method
 
+.method getClientUids()Landroid/util/SparseIntArray;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;
+
+    return-object v0
+.end method
+
 .method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
     .locals 1
 
@@ -4478,6 +4496,18 @@
     return-object v0
 .end method
 
+.method getNavigating()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
+
+    return v0
+.end method
+
 .method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
     .locals 1
 
--- a/services.jar.out/smali/com/android/server/net/NetworkPolicyManagerService.smali
+++ b/services.jar.out/smali/com/android/server/net/NetworkPolicyManagerService.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;
+        Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;,
+        Lcom/android/server/net/NetworkPolicyManagerService$Injector;
     }
 .end annotation
 
@@ -871,8 +872,11 @@
 .end method
 
 .method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
-    .locals 4
+    .locals 2
     .parameter "template"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v0, Landroid/content/Intent;
@@ -880,15 +884,9 @@
     invoke-direct {v0}, Landroid/content/Intent;-><init>()V
 
     .local v0, intent:Landroid/content/Intent;
-    new-instance v1, Landroid/content/ComponentName;
-
-    const-string v2, "com.android.settings"
-
-    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"
+    const-string v1, "android.intent.action.VIEW_DATA_USAGE_SUMMARY"
 
-    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
-
-    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
+    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
 
     const/high16 v1, 0x1000
 
@@ -1706,6 +1704,30 @@
     goto :goto_0
 .end method
 
+.method private enqueueValidNotification(Landroid/net/NetworkPolicy;IJ)V
+    .locals 1
+    .parameter "policy"
+    .parameter "type"
+    .parameter "totalBytes"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$Injector;->isIntervalValid(I)Z
+
+    move-result v0
+
+    if-eqz v0, :cond_0
+
+    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$Injector;->setInterval(I)V
+
+    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
+
+    :cond_0
+    return-void
+.end method
+
 .method private ensureActiveMobilePolicyLocked()V
     .locals 23
 
@@ -2087,6 +2109,9 @@
     .parameter "template"
     .parameter "start"
     .parameter "end"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const-wide/16 v7, 0x0
@@ -2101,11 +2126,17 @@
     move-wide v4, p4
 
     invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
+
+    move-result-wide v0
+
+    invoke-static/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService$Injector;->adjustMobileDataUsage(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;JJ)J
     :try_end_0
     .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
     .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
 
-    move-result-wide v0
+    move-result-wide v2
+
+    add-long/2addr v0, v2
 
     :goto_0
     return-wide v0
@@ -3278,6 +3309,8 @@
     .parameter "enabled"
 
     .prologue
+    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$Injector;->setNetworkTemplateEnabled(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
+
     iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
 
     invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
@@ -3348,6 +3381,8 @@
 
     goto :goto_0
 
+    nop
+
     :pswitch_data_0
     .packed-switch 0x1
         :pswitch_0
@@ -4278,14 +4313,14 @@
 
     const/4 v0, 0x3
 
-    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
+    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueValidNotification(Landroid/net/NetworkPolicy;IJ)V
 
     goto :goto_0
 
     :cond_1
     const/4 v0, 0x2
 
-    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
+    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueValidNotification(Landroid/net/NetworkPolicy;IJ)V
 
     iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;
 
@@ -4312,7 +4347,7 @@
 
     const/4 v0, 0x1
 
-    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
+    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueValidNotification(Landroid/net/NetworkPolicy;IJ)V
 
     goto :goto_0
 
@@ -5561,6 +5596,18 @@
     throw v4
 .end method
 
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
 .method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
     .locals 3
 
--- a/services.jar.out/smali/com/android/server/pm/GrantedPermissions.smali
+++ b/services.jar.out/smali/com/android/server/pm/GrantedPermissions.smali
@@ -89,9 +89,12 @@
 .method setFlags(I)V
     .locals 1
     .parameter "pkgFlags"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    const v0, 0x20040001
+    const v0, -0x5ffbffff
 
     and-int/2addr v0, p1
 
--- a/services.jar.out/smali/com/android/server/pm/PackageManagerService$PackageHandler.smali
+++ b/services.jar.out/smali/com/android/server/pm/PackageManagerService$PackageHandler.smali
@@ -1716,12 +1716,17 @@
 .method public handleMessage(Landroid/os/Message;)V
     .locals 2
     .parameter "msg"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v1, 0xa
 
     :try_start_0
-    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
+    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;
+
+    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$Injector;->doHandleMessage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Landroid/os/Message;)V
     :try_end_0
     .catchall {:try_start_0 .. :try_end_0} :catchall_0
 
--- a/services.jar.out/smali/com/android/server/pm/PackageManagerService.smali
+++ b/services.jar.out/smali/com/android/server/pm/PackageManagerService.smali
@@ -22,7 +22,8 @@
         Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;,
         Lcom/android/server/pm/PackageManagerService$PackageHandler;,
         Lcom/android/server/pm/PackageManagerService$PostInstallData;,
-        Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
+        Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;,
+        Lcom/android/server/pm/PackageManagerService$Injector;
     }
 .end annotation
 
@@ -509,6 +510,9 @@
     .parameter "context"
     .parameter "factoryTest"
     .parameter "onlyCore"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V
@@ -903,6 +907,8 @@
 
     invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;
 
+    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$Injector;->addMiuiSharedUids(Lcom/android/server/pm/PackageManagerService;)V
+
     const-string v2, "debug.separate_processes"
 
     invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
@@ -1627,6 +1633,12 @@
 
     move-object/from16 v0, p0
 
+    move-object/from16 v1, v24
+
+    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService$Injector;->ignoreMiuiFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
+
+    move-object/from16 v0, p0
+
     iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;
 
     invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;
@@ -7765,6 +7777,9 @@
     .locals 22
     .parameter "pkg"
     .parameter "replace"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object/from16 v0, p1
@@ -8245,6 +8260,18 @@
 
     .restart local v4       #allowed:Z
     :goto_6
+    move-object/from16 v0, p1
+
+    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
+
+    move-object/from16 v19, v0
+
+    invoke-static/range {v19 .. v19}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
+
+    move-result v19
+
+    or-int v4, v4, v19
+
     if-nez v4, :cond_b
 
     iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I
@@ -13365,6 +13392,9 @@
     .parameter "parseFlags"
     .parameter "scanMode"
     .parameter "currentTime"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v48, Ljava/io/File;
@@ -13620,7 +13650,7 @@
 
     iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;
 
-    const v10, 0x10302f9
+    const v10, 0x60d0020
 
     iput v10, v3, Landroid/content/pm/ActivityInfo;->theme:I
 
@@ -14599,6 +14629,24 @@
     .end local v23           #i:I
     .end local v45           #renamed:Ljava/lang/String;
     :cond_18
+    move-object/from16 v0, p1
+
+    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;
+
+    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I
+
+    move-object/from16 v0, v41
+
+    iget v10, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I
+
+    const/high16 v11, -0x8000
+
+    and-int/2addr v10, v11
+
+    or-int/2addr v4, v10
+
+    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I
+
     move-object/from16 v0, v41
 
     iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;
@@ -26286,6 +26334,10 @@
     .parameter "flags"
     .parameter "lastRead"
     .parameter "userId"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Signature;
         value = {
             "(I",
@@ -26669,7 +26721,9 @@
     :goto_3
     if-eqz v9, :cond_5
 
-    invoke-virtual {v5, v9}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z
+    move/from16 v0, p1
+
+    invoke-static {v5, v9, v0}, Lcom/android/server/pm/PackageManagerService$Injector;->addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
 
     move-result v12
 
@@ -33520,6 +33574,9 @@
     .parameter "newState"
     .parameter "flags"
     .parameter "userId"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;
@@ -33528,12 +33585,19 @@
 
     move-result v0
 
-    if-nez v0, :cond_0
+    if-nez v0, :cond_1
 
+    :cond_0
     :goto_0
     return-void
 
-    :cond_0
+    :cond_1
+    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->setAccessControl(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
+
+    move-result v0
+
+    if-nez v0, :cond_0
+
     const/4 v2, 0x0
 
     move-object v0, p0
--- a/services.jar.out/smali/com/android/server/pm/ShutdownThread$CloseDialogReceiver.smali
+++ b/services.jar.out/smali/com/android/server/pm/ShutdownThread$CloseDialogReceiver.smali
@@ -50,12 +50,17 @@
 .method public onDismiss(Landroid/content/DialogInterface;)V
     .locals 1
     .parameter "unused"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;
 
     invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
 
+    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Injector;->onDismiss(Landroid/content/DialogInterface;)V
+
     return-void
 .end method
 
--- a/services.jar.out/smali/com/android/server/pm/ShutdownThread.smali
+++ b/services.jar.out/smali/com/android/server/pm/ShutdownThread.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
+        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;,
+        Lcom/android/server/pm/ShutdownThread$Injector;
     }
 .end annotation
 
@@ -109,6 +110,9 @@
 .method private static beginShutdownSequence(Landroid/content/Context;)V
     .locals 7
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x1
@@ -151,7 +155,7 @@
     invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
 
     .local v1, pd:Landroid/app/ProgressDialog;
-    const v2, 0x104012a
+    const v2, 0x60c0191
 
     invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
 
@@ -159,7 +163,7 @@
 
     invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
 
-    const v2, 0x104012e
+    const v2, 0x60c01aa
 
     invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
 
@@ -179,7 +183,7 @@
 
     invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V
 
-    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
+    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread$Injector;->createShutDownDialog(Landroid/content/Context;)V
 
     sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;
 
@@ -344,6 +348,42 @@
     goto :goto_2
 .end method
 
+.method static getIsStarted()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z
+
+    return v0
+.end method
+
+.method static getIsStartedGuard()Ljava/lang/Object;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;
+
+    return-object v0
+.end method
+
+.method static getReboot()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z
+
+    return v0
+.end method
+
 .method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
     .locals 1
     .parameter "context"
@@ -470,12 +510,17 @@
     .locals 1
     .parameter "context"
     .parameter "confirm"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x1
 
     sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z
 
+    const/4 v0, 0x0
+
     sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z
 
     const/4 v0, 0x0
@@ -487,6 +532,32 @@
     return-void
 .end method
 
+.method static setReboot(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sput-boolean p0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z
+
+    return-void
+.end method
+
+.method static setRebootReason(Ljava/lang/String;)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sput-object p0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;
+
+    return-void
+.end method
+
 .method public static shutdown(Landroid/content/Context;Z)V
     .locals 1
     .parameter "context"
@@ -508,6 +579,9 @@
     .locals 7
     .parameter "context"
     .parameter "confirm"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v5, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;
@@ -554,6 +628,10 @@
 
     .local v3, resourceId:I
     :goto_1
+    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread$Injector;->getResourceId(I)I
+
+    move-result v3
+
     const-string v4, "ShutdownThread"
 
     new-instance v5, Ljava/lang/StringBuilder;
@@ -625,6 +703,8 @@
     move-result-object v1
 
     .local v1, dialog:Landroid/app/AlertDialog;
+    invoke-static {v1}, Lcom/android/server/pm/ShutdownThread$Injector;->setDialogTitle(Landroid/app/Dialog;)V
+
     iput-object v1, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;
 
     invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
-- 
1.7.5.4


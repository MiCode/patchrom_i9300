From 654c021d9ad72d92ae86ecc1225a45d330496537 Mon Sep 17 00:00:00 2001
From: wangwenjun <wangwenjun@xiaomi.com>
Date: Wed, 24 Oct 2012 16:26:17 +0800
Subject: [PATCH] add miui hook into framework

Change-Id: Ieaab7b61e2d71ea7dff03d4fee180d4a0d9c9aaf
---
 .../android/accounts/AccountManagerService.smali   |    8 +-
 framework2.jar.out/smali/android/app/Activity.smali |   20 ++-
 .../smali/android/app/ActivityManager.smali        |    7 +-
 .../smali/android/app/ActivityThread.smali         |   59 ++++-
 .../ApplicationPackageManager$ResourceName.smali   |    6 +-
 .../android/app/ApplicationPackageManager.smali    |   30 ++-
 .../smali/android/app/ContextImpl$12.smali         |    7 +-
 .../smali/android/app/ContextImpl.smali            |   17 +-
 .../app/DownloadManager$CursorTranslator.smali     |   45 +++-
 .../smali/android/app/DownloadManager$Query.smali  |   57 ++++
 .../smali/android/app/DownloadManager.smali        |   15 +-
 .../smali/android/app/LoadedApk.smali              |   11 +-
 .../smali/android/content/pm/ApplicationInfo.smali |    6 +
 .../smali/android/content/pm/PackageItemInfo.smali |    9 +-
 .../smali/android/content/pm/PackageManager.smali  |   18 +
 .../smali/android/content/pm/PackageParser.smali   |   62 ++++-
 .../android/content/pm/ParceledListSlice$1.smali   |    3 +
 .../smali/android/content/pm/ResolveInfo.smali     |   10 +-
 .../smali/android/content/res/AssetManager.smali   |   10 +
 .../smali/android/content/res/Configuration.smali  |  166 +++++++++-
 .../android/content/res/Resources$Theme.smali      |    8 +-
 .../smali/android/content/res/Resources.smali      |   82 +++++-
 .../AnimationDrawable$AnimationState.smali         |   24 ++-
 .../graphics/drawable/AnimationDrawable.smali      |   14 +-
 .../DrawableContainer$DrawableContainerState.smali |   11 +
 .../graphics/drawable/NinePatchDrawable.smali      |    9 +
 .../smali/android/media/AudioService.smali         |   52 ++--
 .../smali/android/media/MediaFile.smali            |   19 +-
 .../media/MediaScanner$MyMediaScannerClient.smali  |   22 ++
 .../smali/android/media/MediaScanner.smali         |   15 +-
 framework2.jar.out/smali/android/net/Proxy.smali    |    8 +-
 .../smali/android/net/http/AndroidHttpClient.smali |   12 +-
 .../smali/android/net/wifi/WifiConfiguration.smali |   46 +++
 .../smali/android/os/StrictMode.smali              |   31 ++
 framework2.jar.out/smali/android/os/Vibrator.smali  |   11 +
 .../android/preference/CheckBoxPreference.smali    |   35 ++
 .../android/preference/PreferenceScreen.smali      |    7 +-
 .../android/preference/RingtonePreference.smali    |    9 +
 .../smali/android/provider/CallLog$Calls.smali     |   38 ++-
 .../smali/android/provider/CallLog.smali           |    3 +-
 .../smali/android/text/StaticLayout.smali          |   18 +-
 .../smali/android/text/format/DateFormat.smali     |   15 +
 .../android/view/HapticFeedbackConstants.smali     |   12 +
 framework2.jar.out/smali/android/view/View.smali    |   47 +++-
 .../view/ViewRootImpl$ViewRootHandler.smali        |   11 +
 .../smali/android/view/ViewRootImpl.smali          |   25 ++-
 .../android/view/WindowOrientationListener.smali   |    5 +-
 .../smali/android/widget/AbsListView.smali         |   57 ++++-
 .../smali/android/widget/DatePicker.smali          |   14 +-
 .../widget/QuickContactBadge$QueryHandler.smali    |    9 +
 .../smali/android/widget/QuickContactBadge.smali   |   20 +-
 .../smali/android/widget/RemoteViews.smali         |   26 ++
 .../smali/android/widget/SuggestionsAdapter.smali  |   10 +-
 .../smali/android/widget/TimePicker.smali          |   38 +++-
 .../smali/android/widget/Toast$TN.smali            |   12 +
 framework2.jar.out/smali/android/widget/Toast.smali |   19 ++
 .../com/android/internal/app/LocalePicker.smali    |    6 +
 .../app/ResolverActivity$ResolveListAdapter.smali  |    5 +-
 .../android/internal/app/ResolverActivity.smali    |    3 +-
 .../android/internal/content/PackageMonitor.smali  |   16 +
 .../com/android/internal/os/RuntimeInit.smali      |   26 ++-
 .../internal/view/menu/ActionMenuItemView.smali    |  159 +++++++++
 .../internal/view/menu/ActionMenuPresenter.smali   |    8 +-
 .../internal/view/menu/ActionMenuView.smali        |   18 +-
 .../android/internal/view/menu/MenuItemImpl.smali  |   26 ++
 .../internal/widget/ActionBarContainer.smali       |   62 ++++-
 .../internal/widget/ActionBarView$HomeView.smali   |   53 +++-
 .../android/internal/widget/ActionBarView.smali    |    3 +-
 .../android/internal/widget/LockPatternUtils.smali |   26 ++
 .../internal/widget/LockSettingsService.smali      |   13 +-
 .../widget/ScrollingTabContainerView.smali         |    7 +-
 .../internal/widget/SizeAdaptiveLayout.smali       |    2 +-
 .../GlowPadView$AnimationBundle.smali              |    6 +-
 .../widget/multiwaveview/GlowPadView.smali         |  339 ++++++++++++++++++--
 74 files changed, 1985 insertions(+), 153 deletions(-)

--- a/framework2.jar.out/smali/android/accounts/AccountManagerService.smali
+++ b/framework2.jar.out/smali/android/accounts/AccountManagerService.smali
@@ -15,7 +15,8 @@
         Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
         Landroid/accounts/AccountManagerService$RemoveAccountSession;,
         Landroid/accounts/AccountManagerService$TestFeaturesSession;,
-        Landroid/accounts/AccountManagerService$UserAccounts;
+        Landroid/accounts/AccountManagerService$UserAccounts;,
+        Landroid/accounts/AccountManagerService$Injector;
     }
 .end annotation
 
@@ -2552,6 +2553,9 @@
     .locals 5
     .parameter "accountType"
     .parameter "callingUid"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x0
@@ -2601,7 +2605,7 @@
 
     iget v4, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I
 
-    invoke-virtual {v2, v4, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I
+    invoke-static {v2, v4, p2, p1}, Landroid/accounts/AccountManagerService$Injector;->checkSignatures(Landroid/content/pm/PackageManager;IILjava/lang/String;)I
 
     move-result v2
 
--- a/framework2.jar.out/smali/android/app/Activity.smali
+++ b/framework2.jar.out/smali/android/app/Activity.smali
@@ -16,7 +16,8 @@
         Landroid/app/Activity$1;,
         Landroid/app/Activity$ManagedCursor;,
         Landroid/app/Activity$NonConfigurationInstances;,
-        Landroid/app/Activity$ManagedDialog;
+        Landroid/app/Activity$ManagedDialog;,
+        Landroid/app/Activity$Injector;
     }
 .end annotation
 
@@ -2490,6 +2491,18 @@
     return v0
 .end method
 
+.method getToken()Landroid/os/IBinder;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
+
+    return-object v0
+.end method
+
 .method public final getVolumeControlStream()I
     .locals 1
 
@@ -4832,6 +4845,9 @@
 
 .method protected onResume()V
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
@@ -4844,6 +4860,8 @@
 
     iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z
 
+    invoke-static {p0}, Landroid/app/Activity$Injector;->checkAccessControl(Landroid/app/Activity;)V
+
     return-void
 .end method
 
--- a/framework2.jar.out/smali/android/app/ActivityManager.smali
+++ b/framework2.jar.out/smali/android/app/ActivityManager.smali
@@ -256,6 +256,9 @@
 .method public static isHighEndGfx(Landroid/view/Display;)Z
     .locals 8
     .parameter "display"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x1
@@ -300,7 +303,9 @@
 
     if-ge v1, v4, :cond_0
 
-    const/4 v3, 0x0
+    invoke-static {p0}, Landroid/app/ExtraActivityManager;->isHighEndGfx(Landroid/view/Display;)Z
+
+    move-result v3
 
     goto :goto_0
 .end method
--- a/framework2.jar.out/smali/android/app/ActivityThread.smali
+++ b/framework2.jar.out/smali/android/app/ActivityThread.smali
@@ -9271,6 +9271,9 @@
     .locals 8
     .parameter "config"
     .parameter "compat"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x1
@@ -9336,6 +9339,8 @@
     or-int/lit16 v0, v0, 0xd00
 
     :cond_3
+    invoke-static {v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V
+
     iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
 
     if-eqz v7, :cond_4
@@ -10614,6 +10619,9 @@
     .locals 9
     .parameter "resDir"
     .parameter "compInfo"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x0
@@ -10701,14 +10709,14 @@
     move-result-object v3
 
     .local v3, metrics:Landroid/util/DisplayMetrics;
-    new-instance v4, Landroid/content/res/Resources;
+    new-instance v4, Landroid/content/res/MiuiResources;
 
     .end local v4           #r:Landroid/content/res/Resources;
     invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;
 
     move-result-object v6
 
-    invoke-direct {v4, v0, v3, v6, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
+    invoke-direct {v4, v0, v3, v6, p2}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
 
     .restart local v4       #r:Landroid/content/res/Resources;
     iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;
@@ -10808,6 +10816,53 @@
     goto :goto_1
 .end method
 
+.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
+    .locals 1
+    .parameter "packageName"
+    .parameter "resDir"
+    .parameter "pkgInfo"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p3, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;
+
+    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;
+
+    move-result-object v0
+
+    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
+.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
+    .locals 2
+    .parameter "packageName"
+    .parameter "resDir"
+    .parameter "compInfo"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-virtual {p0, p2, p3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
+
+    move-result-object v0
+
+    .local v0, r:Landroid/content/res/Resources;
+    move-object v1, v0
+
+    check-cast v1, Landroid/content/res/MiuiResources;
+
+    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V
+
+    return-object v0
+.end method
+
 .method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
     .locals 3
     .parameter "token"
--- a/framework2.jar.out/smali/android/app/ApplicationPackageManager$ResourceName.smali
+++ b/framework2.jar.out/smali/android/app/ApplicationPackageManager$ResourceName.smali
@@ -4,12 +4,16 @@
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Landroid/app/ApplicationPackageManager;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x1a
+    accessFlags = 0x18
     name = "ResourceName"
 .end annotation
 
--- a/framework2.jar.out/smali/android/app/ApplicationPackageManager.smali
+++ b/framework2.jar.out/smali/android/app/ApplicationPackageManager.smali
@@ -133,9 +133,12 @@
     throw v0
 .end method
 
-.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
+.method static getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
     .locals 4
     .parameter "name"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;
@@ -145,7 +148,7 @@
     :try_start_0
     sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;
 
-    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
+    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
 
     move-result-object v1
 
@@ -177,7 +180,7 @@
     :cond_0
     sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;
 
-    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
+    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
 
     .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
     :cond_1
@@ -459,10 +462,13 @@
     goto :goto_3
 .end method
 
-.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
+.method static putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
     .locals 4
     .parameter "name"
     .parameter "dr"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;
@@ -474,13 +480,13 @@
 
     new-instance v2, Ljava/lang/ref/WeakReference;
 
-    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
+    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
 
     move-result-object v3
 
     invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
 
-    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
+    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 
     monitor-exit v1
 
@@ -1425,7 +1431,7 @@
     invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V
 
     .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
-    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
+    invoke-static {v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v0
 
@@ -1460,7 +1466,7 @@
 
     move-result-object v0
 
-    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
+    invoke-static {v2, v0}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
     :try_end_1
     .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
     .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
@@ -2439,6 +2445,10 @@
 .method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
     .locals 4
     .parameter "app"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Landroid/content/pm/PackageManager$NameNotFoundException;
@@ -2476,6 +2486,8 @@
 
     iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;
 
+    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
+
     iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
 
     invoke-static {}, Landroid/os/Process;->myUid()I
@@ -2491,7 +2503,7 @@
 
     iget-object v3, v3, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;
 
-    invoke-virtual {v2, v1, v3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
+    invoke-virtual {v2, v0, v1, v3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
 
     move-result-object v0
 
--- a/framework2.jar.out/smali/android/app/ContextImpl$12.smali
+++ b/framework2.jar.out/smali/android/app/ContextImpl$12.smali
@@ -29,9 +29,12 @@
 .method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
     .locals 3
     .parameter "ctx"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    new-instance v0, Landroid/app/DownloadManager;
+    new-instance v0, Landroid/app/MiuiDownloadManager;
 
     invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;
 
@@ -41,7 +44,7 @@
 
     move-result-object v2
 
-    invoke-direct {v0, v1, v2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
+    invoke-direct {v0, v1, v2}, Landroid/app/MiuiDownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
 
     return-object v0
 .end method
--- a/framework2.jar.out/smali/android/app/ContextImpl.smali
+++ b/framework2.jar.out/smali/android/app/ContextImpl.smali
@@ -8,7 +8,8 @@
     value = {
         Landroid/app/ContextImpl$ApplicationContentResolver;,
         Landroid/app/ContextImpl$StaticServiceFetcher;,
-        Landroid/app/ContextImpl$ServiceFetcher;
+        Landroid/app/ContextImpl$ServiceFetcher;,
+        Landroid/app/ContextImpl$Injector;
     }
 .end annotation
 
@@ -1089,6 +1090,9 @@
     .parameter "broadcastPermission"
     .parameter "scheduler"
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x0
@@ -1137,6 +1141,8 @@
     .restart local v3       #rd:Landroid/content/IIntentReceiver;
     :cond_1
     :goto_0
+    invoke-static {p0, p2}, Landroid/app/ContextImpl$Injector;->checkPriority(Landroid/app/ContextImpl;Landroid/content/IntentFilter;)V
+
     :try_start_0
     invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
 
@@ -3475,12 +3481,15 @@
 .end method
 
 .method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;)V
-    .locals 2
+    .locals 3
     .parameter "packageInfo"
     .parameter "activityToken"
     .parameter "mainThread"
     .parameter "container"
     .parameter "basePackageName"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iput-object p1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;
@@ -3533,7 +3542,9 @@
 
     move-result-object v1
 
-    invoke-virtual {p3, v0, v1}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
+    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;
+
+    invoke-virtual {p3, v2, v0, v1}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
 
     move-result-object v0
 
--- a/framework2.jar.out/smali/android/app/DownloadManager$CursorTranslator.smali
+++ b/framework2.jar.out/smali/android/app/DownloadManager$CursorTranslator.smali
@@ -4,12 +4,16 @@
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Landroid/app/DownloadManager;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0xa
+    accessFlags = 0x8
     name = "CursorTranslator"
 .end annotation
 
@@ -248,11 +252,16 @@
 .method private getPausedReason(I)J
     .locals 2
     .parameter "status"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     packed-switch p1, :pswitch_data_0
 
-    const-wide/16 v0, 0x4
+    invoke-static {p1}, Landroid/app/DownloadManager$Injector;->getPausedReason(I)J
+
+    move-result-wide v0
 
     :goto_0
     return-wide v0
@@ -287,7 +296,7 @@
     .parameter "status"
 
     .prologue
-    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I
+    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I
 
     move-result v0
 
@@ -319,19 +328,22 @@
     .end sparse-switch
 .end method
 
-.method private translateStatus(I)I
+.method static translateStatus(I)I
     .locals 1
     .parameter "status"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    packed-switch p1, :pswitch_data_0
+    packed-switch p0, :pswitch_data_0
 
     :pswitch_0
     sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z
 
     if-nez v0, :cond_0
 
-    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z
+    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z
 
     move-result v0
 
@@ -389,6 +401,20 @@
 
 
 # virtual methods
+.method callGetLocalUri()Ljava/lang/String;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
 .method public getInt(I)I
     .locals 2
     .parameter "columnIndex"
@@ -460,7 +486,7 @@
 
     move-result v0
 
-    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I
+    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I
 
     move-result v0
 
@@ -479,6 +505,9 @@
 .method public getString(I)Ljava/lang/String;
     .locals 2
     .parameter "columnIndex"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;
@@ -493,7 +522,7 @@
 
     if-eqz v0, :cond_0
 
-    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;
+    invoke-static {p0}, Landroid/app/DownloadManager$Injector;->getLocalUri(Landroid/app/DownloadManager$CursorTranslator;)Ljava/lang/String;
 
     move-result-object v0
 
--- a/framework2.jar.out/smali/android/app/DownloadManager$Query.smali
+++ b/framework2.jar.out/smali/android/app/DownloadManager$Query.smali
@@ -170,6 +170,28 @@
 
 
 # virtual methods
+.method addExtraSelectionParts(Ljava/util/List;)V
+    .locals 0
+    .parameter
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .annotation system Ldalvik/annotation/Signature;
+        value = {
+            "(",
+            "Ljava/util/List",
+            "<",
+            "Ljava/lang/String;",
+            ">;)V"
+        }
+    .end annotation
+
+    .prologue
+    .local p1, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
+    return-void
+.end method
+
 .method public orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
     .locals 3
     .parameter "column"
@@ -272,6 +294,9 @@
     .parameter "resolver"
     .parameter "projection"
     .parameter "baseUri"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object v1, p3
@@ -496,6 +521,10 @@
 
     move-result-object v0
 
+    invoke-static {v0}, Landroid/app/DownloadManager$Injector;->addParens(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v0
+
     invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
 
     .end local v7           #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
@@ -509,6 +538,8 @@
     invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
 
     :cond_7
+    invoke-virtual {p0, v8}, Landroid/app/DownloadManager$Query;->addExtraSelectionParts(Ljava/util/List;)V
+
     const-string v0, "deleted != \'1\'"
 
     invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
@@ -606,3 +637,29 @@
 
     return-object p0
 .end method
+
+.method setOrderByColumn(Ljava/lang/String;)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;
+
+    return-void
+.end method
+
+.method setOrderDirection(I)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput p1, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I
+
+    return-void
+.end method
--- a/framework2.jar.out/smali/android/app/DownloadManager.smali
+++ b/framework2.jar.out/smali/android/app/DownloadManager.smali
@@ -8,7 +8,8 @@
     value = {
         Landroid/app/DownloadManager$CursorTranslator;,
         Landroid/app/DownloadManager$Query;,
-        Landroid/app/DownloadManager$Request;
+        Landroid/app/DownloadManager$Request;,
+        Landroid/app/DownloadManager$Injector;
     }
 .end annotation
 
@@ -639,6 +640,18 @@
     return-wide v1
 .end method
 
+.method getBaseUri()Landroid/net/Uri;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;
+
+    return-object v0
+.end method
+
 .method getDownloadUri(J)Landroid/net/Uri;
     .locals 1
     .parameter "id"
--- a/framework2.jar.out/smali/android/app/LoadedApk.smali
+++ b/framework2.jar.out/smali/android/app/LoadedApk.smali
@@ -1753,17 +1753,22 @@
 .end method
 
 .method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
-    .locals 1
+    .locals 2
     .parameter "mainThread"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;
 
     if-nez v0, :cond_0
 
-    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;
+    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;
 
-    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
+    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;
+
+    invoke-virtual {p1, v0, v1, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
 
     move-result-object v0
 
--- a/framework2.jar.out/smali/android/content/pm/ApplicationInfo.smali
+++ b/framework2.jar.out/smali/android/content/pm/ApplicationInfo.smali
@@ -26,6 +26,12 @@
     .end annotation
 .end field
 
+.field public static final FLAG_ACCESS_CONTROL_PASSWORD:I = -0x80000000
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public static final FLAG_ALLOW_BACKUP:I = 0x8000
 
 .field public static final FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40
--- a/framework2.jar.out/smali/android/content/pm/PackageItemInfo.smali
+++ b/framework2.jar.out/smali/android/content/pm/PackageItemInfo.smali
@@ -342,8 +342,11 @@
 .end method
 
 .method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
-    .locals 4
+    .locals 5
     .parameter "pm"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I
@@ -358,7 +361,9 @@
 
     move-result-object v3
 
-    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
+    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;
+
+    invoke-static {p1, v1, v2, v3, v4}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v0
 
--- a/framework2.jar.out/smali/android/content/pm/PackageManager.smali
+++ b/framework2.jar.out/smali/android/content/pm/PackageManager.smali
@@ -14,6 +14,12 @@
 # static fields
 .field public static final ACTION_CLEAN_EXTERNAL_STORAGE:Ljava/lang/String; = "android.content.pm.CLEAN_EXTERNAL_STORAGE"
 
+.field public static final COMPONENT_ENABLED_STATE_ACCESS_CONTROL:I = -0x80000000
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0
 
 .field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2
@@ -146,6 +152,18 @@
 
 .field public static final GET_URI_PERMISSION_PATTERNS:I = 0x800
 
+.field public static final HAS_ACTIVITY:I = 0x20000
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public static final HAS_ACTIVITY_OR_SERVICES:I = 0x40000
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public static final INSTALL_ALLOW_TEST:I = 0x4
 
 .field public static final INSTALL_EXTERNAL:I = 0x8
--- a/framework2.jar.out/smali/android/content/pm/PackageParser.smali
+++ b/framework2.jar.out/smali/android/content/pm/PackageParser.smali
@@ -21,7 +21,8 @@
         Landroid/content/pm/PackageParser$ParseComponentArgs;,
         Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
         Landroid/content/pm/PackageParser$SplitPermissionInfo;,
-        Landroid/content/pm/PackageParser$NewPermissionInfo;
+        Landroid/content/pm/PackageParser$NewPermissionInfo;,
+        Landroid/content/pm/PackageParser$Injector;
     }
 .end annotation
 
@@ -6330,6 +6331,10 @@
     .parameter "outInfo"
     .parameter "outError"
     .parameter "isActivity"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Lorg/xmlpull/v1/XmlPullParserException;,
@@ -6358,9 +6363,15 @@
     move-result v7
 
     .local v7, priority:I
+    move/from16 v0, p4
+
+    invoke-static {v0, v7}, Landroid/content/pm/PackageParser$Injector;->checkPriority(II)I
+
+    move-result v13
+
     move-object/from16 v0, p5
 
-    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V
+    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V
 
     const/4 v13, 0x0
 
@@ -7033,6 +7044,10 @@
     .parameter "parser"
     .parameter "flags"
     .parameter "outError"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Lorg/xmlpull/v1/XmlPullParserException;,
@@ -7206,6 +7221,12 @@
 
     invoke-static {v0, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;
 
+    move-result-object v3
+
+    move-object/from16 v0, v34
+
+    invoke-static {v0, v3}, Landroid/content/pm/PackageParser$Injector;->filterNameError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
+
     move-result-object v29
 
     .local v29, nameError:Ljava/lang/String;
@@ -9265,6 +9286,10 @@
     .parameter "attrs"
     .parameter "flags"
     .parameter "outError"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Ljava/io/IOException;,
@@ -9360,6 +9385,10 @@
 
     invoke-static {v4, v9}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;
 
+    move-result-object v9
+
+    invoke-static {v4, v9}, Landroid/content/pm/PackageParser$Injector;->filterNameError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
+
     move-result-object v3
 
     .local v3, nameError:Ljava/lang/String;
@@ -9864,6 +9893,10 @@
     .parameter "attrs"
     .parameter "flags"
     .parameter "outError"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Ljava/io/IOException;,
@@ -9945,6 +9978,10 @@
     :cond_5
     invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;
 
+    move-result-object v4
+
+    invoke-static {v1, v4}, Landroid/content/pm/PackageParser$Injector;->filterNameError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
+
     move-result-object v0
 
     .local v0, nameError:Ljava/lang/String;
@@ -12909,6 +12946,20 @@
     .local v13, localCerts:[Ljava/security/cert/Certificate;
     if-nez v13, :cond_5
 
+    move-object/from16 v0, p1
+
+    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;
+
+    move-object/from16 v18, v0
+
+    move-object/from16 v0, v18
+
+    invoke-static {v12, v0}, Lmiui/content/pm/ExtraPackageManager;->isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
+
+    move-result v18
+
+    if-nez v18, :cond_3
+
     const-string v18, "PackageParser"
 
     new-instance v19, Ljava/lang/StringBuilder;
@@ -13445,6 +13496,9 @@
     .parameter "destCodePath"
     .parameter "metrics"
     .parameter "flags"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x1
@@ -13594,7 +13648,7 @@
     .local v25, cookie:I
     if-eqz v25, :cond_4
 
-    new-instance v32, Landroid/content/res/Resources;
+    new-instance v32, Landroid/content/res/MiuiResources;
 
     const/4 v6, 0x0
 
@@ -13602,7 +13656,7 @@
 
     move-object/from16 v1, p3
 
-    invoke-direct {v0, v5, v1, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
+    invoke-direct {v0, v5, v1, v6}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
     :try_end_1
     .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
 
--- a/framework2.jar.out/smali/android/content/pm/ParceledListSlice$1.smali
+++ b/framework2.jar.out/smali/android/content/pm/ParceledListSlice$1.smali
@@ -112,6 +112,9 @@
 
     invoke-direct {v5}, Landroid/content/pm/ParceledListSlice;-><init>()V
 
+    .local v5, list:Landroid/content/pm/ParceledListSlice;
+    invoke-virtual {v5, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V
+
     goto :goto_1
 .end method
 
--- a/framework2.jar.out/smali/android/content/pm/ResolveInfo.smali
+++ b/framework2.jar.out/smali/android/content/pm/ResolveInfo.smali
@@ -9,7 +9,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/content/pm/ResolveInfo$DisplayNameComparator;
+        Landroid/content/pm/ResolveInfo$DisplayNameComparator;,
+        Landroid/content/pm/ResolveInfo$Injector;
     }
 .end annotation
 
@@ -634,6 +635,9 @@
 .method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
     .locals 6
     .parameter "pm"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v3, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;
@@ -650,7 +654,7 @@
 
     const/4 v5, 0x0
 
-    invoke-virtual {p1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
+    invoke-static {p0, p1, v3, v4, v5}, Landroid/content/pm/ResolveInfo$Injector;->getDrawable(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v2
 
@@ -682,7 +686,7 @@
 
     iget v4, p0, Landroid/content/pm/ResolveInfo;->icon:I
 
-    invoke-virtual {p1, v3, v4, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
+    invoke-static {p0, p1, v3, v4, v0}, Landroid/content/pm/ResolveInfo$Injector;->getDrawable(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v2
 
--- a/framework2.jar.out/smali/android/content/res/AssetManager.smali
+++ b/framework2.jar.out/smali/android/content/res/AssetManager.smali
@@ -94,6 +94,9 @@
 
 .method public constructor <init>()V
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x1
@@ -127,6 +130,8 @@
 
     invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V
 
+    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->addExtraAssetPaths(Landroid/content/res/AssetManager;)V
+
     monitor-exit p0
 
     return-void
@@ -144,6 +149,9 @@
 .method private constructor <init>(Z)V
     .locals 2
     .parameter "isSystem"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x1
@@ -172,6 +180,8 @@
 
     invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V
 
+    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->addExtraAssetPaths(Landroid/content/res/AssetManager;)V
+
     return-void
 .end method
 
--- a/framework2.jar.out/smali/android/content/res/Configuration.smali
+++ b/framework2.jar.out/smali/android/content/res/Configuration.smali
@@ -138,6 +138,30 @@
 
 .field public static final UI_MODE_TYPE_NORMAL:I = 0x1
 
+.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public static final UI_MODE_TYPE_TELEVISION:I = 0x4
 
 .field public static final UI_MODE_TYPE_UNDEFINED:I
@@ -150,6 +174,12 @@
 
 .field public compatSmallestScreenWidthDp:I
 
+.field public extraConfig:Lmiui/content/res/ExtraConfiguration;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public fontScale:F
 
 .field public hardKeyboardHidden:I
@@ -204,35 +234,62 @@
 .end method
 
 .method public constructor <init>()V
-    .locals 0
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 
+    new-instance v0, Lmiui/content/res/ExtraConfiguration;
+
+    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V
+
+    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
     invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V
 
     return-void
 .end method
 
 .method public constructor <init>(Landroid/content/res/Configuration;)V
-    .locals 0
+    .locals 1
     .parameter "o"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 
+    new-instance v0, Lmiui/content/res/ExtraConfiguration;
+
+    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V
+
+    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
     invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
 
     return-void
 .end method
 
 .method private constructor <init>(Landroid/os/Parcel;)V
-    .locals 0
+    .locals 1
     .parameter "source"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 
+    new-instance v0, Lmiui/content/res/ExtraConfiguration;
+
+    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V
+
+    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
     invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V
 
     return-void
@@ -253,6 +310,9 @@
     .locals 1
     .parameter "configChanges"
     .parameter "interestingChanges"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/high16 v0, 0x4000
@@ -261,14 +321,21 @@
 
     and-int/2addr v0, p0
 
-    if-eqz v0, :cond_0
+    if-nez v0, :cond_0
+
+    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z
+
+    move-result v0
 
+    if-eqz v0, :cond_1
+
+    :cond_0
     const/4 v0, 0x1
 
     :goto_0
     return v0
 
-    :cond_0
+    :cond_1
     const/4 v0, 0x0
 
     goto :goto_0
@@ -279,6 +346,9 @@
 .method public compareTo(Landroid/content/res/Configuration;)I
     .locals 7
     .parameter "that"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v4, 0x1
@@ -499,6 +569,14 @@
 
     sub-int v2, v3, v4
 
+    iget-object v3, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    iget-object v4, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v3, v4}, Lmiui/content/res/ExtraConfiguration;->compareTo(Lmiui/content/res/ExtraConfiguration;)I
+
+    move-result v2
+
     goto/16 :goto_0
 .end method
 
@@ -759,6 +837,16 @@
     or-int/lit16 v0, v0, 0x800
 
     :cond_10
+    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v1, v2}, Lmiui/content/res/ExtraConfiguration;->diff(Lmiui/content/res/ExtraConfiguration;)I
+
+    move-result v1
+
+    or-int/2addr v0, v1
+
     return v0
 .end method
 
@@ -821,6 +909,9 @@
 
 .method public hashCode()I
     .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v0, 0x11
@@ -933,7 +1024,15 @@
 
     add-int v0, v1, v2
 
-    return v0
+    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v1}, Lmiui/content/res/ExtraConfiguration;->hashCode()I
+
+    move-result v1
+
+    add-int/2addr v1, v0
+
+    return v1
 
     :cond_0
     const/4 v1, 0x0
@@ -1030,6 +1129,9 @@
 .method public readFromParcel(Landroid/os/Parcel;)V
     .locals 5
     .parameter "source"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x1
@@ -1188,6 +1290,10 @@
 
     iput v0, p0, Landroid/content/res/Configuration;->seq:I
 
+    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v0, p1}, Lmiui/content/res/ExtraConfiguration;->readFromParcel(Landroid/os/Parcel;)V
+
     return-void
 
     :cond_1
@@ -1197,8 +1303,11 @@
 .end method
 
 .method public setTo(Landroid/content/res/Configuration;)V
-    .locals 1
+    .locals 2
     .parameter "o"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget v0, p1, Landroid/content/res/Configuration;->fontScale:F
@@ -1300,11 +1409,20 @@
 
     iput v0, p0, Landroid/content/res/Configuration;->seq:I
 
+    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v0, v1}, Lmiui/content/res/ExtraConfiguration;->setTo(Lmiui/content/res/ExtraConfiguration;)V
+
     return-void
 .end method
 
 .method public setToDefaults()V
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x0
@@ -1357,11 +1475,18 @@
 
     iput v1, p0, Landroid/content/res/Configuration;->seq:I
 
+    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v0}, Lmiui/content/res/ExtraConfiguration;->setToDefaults()V
+
     return-void
 .end method
 
 .method public toString()Ljava/lang/String;
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v0, Ljava/lang/StringBuilder;
@@ -1652,6 +1777,14 @@
     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
 
     :cond_0
+    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v1}, Lmiui/content/res/ExtraConfiguration;->toString()Ljava/lang/String;
+
+    move-result-object v1
+
+    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
+
     const/16 v1, 0x7d
 
     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
@@ -1977,8 +2110,6 @@
 
     goto/16 :goto_f
 
-    nop
-
     :pswitch_data_0
     .packed-switch 0x0
         :pswitch_0
@@ -2470,6 +2601,16 @@
     iput v1, p0, Landroid/content/res/Configuration;->seq:I
 
     :cond_17
+    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v1, v2}, Lmiui/content/res/ExtraConfiguration;->updateFrom(Lmiui/content/res/ExtraConfiguration;)I
+
+    move-result v1
+
+    or-int/2addr v0, v1
+
     return v0
 
     :cond_18
@@ -2482,6 +2623,9 @@
     .locals 3
     .parameter "dest"
     .parameter "flags"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v2, 0x1
@@ -2582,6 +2726,10 @@
 
     invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
 
+    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;
+
+    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ExtraConfiguration;->writeToParcel(Landroid/os/Parcel;I)V
+
     return-void
 
     :cond_0
--- a/framework2.jar.out/smali/android/content/res/Resources$Theme.smali
+++ b/framework2.jar.out/smali/android/content/res/Resources$Theme.smali
@@ -1,15 +1,19 @@
-.class public final Landroid/content/res/Resources$Theme;
+.class public Landroid/content/res/Resources$Theme;
 .super Ljava/lang/Object;
 .source "Resources.java"
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Landroid/content/res/Resources;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x11
+    accessFlags = 0x1
     name = "Theme"
 .end annotation
 
--- a/framework2.jar.out/smali/android/content/res/Resources.smali
+++ b/framework2.jar.out/smali/android/content/res/Resources.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Landroid/content/res/Resources$Theme;,
-        Landroid/content/res/Resources$NotFoundException;
+        Landroid/content/res/Resources$NotFoundException;,
+        Landroid/content/res/Resources$Injector;
     }
 .end annotation
 
@@ -170,8 +171,11 @@
     return-void
 .end method
 
-.method private constructor <init>()V
+.method constructor <init>()V
     .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v2, 0x4
@@ -522,6 +526,28 @@
     return-void
 .end method
 
+.method static clearPreloadedCache()V
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;
+
+    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
+
+    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;
+
+    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
+
+    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;
+
+    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
+
+    return-void
+.end method
+
 .method private getCachedColorStateList(J)Landroid/content/res/ColorStateList;
     .locals 4
     .parameter "key"
@@ -661,6 +687,9 @@
 .method private getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
     .locals 5
     .parameter "len"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
@@ -726,7 +755,7 @@
     .restart local v0       #attrs:Landroid/content/res/TypedArray;
     :cond_1
     :try_start_1
-    new-instance v0, Landroid/content/res/TypedArray;
+    new-instance v0, Landroid/content/res/MiuiTypedArray;
 
     .end local v0           #attrs:Landroid/content/res/TypedArray;
     mul-int/lit8 v2, p1, 0x6
@@ -737,7 +766,7 @@
 
     new-array v4, v4, [I
 
-    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V
+    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;[I[II)V
 
     monitor-exit v3
     :try_end_1
@@ -788,6 +817,9 @@
 
 .method public static getSystem()Landroid/content/res/Resources;
     .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v2, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;
@@ -800,10 +832,10 @@
     .local v0, ret:Landroid/content/res/Resources;
     if-nez v0, :cond_0
 
-    new-instance v0, Landroid/content/res/Resources;
+    new-instance v0, Landroid/content/res/MiuiResources;
 
     .end local v0           #ret:Landroid/content/res/Resources;
-    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V
+    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V
 
     .restart local v0       #ret:Landroid/content/res/Resources;
     sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;
@@ -3303,6 +3335,10 @@
     .locals 17
     .parameter "value"
     .parameter "id"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Landroid/content/res/Resources$NotFoundException;
@@ -3618,13 +3654,15 @@
     move-result-object v7
 
     .local v7, is:Ljava/io/InputStream;
+    invoke-static/range {p2 .. p2}, Landroid/content/res/Resources$Injector;->setDrawableId(I)V
+
     const/4 v13, 0x0
 
     move-object/from16 v0, p0
 
     move-object/from16 v1, p1
 
-    invoke-static {v0, v1, v7, v6, v13}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
+    invoke-static {v0, v1, v7, v6, v13}, Landroid/content/res/Resources$Injector;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v3
 
@@ -3741,6 +3779,20 @@
     goto :goto_5
 .end method
 
+.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
+    .locals 1
+    .parameter "value"
+    .parameter "id"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v0, 0x0
+
+    return-object v0
+.end method
+
 .method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
     .locals 5
     .parameter "id"
@@ -4090,8 +4142,11 @@
     throw v7
 .end method
 
-.method public final newTheme()Landroid/content/res/Resources$Theme;
+.method public newTheme()Landroid/content/res/Resources$Theme;
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v0, Landroid/content/res/Resources$Theme;
@@ -4835,6 +4890,9 @@
     .parameter "config"
     .parameter "metrics"
     .parameter "compat"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object/from16 v0, p0
@@ -4946,7 +5004,13 @@
 
     invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I
 
-    move-result v20
+    move-result v2
+
+    const/high16 v3, -0x8000
+
+    and-int v3, v3, v20
+
+    or-int v20, v2, v3
 
     :cond_5
     move-object/from16 v0, p0
--- a/framework2.jar.out/smali/android/graphics/drawable/AnimationDrawable$AnimationState.smali
+++ b/framework2.jar.out/smali/android/graphics/drawable/AnimationDrawable$AnimationState.smali
@@ -1,15 +1,19 @@
-.class final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
+.class public final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
 .super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
 .source "AnimationDrawable.java"
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Landroid/graphics/drawable/AnimationDrawable;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x1a
+    accessFlags = 0x1c
     name = "AnimationState"
 .end annotation
 
@@ -171,3 +175,19 @@
 
     return-object v0
 .end method
+
+.method setDuration(II)V
+    .locals 1
+    .parameter "frame"
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
+
+    aput p2, v0, p1
+
+    return-void
+.end method
--- a/framework2.jar.out/smali/android/graphics/drawable/AnimationDrawable.smali
+++ b/framework2.jar.out/smali/android/graphics/drawable/AnimationDrawable.smali
@@ -17,7 +17,7 @@
 
 
 # instance fields
-.field private final mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;
+.field private mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;
 
 .field private mCurFrame:I
 
@@ -211,6 +211,18 @@
     return-void
 .end method
 
+.method getAnimationState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;
+
+    return-object v0
+.end method
+
 .method public getDuration(I)I
     .locals 1
     .parameter "i"
--- a/framework2.jar.out/smali/android/graphics/drawable/DrawableContainer$DrawableContainerState.smali
+++ b/framework2.jar.out/smali/android/graphics/drawable/DrawableContainer$DrawableContainerState.smali
@@ -68,6 +68,9 @@
     .parameter "orig"
     .parameter "owner"
     .parameter "res"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x1
@@ -210,6 +213,14 @@
 
     iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I
 
+    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I
+
+    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I
+
+    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I
+
+    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I
+
     iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z
 
     iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z
--- a/framework2.jar.out/smali/android/graphics/drawable/NinePatchDrawable.smali
+++ b/framework2.jar.out/smali/android/graphics/drawable/NinePatchDrawable.smali
@@ -218,6 +218,9 @@
 
 .method private computeBitmapSize()V
     .locals 5
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;
@@ -254,6 +257,12 @@
 
     iput-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mLayoutInsets:Landroid/graphics/Insets;
 
+    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
+
+    iget-object v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;
+
+    iput-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;
+
     :goto_0
     return-void
 
--- a/framework2.jar.out/smali/android/media/AudioService.smali
+++ b/framework2.jar.out/smali/android/media/AudioService.smali
@@ -24,7 +24,8 @@
         Landroid/media/AudioService$SoundPoolCallback;,
         Landroid/media/AudioService$SoundPoolListenerThread;,
         Landroid/media/AudioService$SetModeDeathHandler;,
-        Landroid/media/AudioService$ForceControlStreamClient;
+        Landroid/media/AudioService$ForceControlStreamClient;,
+        Landroid/media/AudioService$Injector;
     }
 .end annotation
 
@@ -351,7 +352,7 @@
 
 .field private mVolumeControlStream:I
 
-.field private mVolumePanel:Landroid/view/VolumePanel;
+.field private mVolumePanel:Lmiui/view/VolumePanel;
 
 
 # direct methods
@@ -800,11 +801,11 @@
 
     sput v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I
 
-    new-instance v0, Landroid/view/VolumePanel;
+    new-instance v0, Lmiui/view/VolumePanel;
 
-    invoke-direct {v0, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
+    invoke-direct {v0, p1, p0}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
 
-    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
     iput v11, p0, Landroid/media/AudioService;->mMode:I
 
@@ -1976,9 +1977,9 @@
     invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdateToRemote(II)V
 
     :cond_1
-    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postRemoteVolumeChanged(II)V
+    invoke-virtual {v2, p1, p3}, Lmiui/view/VolumePanel;->postRemoteVolumeChanged(II)V
 
     goto :goto_0
 
@@ -5635,9 +5636,9 @@
 
     iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I
 
-    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
+    invoke-virtual {v2}, Lmiui/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
 
     :cond_1
     monitor-exit v4
@@ -5674,9 +5675,9 @@
 
     iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I
 
-    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
+    invoke-virtual {v2}, Lmiui/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
 
     :cond_2
     monitor-exit v4
@@ -5713,9 +5714,9 @@
 
     iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I
 
-    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
+    invoke-virtual {v2}, Lmiui/view/VolumePanel;->postHasNewRemotePlaybackInfo()V
 
     :cond_3
     monitor-exit v4
@@ -6047,9 +6048,9 @@
 
     iput-boolean v0, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z
 
-    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postRemoteSliderVisibility(Z)V
+    invoke-virtual {v3, v0}, Lmiui/view/VolumePanel;->postRemoteSliderVisibility(Z)V
 
     :cond_2
     monitor-exit v4
@@ -7736,9 +7737,9 @@
     .parameter "flags"
 
     .prologue
-    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V
+    invoke-virtual {v0, p2}, Lmiui/view/VolumePanel;->postMasterMuteChanged(I)V
 
     invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V
 
@@ -7752,9 +7753,9 @@
     .parameter "newVolume"
 
     .prologue
-    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V
+    invoke-virtual {v1, p1}, Lmiui/view/VolumePanel;->postMasterVolumeChanged(I)V
 
     new-instance v0, Landroid/content/Intent;
 
@@ -7864,9 +7865,9 @@
     const/4 p1, 0x5
 
     :cond_0
-    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
+    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
 
-    invoke-virtual {v1, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V
+    invoke-virtual {v1, p1, p4}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V
 
     add-int/lit8 v1, p2, 0x5
 
@@ -9365,6 +9366,9 @@
     .parameter "direction"
     .parameter "suggestedStreamType"
     .parameter "flags"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v3, -0xc8
@@ -9409,6 +9413,12 @@
     and-int/lit8 p3, p3, -0x5
 
     :cond_1
+    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
+
+    invoke-static {v1, p3, p1}, Landroid/media/AudioService$Injector;->adjustDirection(Lmiui/view/VolumePanel;II)I
+
+    move-result p1
+
     if-ne v0, v3, :cond_3
 
     and-int/lit8 p3, p3, -0x5
--- a/framework2.jar.out/smali/android/media/MediaFile.smali
+++ b/framework2.jar.out/smali/android/media/MediaFile.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/media/MediaFile$MediaFileType;
+        Landroid/media/MediaFile$MediaFileType;,
+        Landroid/media/MediaFile$Injector;
     }
 .end annotation
 
@@ -20,6 +21,8 @@
 
 .field public static final FILE_TYPE_AMR:I = 0x4
 
+.field public static final FILE_TYPE_APE:I = 0x3e9
+
 .field public static final FILE_TYPE_ASF:I = 0x1a
 
 .field public static final FILE_TYPE_AVI:I = 0x1d
@@ -102,6 +105,8 @@
 
 .field private static final FIRST_DRM_FILE_TYPE:I = 0x33
 
+.field private static final FIRST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3e9
+
 .field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f
 
 .field private static final FIRST_MIDI_FILE_TYPE:I = 0xb
@@ -116,6 +121,8 @@
 
 .field private static final LAST_DRM_FILE_TYPE:I = 0x33
 
+.field private static final LAST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3e9
+
 .field private static final LAST_IMAGE_FILE_TYPE:I = 0x24
 
 .field private static final LAST_MIDI_FILE_TYPE:I = 0xd
@@ -276,7 +283,7 @@
 
     invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V
 
-    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z
+    invoke-static {}, Landroid/media/MediaFile$Injector;->isWMAEnabled()Z
 
     move-result v0
 
@@ -403,6 +410,8 @@
 
     invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V
 
+    invoke-static {}, Landroid/media/MediaFile$Injector;->addAPE()V
+
     const-string v0, "MPEG"
 
     const-string v1, "video/mpeg"
@@ -1088,6 +1097,12 @@
     return v0
 
     :cond_2
+    invoke-static {p0}, Landroid/media/MediaFile$Injector;->isFFMpegAudoFileType(I)Z
+
+    move-result v1
+
+    if-nez v1, :cond_1
+
     const/4 v0, 0x0
 
     goto :goto_0
--- a/framework2.jar.out/smali/android/media/MediaScanner$MyMediaScannerClient.smali
+++ b/framework2.jar.out/smali/android/media/MediaScanner$MyMediaScannerClient.smali
@@ -211,6 +211,10 @@
     .parameter "alarms"
     .parameter "music"
     .parameter "podcasts"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Landroid/os/RemoteException;
@@ -732,6 +736,24 @@
     :goto_5
     if-eqz v16, :cond_10
 
+    move-object/from16 v0, p0
+
+    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;
+
+    move-object/from16 v27, v0
+
+    move-object/from16 v0, v27
+
+    move-object/from16 v1, p1
+
+    move/from16 v2, p2
+
+    move/from16 v3, p3
+
+    move/from16 v4, p4
+
+    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$Injector;->setAllSettingsIfNotSet(Landroid/media/MediaScanner;Landroid/media/MediaScanner$FileEntry;ZZZ)V
+
     if-eqz p3, :cond_24
 
     const-string v27, "notification_sound"
--- a/framework2.jar.out/smali/android/media/MediaScanner.smali
+++ b/framework2.jar.out/smali/android/media/MediaScanner.smali
@@ -11,7 +11,8 @@
         Landroid/media/MediaScanner$MediaBulkDeleter;,
         Landroid/media/MediaScanner$MyMediaScannerClient;,
         Landroid/media/MediaScanner$PlaylistEntry;,
-        Landroid/media/MediaScanner$FileEntry;
+        Landroid/media/MediaScanner$FileEntry;,
+        Landroid/media/MediaScanner$Injector;
     }
 .end annotation
 
@@ -4135,6 +4136,18 @@
     return-void
 .end method
 
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
 .method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
     .locals 14
     .parameter "path"
--- a/framework2.jar.out/smali/android/net/Proxy.smali
+++ b/framework2.jar.out/smali/android/net/Proxy.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
+        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;,
+        Landroid/net/Proxy$Injector;
     }
 .end annotation
 
@@ -257,6 +258,9 @@
     .locals 6
     .parameter "context"
     .parameter "url"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-static {p0, p1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
@@ -287,7 +291,7 @@
     .local v1, sa:Ljava/net/InetSocketAddress;
     new-instance v2, Lorg/apache/http/HttpHost;
 
-    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
+    invoke-static {v1}, Landroid/net/Proxy$Injector;->getHostName(Ljava/net/InetSocketAddress;)Ljava/lang/String;
 
     move-result-object v3
 
--- a/framework2.jar.out/smali/android/net/http/AndroidHttpClient.smali
+++ b/framework2.jar.out/smali/android/net/http/AndroidHttpClient.smali
@@ -10,7 +10,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Landroid/net/http/AndroidHttpClient$CurlLogger;,
-        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
+        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;,
+        Landroid/net/http/AndroidHttpClient$Injector;
     }
 .end annotation
 
@@ -469,6 +470,9 @@
     .locals 9
     .parameter "userAgent"
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x0
@@ -498,7 +502,11 @@
 
     .local v3, sessionCache:Landroid/net/SSLSessionCache;
     :goto_0
-    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
+    invoke-static {p0}, Landroid/net/http/AndroidHttpClient$Injector;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v4
+
+    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
 
     new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;
 
--- a/framework2.jar.out/smali/android/net/wifi/WifiConfiguration.smali
+++ b/framework2.jar.out/smali/android/net/wifi/WifiConfiguration.smali
@@ -120,10 +120,40 @@
 
 .field public priority:I
 
+.field public private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
 
 .field public status:I
 
+.field public wapiASCert:Ljava/lang/String;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public wapiPsk:Ljava/lang/String;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public wapiPskType:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field public wapiUserCert:Ljava/lang/String;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public wepKeys:[Ljava/lang/String;
 
 .field public wepTxKeyIndex:I
@@ -187,6 +217,14 @@
 
     new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;
 
+    const-string v6, "private_key"
+
+    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
+
+    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
+
+    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;
+
     const-string v6, "eap"
 
     invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
@@ -447,6 +485,14 @@
 
     new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;
 
+    const-string v2, "private_key"
+
+    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
+
+    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
+
+    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;
+
     const-string v2, "eap"
 
     invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
--- a/framework2.jar.out/smali/android/os/StrictMode.smali
+++ b/framework2.jar.out/smali/android/os/StrictMode.smali
@@ -67,6 +67,10 @@
 
 #the value of this static final field might be set in the static constructor
 .field private static final IS_USER_BUILD:Z = false
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
 
 #the value of this static final field might be set in the static constructor
 .field private static final LOG_V:Z = false
@@ -220,6 +224,10 @@
 
     sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;
 
+    invoke-static {v1}, Landroid/os/StrictMode;->ignoreDebugBuild(Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v1
+
     invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 
     move-result v0
@@ -1394,6 +1402,29 @@
     goto :goto_0
 .end method
 
+.method static ignoreDebugBuild(Ljava/lang/String;)Ljava/lang/String;
+    .locals 1
+    .parameter "build"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const-string v0, "userdebug"
+
+    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
+
+    move-result v0
+
+    if-eqz v0, :cond_0
+
+    const-string p0, "user"
+
+    .end local p0
+    :cond_0
+    return-object p0
+.end method
+
 .method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
     .locals 4
     .parameter "klass"
--- a/framework2.jar.out/smali/android/os/Vibrator.smali
+++ b/framework2.jar.out/smali/android/os/Vibrator.smali
@@ -26,3 +26,14 @@
 
 .method public abstract vibrate([JI)V
 .end method
+
+.method public vibrateEx([B)V
+    .locals 0
+    .parameter "params"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    return-void
+.end method
--- a/framework2.jar.out/smali/android/preference/CheckBoxPreference.smali
+++ b/framework2.jar.out/smali/android/preference/CheckBoxPreference.smali
@@ -74,11 +74,44 @@
     return-void
 .end method
 
+.method private setSlidingButtonListener(Landroid/view/View;)V
+    .locals 2
+    .parameter "checkboxView"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    if-eqz p1, :cond_0
+
+    instance-of v1, p1, Lmiui/widget/SlidingButton;
+
+    if-eqz v1, :cond_0
+
+    move-object v0, p1
+
+    check-cast v0, Lmiui/widget/SlidingButton;
+
+    .local v0, slidingButton:Lmiui/widget/SlidingButton;
+    new-instance v1, Landroid/preference/CheckBoxPreference$1;
+
+    invoke-direct {v1, p0, v0}, Landroid/preference/CheckBoxPreference$1;-><init>(Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V
+
+    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangedListener(Lmiui/widget/SlidingButton$OnCheckedChangedListener;)V
+
+    .end local v0           #slidingButton:Lmiui/widget/SlidingButton;
+    :cond_0
+    return-void
+.end method
+
 
 # virtual methods
 .method protected onBindView(Landroid/view/View;)V
     .locals 3
     .parameter "view"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V
@@ -107,6 +140,8 @@
     invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->sendAccessibilityEvent(Landroid/view/View;)V
 
     :cond_0
+    invoke-direct {p0, v0}, Landroid/preference/CheckBoxPreference;->setSlidingButtonListener(Landroid/view/View;)V
+
     invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V
 
     return-void
--- a/framework2.jar.out/smali/android/preference/PreferenceScreen.smali
+++ b/framework2.jar.out/smali/android/preference/PreferenceScreen.smali
@@ -40,6 +40,9 @@
 .method private showDialog(Landroid/os/Bundle;)V
     .locals 7
     .parameter "state"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x0
@@ -93,13 +96,13 @@
     move-result-object v4
 
     .local v4, title:Ljava/lang/CharSequence;
-    new-instance v2, Landroid/app/Dialog;
+    new-instance v2, Landroid/app/PreferenceDialog;
 
     invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I
 
     move-result v5
 
-    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
+    invoke-direct {v2, v1, v5}, Landroid/app/PreferenceDialog;-><init>(Landroid/content/Context;I)V
 
     iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;
 
--- a/framework2.jar.out/smali/android/preference/RingtonePreference.smali
+++ b/framework2.jar.out/smali/android/preference/RingtonePreference.smali
@@ -258,6 +258,9 @@
 .method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
     .locals 2
     .parameter "ringtonePickerIntent"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const-string v0, "android.intent.extra.ringtone.EXISTING_URI"
@@ -311,6 +314,12 @@
 
     invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
 
+    const-string v0, "com.android.thememanager"
+
+    const-string v1, "com.android.thememanager.ThemeResourceTabActivity"
+
+    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
+
     return-void
 .end method
 
--- a/framework2.jar.out/smali/android/provider/CallLog$Calls.smali
+++ b/framework2.jar.out/smali/android/provider/CallLog$Calls.smali
@@ -74,12 +74,22 @@
 
 .field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"
 
+.field static sExtraCallLogValues:Landroid/content/ContentValues;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 
 # direct methods
 .method static constructor <clinit>()V
     .locals 3
 
     .prologue
+    const/4 v0, 0x0
+
+    sput-object v0, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;
+
     const-string v0, "content://call_log/calls"
 
     invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
@@ -137,6 +147,9 @@
     .parameter "callType"
     .parameter "start"
     .parameter "duration"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
@@ -160,11 +173,15 @@
 
     :cond_0
     :goto_0
-    new-instance v12, Landroid/content/ContentValues;
+    new-instance v2, Landroid/content/ContentValues;
 
-    const/4 v2, 0x5
+    const/4 v3, 0x5
 
-    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V
+    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V
+
+    invoke-static {v2}, Landroid/provider/CallLog$Injector;->getExtraCallLogValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
+
+    move-result-object v12
 
     .local v12, values:Landroid/content/ContentValues;
     const-string v2, "number"
@@ -380,7 +397,7 @@
     move-result-object v11
 
     .local v11, result:Landroid/net/Uri;
-    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V
+    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$Injector;->removeExpiredEntries(Landroid/content/Context;)V
 
     return-object v11
 
@@ -602,3 +619,16 @@
 
     return-void
 .end method
+
+.method public static setExtraCallLogValues(Landroid/content/ContentValues;)V
+    .locals 0
+    .parameter "extraCallLogValues"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    sput-object p0, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;
+
+    return-void
+.end method
--- a/framework2.jar.out/smali/android/provider/CallLog.smali
+++ b/framework2.jar.out/smali/android/provider/CallLog.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/provider/CallLog$Calls;
+        Landroid/provider/CallLog$Calls;,
+        Landroid/provider/CallLog$Injector;
     }
 .end annotation
 
--- a/framework2.jar.out/smali/android/text/StaticLayout.smali
+++ b/framework2.jar.out/smali/android/text/StaticLayout.smali
@@ -1139,7 +1139,9 @@
     if-le p0, v2, :cond_0
 
     :cond_a
-    move v0, v1
+    invoke-static {p0, p1}, Landroid/text/StaticLayout$Injector;->isIdeographic(CZ)Z
+
+    move-result v0
 
     goto :goto_0
 
@@ -2384,6 +2386,20 @@
     move/from16 v42, v101
 
     :cond_d
+    move/from16 v0, v94
+
+    move-object/from16 v1, v27
+
+    move/from16 v2, v106
+
+    move/from16 v3, v120
+
+    move/from16 v4, v29
+
+    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Injector;->validateCJKCharAsSpace(C[CIII)C
+
+    move-result v94
+
     const/16 v5, 0x20
 
     move/from16 v0, v94
--- a/framework2.jar.out/smali/android/text/format/DateFormat.smali
+++ b/framework2.jar.out/smali/android/text/format/DateFormat.smali
@@ -3,6 +3,14 @@
 .source "DateFormat.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Landroid/text/format/DateFormat$Injector;
+    }
+.end annotation
+
+
 # static fields
 .field public static final AM_PM:C = 'a'
 
@@ -1140,6 +1148,9 @@
 .method public static is24HourFormat(Landroid/content/Context;)Z
     .locals 9
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x0
@@ -1157,6 +1168,10 @@
     move-result-object v5
 
     .local v5, value:Ljava/lang/String;
+    invoke-static {p0, v5}, Landroid/text/format/DateFormat$Injector;->check24HourFormatForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v5
+
     if-nez v5, :cond_1
 
     invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
--- a/framework2.jar.out/smali/android/view/HapticFeedbackConstants.smali
+++ b/framework2.jar.out/smali/android/view/HapticFeedbackConstants.smali
@@ -8,6 +8,12 @@
 
 .field public static final FLAG_IGNORE_VIEW_SETTING:I = 0x1
 
+.field public static final FLAG_WHEN_ENABLED_EXPLICITLY:I = 0x4
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field public static final KEYBOARD_TAP:I = 0x3
 
 .field public static final LONG_PRESS:I = 0x0
@@ -18,6 +24,12 @@
 
 .field public static final VIRTUAL_KEY:I = 0x1
 
+.field public static final VIRTUAL_RELEASED:I = 0x2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 
 # direct methods
 .method private constructor <init>()V
--- a/framework2.jar.out/smali/android/view/View.smali
+++ b/framework2.jar.out/smali/android/view/View.smali
@@ -36,7 +36,8 @@
         Landroid/view/View$DragShadowBuilder;,
         Landroid/view/View$OnLayoutChangeListener;,
         Landroid/view/View$ListenerInfo;,
-        Landroid/view/View$TransformationInfo;
+        Landroid/view/View$TransformationInfo;,
+        Landroid/view/View$Injector;
     }
 .end annotation
 
@@ -719,6 +720,12 @@
 
 .field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;
 
+.field mHapticEnabledExplicitly:Z
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mHardwareLayer:Landroid/view/HardwareLayer;
 
 .field private mHasPerformedLongPress:Z
@@ -1887,6 +1894,9 @@
     .parameter "context"
     .parameter "attrs"
     .parameter "defStyle"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
@@ -2597,6 +2607,20 @@
     goto/16 :goto_1
 
     :pswitch_23
+    const/16 v41, 0x0
+
+    move/from16 v0, v41
+
+    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
+
+    move-result v41
+
+    move/from16 v0, v41
+
+    move-object/from16 v1, p0
+
+    iput-boolean v0, v1, Landroid/view/View;->mHapticEnabledExplicitly:Z
+
     const/16 v41, 0x1
 
     move/from16 v0, v41
@@ -22412,6 +22436,9 @@
 .method public onTouchEvent(Landroid/view/MotionEvent;)Z
     .locals 13
     .parameter "event"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/16 v12, 0x4000
@@ -22574,6 +22601,8 @@
     iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;
 
     :cond_a
+    invoke-static {p0}, Landroid/view/View$Injector;->performHapticFeedbackOnRelease(Landroid/view/View;)V
+
     iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;
 
     invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
@@ -22692,6 +22721,8 @@
 
     invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V
 
+    invoke-static {p0}, Landroid/view/View$Injector;->performHapticFeedbackOnDown(Landroid/view/View;)V
+
     goto/16 :goto_1
 
     .end local v1           #isInScrollingContainer:Z
@@ -23623,6 +23654,9 @@
     .locals 3
     .parameter "feedbackConstant"
     .parameter "flags"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x0
@@ -23636,6 +23670,12 @@
     return v0
 
     :cond_1
+    invoke-static {p0, p2}, Landroid/view/View$Injector;->isHapticEnabledExplictly(Landroid/view/View;I)Z
+
+    move-result v1
+
+    if-eqz v1, :cond_0
+
     and-int/lit8 v1, p2, 0x1
 
     if-nez v1, :cond_2
@@ -27465,6 +27505,9 @@
 .method public setHapticFeedbackEnabled(Z)V
     .locals 2
     .parameter "hapticFeedbackEnabled"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/high16 v1, 0x1000
@@ -27476,6 +27519,8 @@
     :goto_0
     invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V
 
+    iput-boolean p1, p0, Landroid/view/View;->mHapticEnabledExplicitly:Z
+
     return-void
 
     :cond_0
--- a/framework2.jar.out/smali/android/view/ViewRootImpl$ViewRootHandler.smali
+++ b/framework2.jar.out/smali/android/view/ViewRootImpl$ViewRootHandler.smali
@@ -197,6 +197,9 @@
 .method public handleMessage(Landroid/os/Message;)V
     .locals 13
     .parameter "msg"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget v1, p1, Landroid/os/Message;->what:I
@@ -307,6 +310,14 @@
     .local v12, ri:Landroid/view/ViewRootImpl$ResizedInfo;
     iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;
 
+    invoke-static {v1, v12, p1}, Landroid/view/ViewRootImpl$Injector;->tryToSkipResizedMsg(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$ResizedInfo;Landroid/os/Message;)Z
+
+    move-result v1
+
+    if-nez v1, :cond_0
+
+    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;
+
     iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;
 
     invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
--- a/framework2.jar.out/smali/android/view/ViewRootImpl.smali
+++ b/framework2.jar.out/smali/android/view/ViewRootImpl.smali
@@ -27,7 +27,8 @@
         Landroid/view/ViewRootImpl$QueuedInputEvent;,
         Landroid/view/ViewRootImpl$ViewRootHandler;,
         Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
-        Landroid/view/ViewRootImpl$ResizedInfo;
+        Landroid/view/ViewRootImpl$ResizedInfo;,
+        Landroid/view/ViewRootImpl$Injector;
     }
 .end annotation
 
@@ -374,6 +375,12 @@
 
 .field mSeq:I
 
+.field mSkipResizedMsg:Z
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field mSoftInputMode:I
 
 .field mStopped:Z
@@ -513,6 +520,8 @@
 
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 
+    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z
+
     const-wide/16 v2, 0x0
 
     iput-wide v2, p0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J
@@ -14068,6 +14077,20 @@
     return v0
 .end method
 
+.method public skipNextResizedMsg()V
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v0, 0x1
+
+    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z
+
+    return-void
+.end method
+
 .method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
     .locals 1
     .parameter "originalView"
--- a/framework2.jar.out/smali/android/view/WindowOrientationListener.smali
+++ b/framework2.jar.out/smali/android/view/WindowOrientationListener.smali
@@ -55,9 +55,12 @@
 .method public constructor <init>(Landroid/content/Context;)V
     .locals 1
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    const/4 v0, 0x2
+    const/4 v0, 0x3
 
     invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V
 
--- a/framework2.jar.out/smali/android/widget/AbsListView.smali
+++ b/framework2.jar.out/smali/android/widget/AbsListView.smali
@@ -29,7 +29,8 @@
         Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
         Landroid/widget/AbsListView$SavedState;,
         Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
-        Landroid/widget/AbsListView$OnScrollListener;
+        Landroid/widget/AbsListView$OnScrollListener;,
+        Landroid/widget/AbsListView$Injector;
     }
 .end annotation
 
@@ -304,6 +305,18 @@
 
 .field private mTouchModeReset:Ljava/lang/Runnable;
 
+.field mTouchPaddingLeft:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field mTouchPaddingRight:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mTouchSlop:I
 
 .field private mTranscriptMode:I
@@ -344,6 +357,10 @@
 
     invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V
 
+    iput v2, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I
+
+    iput v2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I
+
     iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I
 
     iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I
@@ -458,6 +475,14 @@
 
     const/4 v9, 0x0
 
+    iput v9, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I
+
+    const/4 v9, 0x0
+
+    iput v9, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I
+
+    const/4 v9, 0x0
+
     iput v9, p0, Landroid/widget/AbsListView;->mChoiceMode:I
 
     const/4 v9, 0x0
@@ -8251,8 +8276,22 @@
 .method public onTouchEvent(Landroid/view/MotionEvent;)Z
     .locals 29
     .parameter "ev"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$Injector;->isOutOfTouchRange(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z
+
+    move-result v26
+
+    if-eqz v26, :cond_ff
+
+    const/16 v26, 0x1
+
+    return v26
+
+    :cond_ff
     invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z
 
     move-result v26
@@ -13091,6 +13130,22 @@
 
     return-void
 .end method
+
+.method public setTouchPadding(II)V
+    .locals 0
+    .parameter "paddingLeft"
+    .parameter "paddingRight"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput p1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I
+
+    iput p2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I
+
+    return-void
+.end method
 
 .method public setTranscriptMode(I)V
     .locals 0
--- a/framework2.jar.out/smali/android/widget/DatePicker.smali
+++ b/framework2.jar.out/smali/android/widget/DatePicker.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Landroid/widget/DatePicker$SavedState;,
-        Landroid/widget/DatePicker$OnDateChangedListener;
+        Landroid/widget/DatePicker$OnDateChangedListener;,
+        Landroid/widget/DatePicker$OnDateChangeListener;
     }
 .end annotation
 
@@ -112,6 +113,9 @@
     .parameter "context"
     .parameter "attrs"
     .parameter "defStyle"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
@@ -240,6 +244,14 @@
     invoke-direct {v10, v0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V
 
     .local v10, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
+    new-instance v10, Landroid/widget/DatePicker$OnDateChangeListener;
+
+    .end local v10           #onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
+    move-object/from16 v0, p0
+
+    invoke-direct {v10, v0}, Landroid/widget/DatePicker$OnDateChangeListener;-><init>(Landroid/widget/DatePicker;)V
+
+    .restart local v10       #onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
     const v13, 0x102026e
 
     move-object/from16 v0, p0
--- a/framework2.jar.out/smali/android/widget/QuickContactBadge$QueryHandler.smali
+++ b/framework2.jar.out/smali/android/widget/QuickContactBadge$QueryHandler.smali
@@ -39,6 +39,9 @@
     .parameter "token"
     .parameter "cookie"
     .parameter "cursor"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v5, 0x0
@@ -70,6 +73,12 @@
     #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
     invoke-static {v7}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V
 
+    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;
+
+    invoke-static {v7, v6, v5, v2}, Landroid/widget/QuickContactBadge$Injector;->showQuickContactForStranger(Landroid/widget/QuickContactBadge;ZLandroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
+
+    move-result-object v2
+
     if-eqz v6, :cond_4
 
     if-eqz v5, :cond_4
--- a/framework2.jar.out/smali/android/widget/QuickContactBadge.smali
+++ b/framework2.jar.out/smali/android/widget/QuickContactBadge.smali
@@ -9,7 +9,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/widget/QuickContactBadge$QueryHandler;
+        Landroid/widget/QuickContactBadge$QueryHandler;,
+        Landroid/widget/QuickContactBadge$Injector;
     }
 .end annotation
 
@@ -461,11 +462,14 @@
 .end method
 
 .method protected onDraw(Landroid/graphics/Canvas;)V
-    .locals 5
+    .locals 6
     .parameter "canvas"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    const/4 v4, 0x0
+    const/4 v5, 0x0
 
     invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
 
@@ -506,11 +510,19 @@
 
     move-result v2
 
+    iget v3, p0, Landroid/widget/QuickContactBadge;->mPaddingRight:I
+
+    sub-int/2addr v2, v3
+
     invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I
 
     move-result v3
 
-    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
+    iget v4, p0, Landroid/widget/QuickContactBadge;->mPaddingBottom:I
+
+    sub-int/2addr v3, v4
+
+    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
 
     iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I
 
--- a/framework2.jar.out/smali/android/widget/RemoteViews.smali
+++ b/framework2.jar.out/smali/android/widget/RemoteViews.smali
@@ -71,6 +71,12 @@
 
 .field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;
 
+.field mDefaultTheme:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mIsRoot:Z
 
 .field private mIsWidgetCollectionChild:Z
@@ -1078,6 +1084,9 @@
     .locals 1
     .parameter "context"
     .parameter "parent"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;
@@ -1106,6 +1115,10 @@
     move-result-object v0
 
     .local v0, c:Landroid/content/Context;
+    iget v4, p0, Landroid/widget/RemoteViews;->mDefaultTheme:I
+
+    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V
+
     const-string v4, "layout_inflater"
 
     invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
@@ -1536,6 +1549,19 @@
 
     return-void
 .end method
+
+.method public setDefaultTheme(I)V
+    .locals 0
+    .parameter "id"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput p1, p0, Landroid/widget/RemoteViews;->mDefaultTheme:I
+
+    return-void
+.end method
 
 .method public setDisplayedChild(II)V
     .locals 1
--- a/framework2.jar.out/smali/android/widget/SuggestionsAdapter.smali
+++ b/framework2.jar.out/smali/android/widget/SuggestionsAdapter.smali
@@ -9,7 +9,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Landroid/widget/SuggestionsAdapter$ChildViewCache;
+        Landroid/widget/SuggestionsAdapter$ChildViewCache;,
+        Landroid/widget/SuggestionsAdapter$Injector;
     }
 .end annotation
 
@@ -277,6 +278,9 @@
 .method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
     .locals 10
     .parameter "component"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v6, 0x0
@@ -338,9 +342,7 @@
     move-result-object v4
 
     .local v4, pkg:Ljava/lang/String;
-    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
-
-    invoke-virtual {v5, v4, v3, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
+    invoke-static {v5, v4, v3, v0}, Landroid/widget/SuggestionsAdapter$Injector;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v1
 
--- a/framework2.jar.out/smali/android/widget/TimePicker.smali
+++ b/framework2.jar.out/smali/android/widget/TimePicker.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Landroid/widget/TimePicker$SavedState;,
-        Landroid/widget/TimePicker$OnTimeChangedListener;
+        Landroid/widget/TimePicker$OnTimeChangedListener;,
+        Landroid/widget/TimePicker$OnMinuteChangeListener;
     }
 .end annotation
 
@@ -96,6 +97,9 @@
     .parameter "context"
     .parameter "attrs"
     .parameter "defStyle"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v11, 0x5
@@ -240,6 +244,14 @@
 
     iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
 
+    new-instance v5, Landroid/widget/TimePicker$OnMinuteChangeListener;
+
+    invoke-direct {v5, p0}, Landroid/widget/TimePicker$OnMinuteChangeListener;-><init>(Landroid/widget/TimePicker;)V
+
+    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
+
+    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
+
     invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;
 
     move-result-object v4
@@ -827,6 +839,30 @@
 
 
 # virtual methods
+.method callOnTimeChanged()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V
+
+    return-void
+.end method
+
+.method callUpdateInputState()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V
+
+    return-void
+.end method
+
 .method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
     .locals 1
     .parameter "event"
--- a/framework2.jar.out/smali/android/widget/Toast$TN.smali
+++ b/framework2.jar.out/smali/android/widget/Toast$TN.smali
@@ -172,6 +172,18 @@
 
 
 # virtual methods
+.method getParams()Landroid/view/WindowManager$LayoutParams;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;
+
+    return-object v0
+.end method
+
 .method public handleHide()V
     .locals 2
 
--- a/framework2.jar.out/smali/android/widget/Toast.smali
+++ b/framework2.jar.out/smali/android/widget/Toast.smali
@@ -391,6 +391,25 @@
     return-void
 .end method
 
+.method public setType(I)V
+    .locals 1
+    .parameter "type"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;
+
+    invoke-virtual {v0}, Landroid/widget/Toast$TN;->getParams()Landroid/view/WindowManager$LayoutParams;
+
+    move-result-object v0
+
+    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
+
+    return-void
+.end method
+
 .method public setView(Landroid/view/View;)V
     .locals 0
     .parameter "view"
--- a/framework2.jar.out/smali/com/android/internal/app/LocalePicker.smali
+++ b/framework2.jar.out/smali/com/android/internal/app/LocalePicker.smali
@@ -64,6 +64,10 @@
     .parameter "context"
     .parameter "layoutId"
     .parameter "fieldId"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Signature;
         value = {
             "(",
@@ -385,6 +389,8 @@
     :cond_4
     invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
 
+    invoke-static {v12}, Lmiui/util/ExtraLocalePicker;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
+
     new-instance v20, Landroid/widget/ArrayAdapter;
 
     move-object/from16 v0, v20
--- a/framework2.jar.out/smali/com/android/internal/app/ResolverActivity$ResolveListAdapter.smali
+++ b/framework2.jar.out/smali/com/android/internal/app/ResolverActivity$ResolveListAdapter.smali
@@ -135,6 +135,9 @@
     .locals 5
     .parameter "view"
     .parameter "info"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const v3, 0x1020014
@@ -194,7 +197,7 @@
 
     iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;
 
-    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
+    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity$Injector;->loadIconForResolveInfo(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
 
     move-result-object v3
 
--- a/framework2.jar.out/smali/com/android/internal/app/ResolverActivity.smali
+++ b/framework2.jar.out/smali/com/android/internal/app/ResolverActivity.smali
@@ -11,7 +11,8 @@
     value = {
         Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
         Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
-        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
+        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
+        Lcom/android/internal/app/ResolverActivity$Injector;
     }
 .end annotation
 
--- a/framework2.jar.out/smali/com/android/internal/content/PackageMonitor.smali
+++ b/framework2.jar.out/smali/com/android/internal/content/PackageMonitor.smali
@@ -1114,6 +1114,22 @@
     goto :goto_0
 .end method
 
+.method public register(Landroid/content/Context;Z)V
+    .locals 1
+    .parameter "context"
+    .parameter "externalStorage"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v0, 0x0
+
+    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V
+
+    return-void
+.end method
+
 .method public unregister()V
     .locals 2
 
--- a/framework2.jar.out/smali/com/android/internal/os/RuntimeInit.smali
+++ b/framework2.jar.out/smali/com/android/internal/os/RuntimeInit.smali
@@ -7,7 +7,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/os/RuntimeInit$Arguments;,
-        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
+        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;,
+        Lcom/android/internal/os/RuntimeInit$Injector;
     }
 .end annotation
 
@@ -137,6 +138,20 @@
     goto :goto_0
 .end method
 
+.method public static callGetDefaultUserAgent()Ljava/lang/String;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
 .method private static final commonInit()V
     .locals 4
 
@@ -220,6 +235,9 @@
 
 .method private static getDefaultUserAgent()Ljava/lang/String;
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     new-instance v2, Ljava/lang/StringBuilder;
@@ -285,7 +303,11 @@
 
     .end local v1           #model:Ljava/lang/String;
     :cond_0
-    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;
+    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;
+
+    invoke-static {v2, v4}, Lcom/android/internal/os/RuntimeInit$Injector;->appendMiuiVersion(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
+
+    move-result-object v0
 
     .local v0, id:Ljava/lang/String;
     invoke-virtual {v0}, Ljava/lang/String;->length()I
--- a/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuItemView.smali
+++ b/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuItemView.smali
@@ -28,6 +28,12 @@
 
 .field private mSavedPaddingLeft:I
 
+.field mSavedPaddingRight:I
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mTitle:Ljava/lang/CharSequence;
 
 
@@ -109,6 +115,9 @@
 
 .method private updateTextButtonVisibility()V
     .locals 4
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x1
@@ -133,6 +142,14 @@
 
     iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;
 
+    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isForceShowText()Z
+
+    move-result v3
+
+    if-nez v3, :cond_0
+
+    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;
+
     invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z
 
     move-result v3
@@ -286,6 +303,131 @@
     goto :goto_0
 .end method
 
+.method miuiOnMeasure(II)Z
+    .locals 8
+    .parameter "widthMeasureSpec"
+    .parameter "heightMeasureSpec"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
+
+    if-ltz v4, :cond_0
+
+    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I
+
+    move-result v5
+
+    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingRight:I
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I
+
+    move-result v7
+
+    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V
+
+    :cond_0
+    const/4 v4, 0x0
+
+    invoke-super {p0, v4, p2}, Landroid/widget/TextView;->onMeasure(II)V
+
+    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
+
+    move-result v4
+
+    if-eqz v4, :cond_1
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I
+
+    move-result v0
+
+    .local v0, contentWidth:I
+    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z
+
+    move-result v4
+
+    if-nez v4, :cond_2
+
+    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
+
+    if-eqz v4, :cond_2
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I
+
+    move-result v3
+
+    .local v3, w:I
+    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
+
+    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
+
+    move-result v1
+
+    .local v1, dw:I
+    sub-int v4, v3, v1
+
+    div-int/lit8 v4, v4, 0x2
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I
+
+    move-result v5
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I
+
+    move-result v6
+
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I
+
+    move-result v7
+
+    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V
+
+    .end local v0           #contentWidth:I
+    .end local v1           #dw:I
+    .end local v3           #w:I
+    :cond_1
+    :goto_0
+    const/4 v4, 0x1
+
+    return v4
+
+    .restart local v0       #contentWidth:I
+    :cond_2
+    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I
+
+    move-result v3
+
+    .restart local v3       #w:I
+    sub-int v4, v3, v0
+
+    div-int/lit8 v2, v4, 0x2
+
+    .local v2, extraWidth:I
+    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingLeft:I
+
+    add-int/2addr v4, v2
+
+    iget v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingTop:I
+
+    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingRight:I
+
+    add-int/2addr v6, v2
+
+    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingBottom:I
+
+    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V
+
+    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
+
+    goto :goto_0
+.end method
+
 .method public needsDividerAfter()Z
     .locals 1
 
@@ -459,10 +601,22 @@
     .locals 12
     .parameter "widthMeasureSpec"
     .parameter "heightMeasureSpec"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/high16 v11, 0x4000
 
+    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->miuiOnMeasure(II)Z
+
+    move-result v7
+
+    if-eqz v7, :cond_ff
+
+    return-void
+
+    :cond_ff
     invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z
 
     move-result v3
@@ -691,10 +845,15 @@
     .parameter "t"
     .parameter "r"
     .parameter "b"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
 
+    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingRight:I
+
     invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V
 
     return-void
--- a/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuPresenter.smali
+++ b/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuPresenter.smali
@@ -15,7 +15,8 @@
         Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
         Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
         Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
-        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
+        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;,
+        Lcom/android/internal/view/menu/ActionMenuPresenter$Injector;
     }
 .end annotation
 
@@ -1047,6 +1048,9 @@
     .locals 8
     .parameter "context"
     .parameter "menu"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v7, 0x0
@@ -1069,7 +1073,7 @@
 
     if-nez v4, :cond_0
 
-    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z
+    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$Injector;->showsOverflowMenuButton(Lcom/android/internal/view/ActionBarPolicy;)Z
 
     move-result v4
 
--- a/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuView.smali
+++ b/framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuView.smali
@@ -11,7 +11,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
-        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
+        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;,
+        Lcom/android/internal/view/menu/ActionMenuView$Injector;
     }
 .end annotation
 
@@ -1821,6 +1822,9 @@
     .parameter "top"
     .parameter "right"
     .parameter "bottom"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object/from16 v0, p0
@@ -2098,6 +2102,18 @@
 
     invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V
 
+    move-object/from16 v0, v25
+
+    move/from16 v1, p2
+
+    move/from16 v2, v24
+
+    move/from16 v3, p4
+
+    move/from16 v4, p5
+
+    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuView$Injector;->layout(Landroid/view/View;IIII)V
+
     goto/16 :goto_0
 
     .end local v9           #height:I
--- a/framework2.jar.out/smali/com/android/internal/view/menu/MenuItemImpl.smali
+++ b/framework2.jar.out/smali/com/android/internal/view/menu/MenuItemImpl.smali
@@ -895,6 +895,32 @@
     goto :goto_0
 .end method
 
+.method public isForceShowText()Z
+    .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I
+
+    const/high16 v1, -0x8000
+
+    and-int/2addr v0, v1
+
+    if-eqz v0, :cond_0
+
+    const/4 v0, 0x1
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
 .method public isVisible()Z
     .locals 3
 
--- a/framework2.jar.out/smali/com/android/internal/widget/ActionBarContainer.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/ActionBarContainer.smali
@@ -3,6 +3,14 @@
 .source "ActionBarContainer.java"
 
 
+# annotations
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/internal/widget/ActionBarContainer$Injector;
+    }
+.end annotation
+
+
 # instance fields
 .field private mActionBarView:Lcom/android/internal/widget/ActionBarView;
 
@@ -130,6 +138,42 @@
 
 
 # virtual methods
+.method getActionBarBackground()Landroid/graphics/drawable/Drawable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
+
+    return-object v0
+.end method
+
+.method getActionBarView()Lcom/android/internal/widget/ActionBarView;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;
+
+    return-object v0
+.end method
+
+.method getStackedBackground()Landroid/graphics/drawable/Drawable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
+
+    return-object v0
+.end method
+
 .method public getTabContainer()Landroid/view/View;
     .locals 1
 
@@ -265,6 +309,9 @@
     .parameter "t"
     .parameter "r"
     .parameter "b"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
@@ -525,7 +572,7 @@
 
     move-result v12
 
-    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
+    invoke-static {p0, v9, v10, v11, v12}, Lcom/android/internal/widget/ActionBarContainer$Injector;->setBounds(Lcom/android/internal/widget/ActionBarContainer;IIII)V
 
     const/4 v6, 0x1
 
@@ -656,6 +703,19 @@
     return v0
 .end method
 
+.method setIsStacked(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z
+
+    return-void
+.end method
+
 .method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
     .locals 0
     .parameter "bg"
--- a/framework2.jar.out/smali/com/android/internal/widget/ActionBarView$HomeView.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/ActionBarView$HomeView.smali
@@ -15,6 +15,18 @@
 
 
 # instance fields
+.field mCompactMode:Z
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
+.field mIconDrawable:Landroid/graphics/drawable/Drawable;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mIconView:Landroid/widget/ImageView;
 
 .field private mUpView:Landroid/view/View;
@@ -72,13 +84,28 @@
     return v0
 .end method
 
+.method getIconView()Landroid/widget/ImageView;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;
+
+    return-object v0
+.end method
+
 .method public getLeftOffset()I
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;
 
-    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
+    invoke-static {p0, v0}, Lcom/android/internal/widget/ActionBarView$Injector;->getUpViewVisibility(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/view/View;)I
 
     move-result v0
 
@@ -97,8 +124,23 @@
     goto :goto_0
 .end method
 
+.method getUpView()Landroid/view/View;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;
+
+    return-object v0
+.end method
+
 .method protected onFinishInflate()V
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const v0, 0x102023b
@@ -119,6 +161,8 @@
 
     iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;
 
+    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->switchToCompactMode(Lcom/android/internal/widget/ActionBarView$HomeView;)V
+
     return-void
 .end method
 
@@ -544,12 +588,17 @@
 
     invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
 
+    invoke-static {p0, p1}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/graphics/drawable/Drawable;)V
+
     return-void
 .end method
 
 .method public setUp(Z)V
     .locals 2
     .parameter "isUp"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;
@@ -561,6 +610,8 @@
     :goto_0
     invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
 
+    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V
+
     return-void
 
     :cond_0
--- a/framework2.jar.out/smali/com/android/internal/widget/ActionBarView.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/ActionBarView.smali
@@ -8,7 +8,8 @@
     value = {
         Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
         Lcom/android/internal/widget/ActionBarView$HomeView;,
-        Lcom/android/internal/widget/ActionBarView$SavedState;
+        Lcom/android/internal/widget/ActionBarView$SavedState;,
+        Lcom/android/internal/widget/ActionBarView$Injector;
     }
 .end annotation
 
--- a/framework2.jar.out/smali/com/android/internal/widget/LockPatternUtils.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/LockPatternUtils.smali
@@ -84,6 +84,32 @@
     return-void
 .end method
 
+.method public static callPatternToHash(Ljava/util/List;)[B
+    .locals 1
+    .parameter
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .annotation system Ldalvik/annotation/Signature;
+        value = {
+            "(",
+            "Ljava/util/List",
+            "<",
+            "Lcom/android/internal/widget/LockPatternView$Cell;",
+            ">;)[B"
+        }
+    .end annotation
+
+    .prologue
+    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
+    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
 .method public static computePasswordQuality(Ljava/lang/String;)I
     .locals 5
     .parameter "password"
--- a/framework2.jar.out/smali/com/android/internal/widget/LockSettingsService.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/LockSettingsService.smali
@@ -6,7 +6,8 @@
 # annotations
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
-        Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;
+        Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;,
+        Lcom/android/internal/widget/LockSettingsService$Injector;
     }
 .end annotation
 
@@ -857,6 +858,10 @@
     .locals 9
     .parameter "hash"
     .parameter "userId"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
     .annotation system Ldalvik/annotation/Throws;
         value = {
             Landroid/os/RemoteException;
@@ -912,7 +917,11 @@
     .restart local v3       #raf:Ljava/io/RandomAccessFile;
     .restart local v4       #stored:[B
     :cond_0
-    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
+    invoke-static {v4, p1}, Lcom/android/internal/widget/LockSettingsService$Injector;->passwordToHash([B[B)[B
+
+    move-result-object v6
+
+    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
     :try_end_0
     .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
     .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
--- a/framework2.jar.out/smali/com/android/internal/widget/ScrollingTabContainerView.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/ScrollingTabContainerView.smali
@@ -176,9 +176,12 @@
 
 .method private createTabLayout()Landroid/widget/LinearLayout;
     .locals 4
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    new-instance v0, Landroid/widget/LinearLayout;
+    new-instance v0, Lcom/android/internal/widget/MiuiTabLayout;
 
     invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
 
@@ -188,7 +191,7 @@
 
     const v3, 0x10102f4
 
-    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
+    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
 
     .local v0, tabLayout:Landroid/widget/LinearLayout;
     const/4 v1, 0x1
--- a/framework2.jar.out/smali/com/android/internal/widget/SizeAdaptiveLayout.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/SizeAdaptiveLayout.smali
@@ -429,7 +429,7 @@
     :cond_1
     iget-object v3, p0, Lcom/android/internal/widget/SizeAdaptiveLayout;->mModestyPanel:Landroid/view/View;
 
-    const/high16 v4, -0x100
+    const/high16 v4, 0x0
 
     invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V
 
--- a/framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle.smali
@@ -4,12 +4,16 @@
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x2
+    accessFlags = 0x0
     name = "AnimationBundle"
 .end annotation
 
--- a/framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView.smali
+++ b/framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView.smali
@@ -562,7 +562,7 @@
     .parameter "x3"
 
     .prologue
-    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     return-void
 .end method
@@ -616,7 +616,7 @@
     .parameter "x2"
 
     .prologue
-    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
+    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
 
     return-void
 .end method
@@ -984,7 +984,7 @@
     return v0
 .end method
 
-.method private doFinish()V
+.method doFinish()V
     .locals 7
 
     .prologue
@@ -1045,7 +1045,7 @@
 
     invoke-direct {p0, v6, v3, v5, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
 
-    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
+    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
 
     goto :goto_1
 .end method
@@ -1428,7 +1428,7 @@
 
     move-result v2
 
-    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     return-void
 .end method
@@ -1450,7 +1450,7 @@
     .local v1, eventY:F
     const/4 v2, 0x1
 
-    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z
 
@@ -1471,7 +1471,7 @@
     goto :goto_0
 .end method
 
-.method private handleMove(Landroid/view/MotionEvent;)V
+.method handleMove(Landroid/view/MotionEvent;)V
     .locals 35
     .parameter "event"
 
@@ -1893,7 +1893,7 @@
 
     move/from16 v3, v30
 
-    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     move-object/from16 v0, p0
 
@@ -2052,7 +2052,7 @@
 
     move/from16 v3, v30
 
-    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     move-object/from16 v0, p0
 
@@ -2080,7 +2080,7 @@
 
     move-result v2
 
-    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     return-void
 .end method
@@ -2214,7 +2214,7 @@
     return-void
 .end method
 
-.method private hideTargets(ZZ)V
+.method hideTargets(ZZ)V
     .locals 17
     .parameter "animate"
     .parameter "expanded"
@@ -3116,7 +3116,7 @@
     return-void
 .end method
 
-.method private showTargets(Z)V
+.method showTargets(Z)V
     .locals 12
     .parameter "animate"
 
@@ -3666,7 +3666,7 @@
     return-void
 .end method
 
-.method private switchToState(IFF)V
+.method switchToState(IFF)V
     .locals 6
     .parameter "state"
     .parameter "x"
@@ -3720,7 +3720,7 @@
 
     invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V
 
-    invoke-direct {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showTargets(Z)V
+    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showTargets(Z)V
 
     const/16 v0, 0xc8
 
@@ -3763,7 +3763,7 @@
     goto :goto_0
 
     :pswitch_5
-    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->doFinish()V
+    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->doFinish()V
 
     goto :goto_0
 
@@ -3817,7 +3817,7 @@
     :cond_0
     const/4 v3, 0x2
 
-    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
+    invoke-virtual {p0, v3, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
 
     invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V
 
@@ -4379,7 +4379,7 @@
 
     const/4 v7, 0x0
 
-    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
+    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
 
     const/4 v6, 0x0
 
@@ -4480,21 +4480,21 @@
     :pswitch_0
     invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V
 
-    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
+    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
 
     const/4 v1, 0x1
 
     goto :goto_0
 
     :pswitch_1
-    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
+    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
 
     const/4 v1, 0x1
 
     goto :goto_0
 
     :pswitch_2
-    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
+    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
 
     invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V
 
@@ -4503,7 +4503,7 @@
     goto :goto_0
 
     :pswitch_3
-    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
+    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V
 
     invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V
 
@@ -4768,7 +4768,7 @@
 
     invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V
 
-    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
+    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
 
     const/high16 v0, 0x3f80
 
@@ -4984,3 +4984,298 @@
 
     return-void
 .end method
+
+.method callAnnounceTargets()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceTargets()V
+
+    return-void
+.end method
+
+.method callDeactivateTargets()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V
+
+    return-void
+.end method
+
+.method callDispatchTriggerEvent(I)V
+    .locals 0
+    .parameter "whichTarget"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V
+
+    return-void
+.end method
+
+.method callGetTargetDescription(I)Ljava/lang/String;
+    .locals 1
+    .parameter "index"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
+.method callSetGrabbedState(I)V
+    .locals 0
+    .parameter "newState"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V
+
+    return-void
+.end method
+
+.method callVibrate()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V
+
+    return-void
+.end method
+
+.method getActiveTarget()I
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I
+
+    return v0
+.end method
+
+.method getDragging()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z
+
+    return v0
+.end method
+
+.method getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
+
+    return-object v0
+.end method
+
+.method getOuterRadius()F
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F
+
+    return v0
+.end method
+
+.method getOuterRing()Lcom/android/internal/widget/multiwaveview/TargetDrawable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
+
+    return-object v0
+.end method
+
+.method getResetListener()Landroid/animation/Animator$AnimatorListener;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;
+
+    return-object v0
+.end method
+
+.method getResetListenerWithPing()Landroid/animation/Animator$AnimatorListener;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;
+
+    return-object v0
+.end method
+
+.method getSnapMargin()F
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F
+
+    return v0
+.end method
+
+.method getTargetAnimations()Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
+
+    return-object v0
+.end method
+
+.method getTargetDrawables()Ljava/util/ArrayList;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .annotation system Ldalvik/annotation/Signature;
+        value = {
+            "()",
+            "Ljava/util/ArrayList",
+            "<",
+            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
+            ">;"
+        }
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
+
+    return-object v0
+.end method
+
+.method getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
+
+    return-object v0
+.end method
+
+.method getWaveCenterX()F
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F
+
+    return v0
+.end method
+
+.method getWaveCenterY()F
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F
+
+    return v0
+.end method
+
+.method setActiveTarget(I)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I
+
+    return-void
+.end method
+
+.method setAnimatingTargets(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z
+
+    return-void
+.end method
+
+.method setDragging(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z
+
+    return-void
+.end method
+
+.method setGlowRadius(F)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F
+
+    return-void
+.end method
-- 
1.7.5.4


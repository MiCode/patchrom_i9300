From 55ebbc150d411bf931890eb6d92d2c273626568f Mon Sep 17 00:00:00 2001
From: wangwenjun <wangwenjun@xiaomi.com>
Date: Tue, 23 Oct 2012 16:19:27 +0800
Subject: [PATCH] add miui hook into policy

Change-Id: Ib8fddc887668974a7aeb3132e21ad15f2fbcc011
---
 .../impl/KeyguardUpdateMonitor$SimArgs.smali       |    8 +-
 .../policy/impl/KeyguardUpdateMonitor.smali        |   12 +-
 .../internal/policy/impl/KeyguardViewManager.smali |   67 +++++-
 .../policy/impl/KeyguardViewMediator.smali         |   66 +++++-
 .../policy/impl/LockPatternKeyguardView$3.smali    |    4 +-
 .../policy/impl/LockPatternKeyguardView.smali      |  237 +++++++++++++++++++-
 .../policy/impl/PasswordUnlockScreen.smali         |  144 +++++++++++-
 .../policy/impl/PhoneFallbackEventHandler.smali    |   15 ++
 .../policy/impl/PhoneWindow$DecorView.smali        |   33 +++-
 .../android/internal/policy/impl/PhoneWindow.smali |   17 ++-
 .../policy/impl/PhoneWindowManager$17$1.smali      |    5 +-
 .../policy/impl/PhoneWindowManager$17.smali        |   15 +-
 .../internal/policy/impl/PhoneWindowManager.smali  |  121 ++++++++---
 .../com/android/internal/policy/impl/Policy.smali  |   14 +-
 14 files changed, 684 insertions(+), 74 deletions(-)

--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs.smali
@@ -4,6 +4,10 @@
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
 .end annotation
@@ -192,7 +196,9 @@
 
     .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
     :cond_7
-    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;
+    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$Injector;->getIccCardState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
+
+    move-result-object v2
 
     .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
     goto :goto_0
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardUpdateMonitor.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardUpdateMonitor.smali
@@ -10,7 +10,8 @@
         Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;,
         Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
         Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
-        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
+        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;,
+        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$Injector;
     }
 .end annotation
 
@@ -866,6 +867,9 @@
 .method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
     .locals 3
     .parameter "status"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x1
@@ -881,6 +885,12 @@
     if-ne v1, v2, :cond_1
 
     :cond_0
+    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z
+
+    move-result v1
+
+    if-nez v1, :cond_1
+
     :goto_0
     return v0
 
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardViewManager.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardViewManager.smali
@@ -10,7 +10,8 @@
 .annotation system Ldalvik/annotation/MemberClasses;
     value = {
         Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;,
-        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;
+        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;,
+        Lcom/android/internal/policy/impl/KeyguardViewManager$Injector;
     }
 .end annotation
 
@@ -56,12 +57,15 @@
 .end method
 
 .method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
-    .locals 1
+    .locals 2
     .parameter "context"
     .parameter "viewManager"
     .parameter "callback"
     .parameter "keyguardViewProperties"
     .parameter "updateMonitor"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v0, 0x0
@@ -72,7 +76,13 @@
 
     iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z
 
-    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
+    new-instance v0, Landroid/view/ContextThemeWrapper;
+
+    const v1, 0x103006b
+
+    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
+
+    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
 
     iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;
 
@@ -97,6 +107,42 @@
 
 
 # virtual methods
+.method getKeyguardView()Lcom/android/internal/policy/impl/KeyguardViewBase;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;
+
+    return-object v0
+.end method
+
+.method getKeyguardViewProperties()Lcom/android/internal/policy/impl/KeyguardViewProperties;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;
+
+    return-object v0
+.end method
+
+.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
+
+    return-object v0
+.end method
+
 .method public declared-synchronized hide()V
     .locals 5
 
@@ -378,6 +424,9 @@
 
 .method public declared-synchronized show()V
     .locals 11
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/high16 v10, 0x100
@@ -436,7 +485,7 @@
     const/4 v8, -0x1
 
     .local v8, stretch:I
-    const v4, 0x4100800
+    const v4, 0x4100900
 
     .local v4, flags:I
     iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z
@@ -525,6 +574,10 @@
     iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
 
     :cond_4
+    const/4 v1, 0x1
+
+    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
+
     iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
 
     or-int/lit8 v1, v1, 0x8
@@ -551,7 +604,7 @@
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
 
-    const/4 v2, 0x2
+    const/4 v2, 0x4
 
     iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
 
@@ -654,6 +707,8 @@
 
     invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V
 
+    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$Injector;->updateDisplayDesktopFlag(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
+
     iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;
 
     iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
@@ -683,7 +738,7 @@
     :try_start_1
     iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
 
-    const/4 v2, 0x5
+    const/4 v2, 0x1
 
     iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
     :try_end_1
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
@@ -147,6 +147,9 @@
     .parameter "context"
     .parameter "callback"
     .parameter "powerManager"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
@@ -328,13 +331,13 @@
 
     iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
 
-    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
+    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
 
     iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
 
-    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
+    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
 
     iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;
 
@@ -787,6 +790,8 @@
     invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
 
     :goto_0
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->postAdjustStatusBarLocked()V
+
     return-void
 
     :cond_1
@@ -1296,6 +1301,9 @@
 
 .method private handleShow()V
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     monitor-enter p0
@@ -1311,6 +1319,10 @@
     return-void
 
     :cond_0
+    const/4 v0, 0x1
+
+    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V
+
     iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
 
     invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V
@@ -1340,11 +1352,7 @@
     .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
 
     :goto_1
-    const/4 v0, 0x1
-
     :try_start_2
-    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V
-
     iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;
 
     invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
@@ -1858,6 +1866,18 @@
 
 
 # virtual methods
+.method callNotifyScreenOffLocked()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V
+
+    return-void
+.end method
+
 .method public doKeyguardTimeout()V
     .locals 3
 
@@ -1882,6 +1902,30 @@
     return-void
 .end method
 
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
+.method getStatusBarManager()Landroid/app/StatusBarManager;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;
+
+    return-object v0
+.end method
+
 .method public isInputRestricted()Z
     .locals 1
 
@@ -2753,6 +2797,16 @@
     throw v1
 .end method
 
+.method postAdjustStatusBarLocked()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    return-void
+.end method
+
 .method public setHidden(Z)V
     .locals 5
     .parameter "isHidden"
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/LockPatternKeyguardView$3.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/LockPatternKeyguardView$3.smali
@@ -7,8 +7,8 @@
 
 
 # annotations
-.annotation system Ldalvik/annotation/EnclosingClass;
-    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
+.annotation system Ldalvik/annotation/EnclosingMethod;
+    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/LockPatternKeyguardView.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/LockPatternKeyguardView.smali
@@ -10,7 +10,8 @@
         Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
         Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
         Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
-        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;,
+        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Injector;
     }
 .end annotation
 
@@ -100,7 +101,7 @@
 .end method
 
 .method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
-    .locals 3
+    .locals 4
     .parameter "context"
     .parameter "callback"
     .parameter "updateMonitor"
@@ -108,6 +109,8 @@
     .parameter "controller"
 
     .prologue
+    const/4 v3, 0x1
+
     const/4 v2, 0x0
 
     invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
@@ -116,7 +119,7 @@
 
     iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
 
-    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z
+    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z
 
     new-instance v0, Ljava/lang/Object;
 
@@ -152,9 +155,9 @@
 
     iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;
 
-    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
 
-    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
+    move-result-object v0
 
     iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
 
@@ -228,9 +231,7 @@
 
     invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
 
-    const/4 v0, 0x1
-
-    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V
+    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V
 
     const/high16 v0, 0x4
 
@@ -518,8 +519,13 @@
 
 .method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Injector;->updateShowLockBeforeUnlock(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
+
     iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
 
     invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;
@@ -1015,8 +1021,22 @@
 
 .method private maybeStartBiometricUnlock()V
     .locals 3
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+
+    move-result-object v1
+
+    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+
+    if-ne v1, v2, :cond_3
+
+    return-void
+
+    :cond_3
     iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
 
     if-eqz v1, :cond_0
@@ -1082,8 +1102,20 @@
 
 .method private recreateLockScreen()V
     .locals 2
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
+    invoke-static {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Injector;->needRecreateLockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
+
+    move-result v0
+
+    if-nez v0, :cond_1
+
+    return-void
+
+    :cond_1
     iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;
 
     if-eqz v0, :cond_0
@@ -1529,6 +1561,9 @@
     .locals 6
     .parameter "mode"
     .parameter "force"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
@@ -1705,6 +1740,8 @@
 
     .restart local v2       #visibleScreen:Landroid/view/View;
     :cond_a
+    invoke-static {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Injector;->startBiometricUnlock(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
+
     return-void
 .end method
 
@@ -1788,6 +1825,46 @@
 
 
 # virtual methods
+.method callGetInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+
+    move-result-object v0
+
+    return-object v0
+.end method
+
+.method callMaybeStartBiometricUnlock()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V
+
+    return-void
+.end method
+
+.method callStuckOnLockScreenBecauseSimMissing()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
+
+    move-result v0
+
+    return v0
+.end method
+
 .method public cleanUp()V
     .locals 2
 
@@ -1856,6 +1933,20 @@
     return-void
 .end method
 
+.method protected createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;
+
+    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
+
+    return-object v0
+.end method
+
 .method createLockScreen()Landroid/view/View;
     .locals 6
 
@@ -1883,6 +1974,9 @@
 .method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
     .locals 10
     .parameter "unlockMode"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v1, 0x0
@@ -1986,7 +2080,7 @@
     if-ne p1, v3, :cond_3
 
     :try_start_0
-    new-instance v2, Lcom/android/internal/policy/impl/AccountUnlockScreen;
+    new-instance v2, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
 
     iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
 
@@ -1998,7 +2092,7 @@
 
     iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
 
-    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
+    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
     :try_end_0
     .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
 
@@ -2128,6 +2222,90 @@
     return v1
 .end method
 
+.method getConfiguration()Landroid/content/res/Configuration;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;
+
+    return-object v0
+.end method
+
+.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
+
+    return-object v0
+.end method
+
+.method getLockScreen()Landroid/view/View;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;
+
+    return-object v0
+.end method
+
+.method getMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+
+    return-object v0
+.end method
+
+.method getScreenOn()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z
+
+    return v0
+.end method
+
+.method getShowLockBeforeUnlock()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z
+
+    return v0
+.end method
+
+.method getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
+
+    return-object v0
+.end method
+
 .method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
     .locals 2
     .parameter "newConfig"
@@ -2377,6 +2555,45 @@
 
     return-void
 .end method
+
+.method setMode(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
+
+    return-void
+.end method
+
+.method setScreenOn(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z
+
+    return-void
+.end method
+
+.method setShowLockBeforeUnlock(Z)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z
+
+    return-void
+.end method
 
 .method public show()V
     .locals 1
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PasswordUnlockScreen.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PasswordUnlockScreen.smali
@@ -5,6 +5,19 @@
 # interfaces
 .implements Lcom/android/internal/policy/impl/KeyguardScreen;
 .implements Landroid/widget/TextView$OnEditorActionListener;
+.implements Landroid/view/View$OnKeyListener;
+
+
+# annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
+.annotation system Ldalvik/annotation/MemberClasses;
+    value = {
+        Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;
+    }
+.end annotation
 
 
 # static fields
@@ -22,6 +35,12 @@
 
 .field private final mIsAlpha:Z
 
+.field mIsLockByFindDevice:Z
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
 
 .field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
@@ -47,6 +66,9 @@
     .parameter "lockPatternUtils"
     .parameter "updateMonitor"
     .parameter "callback"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
@@ -160,6 +182,10 @@
 
     invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
 
+    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
+
+    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
+
     new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
 
     iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
@@ -219,7 +245,7 @@
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
 
-    const/16 v2, 0x81
+    const v2, 0x800081
 
     invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V
 
@@ -314,6 +340,8 @@
 
     .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
     :cond_3
+    invoke-static {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;->initialize(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
+
     return-void
 
     .end local v7           #imeOrDeleteButtonVisible:Z
@@ -396,7 +424,7 @@
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
 
-    const/16 v2, 0x12
+    const v2, 0x800012
 
     invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V
 
@@ -643,6 +671,9 @@
 
 .method private verifyPasswordAndUnlock()V
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const v5, 0x10402ff
@@ -682,11 +713,7 @@
 
     invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V
 
-    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;
-
-    move-result-object v3
-
-    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
+    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;->clearPinLockForFindDevice(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)V
 
     :cond_0
     :goto_0
@@ -777,12 +804,78 @@
     return-void
 .end method
 
-.method public needsInput()Z
+.method getKeyboardView()Lcom/android/internal/widget/PasswordEntryKeyboardView;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
+
+    return-object v0
+.end method
+
+.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
+
+    return-object v0
+.end method
+
+.method public isAlphaOrDefaultImeIsCustomizedForMiui()Z
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z
 
+    if-nez v0, :cond_0
+
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;
+
+    move-result-object v0
+
+    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
+
+    move-result-object v0
+
+    invoke-static {v0}, Lmiui/view/inputmethod/CustomizedImeForMiui;->defaultImeIsCustomizedForMiui(Landroid/content/ContentResolver;)Z
+
+    move-result v0
+
+    if-eqz v0, :cond_1
+
+    :cond_0
+    const/4 v0, 0x1
+
+    :goto_0
+    return v0
+
+    :cond_1
+    const/4 v0, 0x0
+
+    goto :goto_0
+.end method
+
+.method public needsInput()Z
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->isAlphaOrDefaultImeIsCustomizedForMiui()Z
+
+    move-result v0
+
     return v0
 .end method
 
@@ -879,6 +972,41 @@
     const/4 v0, 0x0
 
     goto :goto_0
+.end method
+
+.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
+    .locals 2
+    .parameter "v"
+    .parameter "keyCode"
+    .parameter "event"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    const/4 v0, 0x1
+
+    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
+
+    move-result v1
+
+    if-ne v1, v0, :cond_0
+
+    const/4 v1, 0x5
+
+    if-ne p2, v1, :cond_0
+
+    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
+
+    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V
+
+    :goto_0
+    return v0
+
+    :cond_0
+    const/4 v0, 0x0
+
+    goto :goto_0
 .end method
 
 .method public onKeyDown(ILandroid/view/KeyEvent;)Z
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneFallbackEventHandler.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneFallbackEventHandler.smali
@@ -253,6 +253,16 @@
     return-object v0
 .end method
 
+.method handleCameraKeyEvent()V
+    .locals 0
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    return-void
+.end method
+
 .method onKeyDown(ILandroid/view/KeyEvent;)Z
     .locals 9
     .parameter "keyCode"
@@ -570,6 +580,9 @@
     .locals 5
     .parameter "keyCode"
     .parameter "event"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v2, 0x1
@@ -654,6 +667,8 @@
 
     if-nez v3, :cond_2
 
+    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleCameraKeyEvent()V
+
     goto :goto_0
 
     :sswitch_3
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindow$DecorView.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindow$DecorView.smali
@@ -7,12 +7,16 @@
 
 
 # annotations
+.annotation build Landroid/annotation/MiuiHook;
+    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+.end annotation
+
 .annotation system Ldalvik/annotation/EnclosingClass;
     value = Lcom/android/internal/policy/impl/PhoneWindow;
 .end annotation
 
 .annotation system Ldalvik/annotation/InnerClass;
-    accessFlags = 0x12
+    accessFlags = 0x10
     name = "DecorView"
 .end annotation
 
@@ -48,6 +52,12 @@
 
 .field private mMenuBackground:Landroid/graphics/drawable/Drawable;
 
+.field mRoundedCorners:Lcom/android/internal/policy/impl/RoundedCorners;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
+
 .field private mShowActionModePopup:Ljava/lang/Runnable;
 
 .field private mWatchingForMenu:Z
@@ -363,6 +373,27 @@
 
 
 # virtual methods
+.method protected dispatchDraw(Landroid/graphics/Canvas;)V
+    .locals 3
+    .parameter "canvas"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
+
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;
+
+    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;
+
+    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;
+
+    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->drawRoundedCorners(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
+
+    return-void
+.end method
+
 .method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
     .locals 2
     .parameter "ev"
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindow.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindow.smali
@@ -16,7 +16,8 @@
         Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
         Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
         Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
-        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;
+        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;,
+        Lcom/android/internal/policy/impl/PhoneWindow$Injector;
     }
 .end annotation
 
@@ -1338,6 +1339,9 @@
     .locals 18
     .parameter "st"
     .parameter "event"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     move-object/from16 v0, p1
@@ -1698,6 +1702,12 @@
 
     iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
 
+    move-object/from16 v0, p0
+
+    move-object/from16 v1, v17
+
+    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->handleIcsAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
+
     move-object/from16 v0, p1
 
     iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
@@ -2915,6 +2925,9 @@
 .method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
     .locals 22
     .parameter "decor"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;
@@ -3934,7 +3947,7 @@
 
     move/from16 v1, v19
 
-    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V
+    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V
 
     goto/16 :goto_6
 
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager$17$1.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager$17$1.smali
@@ -19,15 +19,16 @@
 
 
 # direct methods
-.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$17;Landroid/content/Context;)V
+.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$17;Landroid/content/Context;I)V
     .locals 0
     .parameter
     .parameter "x0"
+    .parameter "x1"
 
     .prologue
     iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$17;
 
-    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
+    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
 
     return-void
 .end method
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager$17.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager$17.smali
@@ -42,10 +42,13 @@
 
 # virtual methods
 .method public run()V
-    .locals 5
+    .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    const/4 v4, 0x0
+    const/4 v5, 0x0
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;
 
@@ -61,7 +64,9 @@
 
     iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
 
-    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$17$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$17;Landroid/content/Context;)V
+    const/4 v4, 0x3
+
+    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$17$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$17;Landroid/content/Context;I)V
 
     iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;
 
@@ -77,7 +82,7 @@
 
     iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;
 
-    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
+    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;
 
@@ -154,7 +159,7 @@
 
     iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;
 
-    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V
+    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V
 
     iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;
 
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
@@ -13,7 +13,8 @@
         Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
         Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
         Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
-        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
+        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;,
+        Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
     }
 .end annotation
 
@@ -265,7 +266,11 @@
 
 .field mForceStatusBar:Z
 
-.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;
+.field mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+.end field
 
 .field private mHDMIObserver:Landroid/os/UEventObserver;
 
@@ -375,7 +380,7 @@
 
 .field private mPowerKeyTriggered:Z
 
-.field private final mPowerLongPress:Ljava/lang/Runnable;
+.field private mPowerLongPress:Ljava/lang/Runnable;
 
 .field mPowerManager:Landroid/os/LocalPowerManager;
 
@@ -2115,6 +2120,9 @@
 
 .method private updateSystemUiVisibilityLw()I
     .locals 6
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x0
@@ -2157,7 +2165,7 @@
 
     iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;
 
-    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
+    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
 
     move-result v1
 
@@ -2827,6 +2835,9 @@
     .parameter "displayWidth"
     .parameter "displayHeight"
     .parameter "displayRotation"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     const/4 v3, 0x0
@@ -3600,20 +3611,6 @@
 
     if-nez v3, :cond_6
 
-    move-object/from16 v0, p0
-
-    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I
-
-    move-object/from16 v0, p0
-
-    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I
-
-    add-int/2addr v3, v4
-
-    move-object/from16 v0, p0
-
-    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I
-
     :cond_6
     return-void
 
@@ -3825,6 +3822,19 @@
     goto :goto_9
 .end method
 
+.method callInterceptPowerKeyUp(Z)V
+    .locals 0
+    .parameter "canceled"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z
+
+    return-void
+.end method
+
 .method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
     .locals 2
     .parameter "win"
@@ -5727,6 +5737,18 @@
     goto :goto_1
 .end method
 
+.method getContext()Landroid/content/Context;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
+
+    return-object v0
+.end method
+
 .method public getMaxWallpaperLayer()I
     .locals 1
 
@@ -5808,6 +5830,30 @@
     return p1
 .end method
 
+.method getPowerLongPress()Ljava/lang/Runnable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;
+
+    return-object v0
+.end method
+
+.method getScreenshotChordLongPress()Ljava/lang/Runnable;
+    .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;
+
+    return-object v0
+.end method
+
 .method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
     .locals 2
 
@@ -6241,9 +6287,9 @@
 
     if-nez v6, :cond_0
 
-    new-instance v6, Lcom/android/internal/policy/impl/KeyguardViewMediator;
+    new-instance v6, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
 
-    invoke-direct {v6, p1, p0, p4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
+    invoke-direct {v6, p1, p0, p4}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
 
     iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
 
@@ -8332,6 +8378,9 @@
     .parameter "event"
     .parameter "policyFlags"
     .parameter "isScreenOn"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
     invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I
@@ -8423,6 +8472,8 @@
 
     .restart local v8       #keyguardActive:Z
     :cond_5
+    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V
+
     if-eqz v2, :cond_6
 
     move/from16 v0, p2
@@ -8963,6 +9014,8 @@
 
     iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z
 
+    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->sendPowerUpBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
+
     goto/16 :goto_3
 
     :cond_22
@@ -12957,6 +13010,19 @@
     return-void
 .end method
 
+.method setPowerLongPress(Ljava/lang/Runnable;)V
+    .locals 0
+    .parameter "value"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
+
+    .prologue
+    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;
+
+    return-void
+.end method
+
 .method public setRotationLw(I)V
     .locals 1
     .parameter "rotation"
@@ -13060,21 +13126,24 @@
 
 .method showGlobalActionsDialog()V
     .locals 4
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;
+    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;
 
     if-nez v1, :cond_0
 
-    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;
+    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions;
 
     iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
 
     iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
 
-    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
+    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
 
-    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;
+    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;
 
     :cond_0
     invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z
@@ -13082,13 +13151,13 @@
     move-result v0
 
     .local v0, keyguardShowing:Z
-    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;
+    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;
 
     invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z
 
     move-result v2
 
-    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V
+    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->showDialog(ZZ)V
 
     if-eqz v0, :cond_1
 
--- a/android.policy.jar.out/smali/com/android/internal/policy/impl/Policy.smali
+++ b/android.policy.jar.out/smali/com/android/internal/policy/impl/Policy.smali
@@ -138,11 +138,14 @@
 .method public makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
     .locals 1
     .parameter "context"
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    new-instance v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
+    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;
 
-    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V
+    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V
 
     return-object v0
 .end method
@@ -173,11 +176,14 @@
 
 .method public makeNewWindowManager()Landroid/view/WindowManagerPolicy;
     .locals 1
+    .annotation build Landroid/annotation/MiuiHook;
+        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
+    .end annotation
 
     .prologue
-    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager;
+    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
 
-    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V
+    invoke-direct {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;-><init>()V
 
     return-object v0
 .end method
-- 
1.7.5.4


.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BIT_ANC_HEADSET:I = 0x8

.field private static final BIT_ANC_HEADSET_MIC_ONLY:I = 0x20

.field private static final BIT_ANC_HEADSET_SPEAKER_ONLY:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_MIC_ONLY:I = 0x4

.field private static final BIT_HEADSET_SPEAKER_ONLY:I = 0x2

.field static final BOOT_PROGRESS_LAYER:I = 0x16

.field private static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field static final DEBUG_FALLBACK:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field public static final DISABLE_PEN_GESTURE_KEY:Ljava/lang/String; = "disable_pen_gesture"

.field static final DRAG_LAYER:I = 0x14

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x18

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xa

.field static final INPUT_METHOD_LAYER:I = 0x9

.field static final KEYGUARD_DIALOG_LAYER:I = 0xc

.field static final KEYGUARD_LAYER:I = 0xb

.field private static final LID_ABSENT:I = -0x1

.field private static final LID_CLOSED:I = 0x0

.field private static final LID_OPEN:I = 0x1

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final MINI_APP_DIALOG_LAYER:I = 0x5

.field static final MINI_APP_LAYER:I = 0x3

.field static final NAVIGATION_BAR_LAYER:I = 0x12

.field static final PHONE_LAYER:I = 0x3

.field static final POINTER_LAYER:I = 0x17

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x7

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final ROTATION_BOOTER_TIMEOUT:I = 0xbb8

.field private static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field private static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x15

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0xe

.field static final STATUS_BAR_PANEL_LAYER:I = 0xf

.field static final STATUS_BAR_SUB_PANEL_LAYER:I = 0xd

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final SW_ANC_HEADPHONE_INSERT:I = 0x10

.field private static final SW_ANC_HEADSET_INSERT:I = 0x30

.field private static final SW_ANC_INSERT:I = 0x8

.field private static final SW_ANC_MICROPHONE_INSERT:I = 0x20

.field private static final SW_HEADPHONE_INSERT:I = 0x2

.field private static final SW_HEADSET_INSERT:I = 0x6

.field private static final SW_LID:I = 0x0

.field private static final SW_MICROPHONE_INSERT:I = 0x4

.field static final SYSTEM_ALERT_LAYER:I = 0x8

.field static final SYSTEM_DIALOG_LAYER:I = 0x5

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0x13

.field static final SYSTEM_OVERLAY_LAYER:I = 0x11

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x12

.field static final VOLUME_OVERLAY_LAYER:I = 0x10

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static iFactoryMode:I

.field static final localLOGV:Z

.field private static mHeadsetJackState:I

.field private static mIsAncOn:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final POST_DELAY_TIME:I

.field mAccelerometerDefault:I

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mBlockCollapseStatusBar:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeShortcutKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurHeadsetState:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field final mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

.field mFancyRotationAnimation:I

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHDMIRotationEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHdmiPlugged:Z

.field mHdmiRotation:I

.field final mHeadsetLock:Ljava/lang/Object;

.field mHeadsetName:Ljava/lang/String;

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputHandler:Landroid/view/InputHandler;

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field private mHomeDomeButton:Z

.field private mHomeDoubleClickBehavior:Z

.field mHomeIntent:Landroid/content/Intent;

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLastFocusNeedsMenu:Z

.field mLastSystemUiFlags:I

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:I

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanHide:Z

.field mNavigationBarHeight:I

.field private mNavigationBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

.field mNavigationBarWidth:I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

.field mOrientationSensorEnabled:Z

.field mPenGestureInputChannel:Landroid/view/InputChannel;

.field private final mPenGestureInputHandler:Landroid/view/InputHandler;

.field mPenGestureView:Lcom/android/internal/widget/PenGestureView;

.field mPendingPowerKeyUpCanceled:Z

.field mPointerInterceptChannel:Landroid/view/InputChannel;

.field private final mPointerInterceptInputHandler:Landroid/view/InputHandler;

.field mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field private mPowerKeyConsumedByScreenshotChord:Z

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mPrevHeadsetState:I

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mRotationBoosterLock:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mSamsungCustomIntent:Landroid/content/Intent;

.field mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSeascapeRotation:I

.field mSetIgnoreKeys:Z

.field mSetIgnorePowerKey:Z

.field mShortcutKeyPressed:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowLockScreen:Z

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarCanHide:Z

.field mStatusBarHeight:I

.field private mStatusBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

.field mStatusBarOpen:Z

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field mVoiceTalkIntent:Landroid/content/Intent;

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    sput v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    .line 291
    sput-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsAncOn:Z

    .line 316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 319
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 327
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 574
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 575
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 576
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 577
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 578
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 631
    sput v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->iFactoryMode:I

    .line 2149
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v0, "Headset"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetName:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetLock:Ljava/lang/Object;

    .line 336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 361
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 364
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 368
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 369
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 370
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidth:I

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeight:I

    .line 373
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanHide:Z

    .line 376
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 394
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    .line 399
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 400
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 406
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 407
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 409
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 414
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 418
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 420
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 421
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 426
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 427
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 431
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenGestureView:Lcom/android/internal/widget/PenGestureView;

    .line 437
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 439
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 445
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    .line 448
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 457
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 477
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenGestureInputHandler:Landroid/view/InputHandler;

    .line 502
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptInputHandler:Landroid/view/InputHandler;

    .line 565
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 567
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 570
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 572
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 589
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 606
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    .line 607
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    .line 608
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowLockScreen:Z

    .line 609
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->POST_DELAY_TIME:I

    .line 624
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 625
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 626
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 627
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 638
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 641
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 642
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    .line 665
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 669
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

    .line 673
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

    .line 677
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    .line 680
    new-instance v0, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 686
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 921
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1042
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1134
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 1142
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 2757
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 2767
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputHandler:Landroid/view/InputHandler;

    .line 3763
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 3764
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3766
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 4424
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 4430
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4449
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 4906
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 4990
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 5961
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 880
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 883
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 919
    return-void
.end method

.method private determineHiddenState(III)I
    .locals 3
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    const/4 v2, 0x1

    .line 1730
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1731
    packed-switch p1, :pswitch_data_0

    .line 1738
    .end local p2
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 1733
    .restart local p2
    .restart local p3
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-eq v0, v2, :cond_0

    move p3, p2

    goto :goto_0

    .line 1735
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v0, v2, :cond_1

    .end local p2
    :goto_1
    move p3, p2

    goto :goto_0

    .restart local p2
    :cond_1
    move p2, p3

    goto :goto_1

    .line 1731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2137
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2139
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2140
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    :cond_0
    return-object v0
.end method

.method private getFallbackAction(Landroid/view/KeyCharacterMap;IILandroid/view/KeyCharacterMap$FallbackAction;)Z
    .locals 1
    .parameter "kcm"
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "outFallbackAction"

    .prologue
    .line 2712
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/KeyCharacterMap;->getFallbackAction(IILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v0

    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 4872
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 4873
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 4874
    const/4 v2, 0x0

    .line 4880
    :cond_0
    return-object v2

    .line 4876
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 4877
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4878
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 4877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .locals 3

    .prologue
    .line 2117
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 2119
    .local v0, telephonyExtService:Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_0

    .line 2120
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_0
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 2098
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2100
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 2101
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_0
    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 2107
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2109
    .local v0, telephonyService2:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 2110
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    .line 2127
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2129
    .local v0, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    .line 2130
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_0
    return-object v0
.end method

.method private handleLongPressOnHome()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1152
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v4, :cond_1

    .line 1153
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1155
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v4, v8, :cond_1

    .line 1157
    :cond_0
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1164
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1165
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_3

    .line 1166
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1211
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    invoke-static {v4, v5, v1}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 1176
    .local v3, voipInterfaceService:Landroid/os/IVoIPInterface;
    const-string v4, "WindowManager"

    const-string v5, "interceptKeyBeforeDispatching with IVoIPInterface "

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    if-eqz v3, :cond_4

    .line 1178
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-nez v4, :cond_2

    .line 1187
    .end local v3           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_4
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v4, :cond_5

    .line 1188
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v6, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1189
    const-string v4, "recentapps"

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1193
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1196
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v4, v7, :cond_6

    .line 1197
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    goto :goto_0

    .line 1198
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v4, v8, :cond_2

    .line 1199
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-ne v4, v7, :cond_7

    .line 1201
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 1202
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1203
    :catch_1
    move-exception v0

    .line 1204
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "RemoteException when showing recent apps"

    invoke-static {v4, v5, v0}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1208
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1182
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .parameter "handled"

    .prologue
    .line 862
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 863
    if-nez p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 866
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 869
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 871
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 873
    :cond_0
    return v0
.end method

.method private interceptScreenshotChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 886
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_1

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 888
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 890
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 891
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 892
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 894
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 915
    .end local v0           #now:J
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 900
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 901
    .restart local v0       #now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 903
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 904
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 905
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 906
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 4822
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 7

    .prologue
    .line 1001
    const/4 v2, 0x0

    .line 1002
    .local v2, isFactoryMode:Z
    const/4 v3, 0x0

    .line 1003
    .local v3, valueShouldShutDown:I
    const/4 v1, 0x0

    .line 1006
    .local v1, imeiBlocked:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1007
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1008
    const-string v4, "WindowManager"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v2, 0x1

    .line 1014
    :cond_0
    if-nez v2, :cond_1

    .line 1015
    const-string v4, "999999999999999"

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1016
    const-string v4, "WindowManager"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v2, 0x1

    .line 1022
    :cond_1
    if-nez v2, :cond_2

    .line 1024
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1030
    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1031
    const-string v4, "WindowManager"

    const-string v5, "Not factory mode"

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_2
    :goto_1
    return v2

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 1027
    const-string v4, "WindowManager"

    const-string v5, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1034
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "WindowManager"

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 4818
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMtpRunning()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4399
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mtp_sync_alive"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 4400
    const-string v1, "MTP-PWM"

    const-string v2, " Set DEVICE_PROVISIONED value to one for home key press"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4404
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    .line 5394
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5396
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 5397
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5398
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 5406
    :goto_0
    return-void

    .line 5401
    :cond_0
    const-string v1, "WindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5404
    :cond_1
    const-string v1, "WindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 1635
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1636
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 1649
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1638
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1640
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1642
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1644
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1646
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1636
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 4630
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4632
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4636
    :cond_0
    :goto_0
    return-void

    .line 4633
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private takeScreenshot(I)V
    .locals 8
    .parameter "event"

    .prologue
    .line 3786
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3787
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 3788
    monitor-exit v4

    .line 3839
    :goto_0
    return-void

    .line 3790
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3793
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3794
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    .line 3834
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3835
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3836
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3838
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateKeyboardVisibility()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5031
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 5032
    return-void

    .line 5031
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 5007
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v2

    .line 5008
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5009
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 5010
    if-eqz v0, :cond_2

    .line 5012
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5017
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5019
    :cond_0
    monitor-exit v2

    .line 5020
    return-void

    .line 5008
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5015
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5019
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 5271
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_0

    move v0, v3

    .line 5303
    :goto_0
    return v0

    .line 5274
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 5277
    .local v2, visibility:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v2, v4

    .line 5278
    .local v0, diff:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 5279
    .local v1, needsMenu:Z
    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move v0, v3

    .line 5281
    goto :goto_0

    .line 5283
    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5284
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 5285
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 5286
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 12
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 1899
    if-nez p2, :cond_1

    .line 1900
    const/4 v6, 0x0

    .line 1990
    :cond_0
    :goto_0
    return-object v6

    .line 1904
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1907
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-ne p3, v9, :cond_2

    if-eqz p6, :cond_3

    .line 1909
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1910
    invoke-virtual {v2, p3}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1916
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v7

    .line 1917
    .local v7, win:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1919
    const/4 v6, 0x0

    goto :goto_0

    .line 1922
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1923
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1925
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 1931
    or-int/lit8 v9, p8, 0x10

    or-int/lit8 v9, v9, 0x8

    const/high16 v10, 0x2

    or-int/2addr v9, v10

    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/view/Window;->setFlags(II)V

    .line 1941
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1942
    const/high16 v9, 0x2000

    invoke-virtual {v7, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1945
    :cond_5
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v9, v10}, Landroid/view/Window;->setLayout(II)V

    .line 1948
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1949
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1950
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1951
    invoke-virtual {v7}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1953
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1957
    const-string v9, "window"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 1958
    .local v8, wm:Landroid/view/WindowManager;
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 1960
    .local v6, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/Window;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1967
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1975
    :cond_6
    invoke-interface {v8, v6, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1980
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #view:Landroid/view/View;
    .end local v7           #win:Landroid/view/Window;
    .end local v8           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 1982
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " already running, starting window not displayed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1983
    :catch_1
    move-exception v3

    .line 1987
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed creating starting window"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1911
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v9

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1744
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyboardVisibility()V

    .line 1746
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_1

    .line 1747
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1753
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v1, :cond_2

    .line 1754
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1760
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_3

    .line 1761
    :cond_0
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1765
    :goto_2
    return-void

    .line 1749
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    goto :goto_0

    .line 1756
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    goto :goto_1

    .line 1763
    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    goto :goto_2
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2820
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 2823
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1699
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1712
    :goto_0
    return-void

    .line 1704
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1706
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1709
    :sswitch_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1699
    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3584
    const/4 v0, 0x0

    .line 3611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowKeyRepeat()Z
    .locals 1

    .prologue
    .line 5265
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 3360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3362
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 3363
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3365
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    .line 3371
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3372
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3374
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3376
    :cond_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3378
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 3380
    :cond_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 3381
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3385
    :cond_3
    return-void
.end method

.method public beginAnimationLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 3347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3348
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3350
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3351
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3352
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 3353
    return-void
.end method

.method public beginLayoutLw(III)V
    .locals 16
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 2842
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 2843
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 2844
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 2845
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 2846
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 2847
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2848
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 2849
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2850
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2851
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2852
    const/high16 v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 2855
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 2856
    .local v13, pf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 2857
    .local v11, df:Landroid/graphics/Rect;
    sget-object v15, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 2858
    .local v15, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v15, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 2859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v15, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 2860
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v15, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 2861
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_9

    const/4 v12, 0x1

    .line 2870
    .local v12, navVisible:Z
    :goto_0
    if-eqz v12, :cond_a

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_1

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 2873
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 2888
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 2889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    .line 2894
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_d

    .line 2896
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeight:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2898
    if-eqz v12, :cond_c

    .line 2899
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2923
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2924
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2925
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2936
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v15, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 2937
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v15, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 2938
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v15, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 2939
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v13, v11, v15, v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2943
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2946
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v14

    .line 2947
    .local v14, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v2, :cond_11

    .line 2951
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2952
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_f

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2955
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2957
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2958
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 2967
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 2968
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_10

    .line 2969
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2995
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_8
    :goto_4
    return-void

    .line 2863
    .end local v12           #navVisible:Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2875
    .restart local v12       #navVisible:Z
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_1

    .line 2877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 2878
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .line 2880
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_1

    .line 2881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputHandler:Landroid/view/InputHandler;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .line 2905
    :cond_c
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    .line 2909
    :cond_d
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidth:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2911
    if-eqz v12, :cond_e

    .line 2912
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2913
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    goto/16 :goto_2

    .line 2918
    :cond_e
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidth:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    .line 2953
    .restart local v14       #r:Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_6

    iget v2, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    goto/16 :goto_3

    .line 2971
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    goto/16 :goto_4

    .line 2977
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_13

    .line 2978
    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 2979
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2984
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    goto/16 :goto_4

    .line 2980
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_12

    .line 2981
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    goto :goto_5
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1887
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canStatusBarHide()Z
    .locals 1

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    return v0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 1654
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1656
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return v2

    .line 1661
    :cond_1
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_0

    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1687
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1689
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 1690
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1692
    const/4 v2, -0x8

    goto :goto_0

    .line 1684
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1685
    goto :goto_1

    .line 1666
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x834 -> :sswitch_0
        0x835 -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0021

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 5057
    const/4 v1, 0x0

    .line 5062
    .local v1, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 5064
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v2, v1

    .line 5072
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    if-nez v2, :cond_1

    move-object v1, v2

    .line 5088
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    return-object v3

    .line 5066
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 5068
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    move-object v2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 5076
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 5078
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 5079
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 5082
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5083
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5084
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v1

    .line 5085
    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    move-object v1, v2

    .line 5088
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_4
    move-object v2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public detectSafeMode()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 4847
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v8, 0x52

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 4848
    .local v2, menuState:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v8, 0x2f

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 4849
    .local v3, sState:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v8, 0x17

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 4850
    .local v0, dpadState:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v8, 0x110

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 4851
    .local v4, trackballState:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v8, 0x19

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v9, 0xa9

    invoke-interface {v8, v9}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v8

    or-int v5, v7, v8

    .line 4853
    .local v5, volumeDownState:I
    if-gtz v2, :cond_0

    if-gtz v3, :cond_0

    if-gtz v0, :cond_0

    if-gtz v4, :cond_0

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 4855
    const/4 v7, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x2711

    :goto_1
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4858
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_3

    .line 4859
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAFE MODE ENABLED (menu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dpad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " trackball="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v6

    .line 4853
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 4855
    :cond_2
    const/16 v6, 0x2710

    goto :goto_1

    .line 4862
    :cond_3
    const-string v6, "WindowManager"

    const-string v7, "SAFE MODE not enabled"

    invoke-static {v6, v7}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4865
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    .end local v5           #volumeDownState:I
    :catch_0
    move-exception v1

    .line 4867
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "window manager dead"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4612
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4619
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 24
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2668
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 2669
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 2670
    .local v21, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 2671
    .local v22, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v23

    .line 2674
    .local v23, metaState:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFallbackAction(Landroid/view/KeyCharacterMap;IILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 2681
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    iget v9, v9, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;

    iget v11, v11, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v20

    .line 2687
    .local v20, fallbackEvent:Landroid/view/KeyEvent;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v17

    .line 2688
    .local v17, actions:I
    and-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_0

    .line 2689
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v18

    .line 2691
    .local v18, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_0

    .line 2705
    .end local v14           #flags:I
    .end local v17           #actions:I
    .end local v18           #delayMillis:J
    .end local v20           #fallbackEvent:Landroid/view/KeyEvent;
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v22           #keyCode:I
    .end local v23           #metaState:I
    :goto_0
    return-object v20

    .line 2698
    .restart local v14       #flags:I
    .restart local v17       #actions:I
    .restart local v20       #fallbackEvent:Landroid/view/KeyEvent;
    .restart local v21       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v22       #keyCode:I
    .restart local v23       #metaState:I
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->recycle()V

    .line 2705
    .end local v14           #flags:I
    .end local v17           #actions:I
    .end local v20           #fallbackEvent:Landroid/view/KeyEvent;
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v22           #keyCode:I
    .end local v23           #metaState:I
    :cond_1
    const/16 v20, 0x0

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1883
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5314
    const-string v0, " mSystemReady="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5315
    const-string v0, " mSystemBooted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidOpen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5317
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5318
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5319
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 5321
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5322
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5323
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5324
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5325
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5326
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5328
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 5329
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5330
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5332
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5333
    const-string v0, " mDockMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5334
    const-string v0, " mCarDockRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5335
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5336
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5337
    const-string v0, " mUserRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5338
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5339
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAccelerometerDefault="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5340
    const-string v0, " mCurrentAppOrientation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5341
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5342
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5343
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5344
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5346
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5347
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5348
    const-string v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5350
    const-string v0, " mScreenOnFully="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5351
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5352
    const-string v0, " mHasSoftInput="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5354
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5355
    const-string v0, ") "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5356
    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5357
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5358
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5359
    const-string v0, ") "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5360
    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5362
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5363
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5364
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5366
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5367
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5368
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5370
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5371
    const-string v0, ")-("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5372
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5373
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5374
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5375
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5376
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5377
    const-string v0, " mForceStatusBar="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5378
    const-string v0, " mHideLockScreen="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5379
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5380
    const-string v0, " mHomePressed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5381
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5382
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5383
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5384
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5385
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5386
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5387
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5388
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5389
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5390
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5391
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 4582
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 5024
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 5025
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyboardVisibility()V

    .line 5027
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5028
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4587
    return-void
.end method

.method public finishAnimationLw()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3389
    const/4 v0, 0x0

    .line 3390
    .local v0, changes:I
    const/4 v4, 0x0

    .line 3392
    .local v4, topIsFullscreen:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 3396
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_0

    .line 3399
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v8, :cond_5

    .line 3401
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 3533
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 3537
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2

    .line 3539
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_15

    .line 3540
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3541
    or-int/lit8 v0, v0, 0x7

    .line 3545
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3546
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3569
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v5

    and-int/lit8 v5, v5, 0x6

    if-eqz v5, :cond_3

    .line 3572
    or-int/lit8 v0, v0, 0x1

    .line 3576
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 3577
    return v0

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move-object v2, v5

    .line 3392
    goto :goto_0

    .line 3402
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_0

    .line 3409
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_d

    move v4, v6

    .line 3412
    :goto_3
    const/4 v1, 0x0

    .line 3413
    .local v1, isHidden:Z
    if-eqz v4, :cond_7

    .line 3414
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 3416
    .local v3, topActivity:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

    invoke-virtual {v8, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->isStatusBarCanHide(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3417
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3418
    or-int/lit8 v0, v0, 0x1

    .line 3419
    const-string v8, "metHe"

    const-string v9, "finishAnimationLw-5"

    invoke-static {v8, v9}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_6
    const/4 v1, 0x1

    .line 3432
    .end local v3           #topActivity:Landroid/content/ComponentName;
    :cond_7
    if-nez v1, :cond_8

    .line 3433
    if-eqz v4, :cond_11

    .line 3434
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v8, :cond_10

    .line 3437
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    if-eqz v8, :cond_e

    .line 3438
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    or-int/lit8 v0, v0, 0x1

    .line 3477
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_b

    .line 3478
    const/4 v1, 0x0

    .line 3479
    if-eqz v4, :cond_b

    .line 3480
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 3482
    .restart local v3       #topActivity:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

    invoke-virtual {v8, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->isNavigationBarCanHide(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3483
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3484
    or-int/lit8 v0, v0, 0x1

    .line 3485
    const-string v8, "metHe"

    const-string v9, "finishAnimationLw-5"

    invoke-static {v8, v9}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v8, :cond_a

    .line 3488
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3489
    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3491
    :cond_a
    const/4 v1, 0x1

    .line 3507
    .end local v3           #topActivity:Landroid/content/ComponentName;
    :cond_b
    :goto_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_0

    .line 3508
    if-nez v1, :cond_0

    .line 3509
    if-eqz v4, :cond_14

    .line 3510
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanHide:Z

    if-eqz v8, :cond_0

    .line 3512
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3513
    or-int/lit8 v0, v0, 0x1

    .line 3516
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v8, :cond_0

    .line 3517
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3518
    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .end local v1           #isHidden:Z
    :cond_d
    move v4, v7

    .line 3409
    goto/16 :goto_3

    .line 3442
    .restart local v1       #isHidden:Z
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3443
    or-int/lit8 v0, v0, 0x1

    .line 3446
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    if-eqz v8, :cond_f

    .line 3447
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    goto :goto_4

    .line 3451
    :cond_f
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 3464
    :cond_10
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 3466
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3469
    :cond_11
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 3471
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 3494
    .restart local v3       #topActivity:Landroid/content/ComponentName;
    :cond_12
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_13

    or-int/lit8 v0, v0, 0x1

    .line 3495
    :cond_13
    const/4 v1, 0x0

    goto :goto_5

    .line 3525
    .end local v3           #topActivity:Landroid/content/ComponentName;
    :cond_14
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3552
    .end local v1           #isHidden:Z
    :cond_15
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_17

    .line 3553
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3554
    or-int/lit8 v0, v0, 0x7

    .line 3558
    :cond_16
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_2

    .line 3560
    :cond_17
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3561
    or-int/lit8 v0, v0, 0x7

    .line 3565
    :cond_18
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_2
.end method

.method public finishLayoutLw()I
    .locals 1

    .prologue
    .line 3342
    const/4 v0, 0x0

    return v0
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 3615
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3616
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    .line 3619
    const/4 v0, 0x1

    .line 3621
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1878
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1869
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 2828
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2830
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_0

    .line 2832
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2838
    :goto_0
    return-void

    .line 2836
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 1846
    const/16 v0, 0xe

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    .line 1863
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    sub-int v1, p2, v1

    if-le p1, p2, :cond_1

    :goto_1
    sub-int v0, v1, v0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeight:I

    goto :goto_1
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1855
    if-le p1, p2, :cond_0

    .line 1856
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidth:I

    sub-int/2addr p1, v0

    .line 1858
    .end local p1
    :cond_0
    return p1
.end method

.method goHome()Z
    .locals 19

    .prologue
    .line 5132
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5134
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v4 .. v17}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I

    move-result v18

    .line 5155
    .local v18, result:I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    .line 5156
    const/4 v1, 0x0

    .line 5162
    .end local v18           #result:I
    :goto_0
    return v1

    .line 5136
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5137
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5138
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v3

    .line 5139
    .local v3, dock:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 5140
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 5145
    .restart local v18       #result:I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    .line 5146
    const/4 v1, 0x0

    goto :goto_0

    .line 5158
    .end local v3           #dock:Landroid/content/Intent;
    .end local v18           #result:I
    :catch_0
    move-exception v1

    .line 5162
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 3731
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3732
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3761
    :goto_0
    return-void

    .line 3740
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3748
    invoke-interface {v0}, Landroid/media/IAudioService;->dismissVolumePanel()V

    .line 3749
    const/16 v2, 0x18

    if-eq p2, v2, :cond_1

    const/16 v2, 0xa8

    if-ne p2, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3759
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 3749
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 3756
    :catch_0
    move-exception v1

    .line 3757
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3759
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 5309
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 4958
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4966
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 3

    .prologue
    .line 4392
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4393
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 4606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 9
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1277
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1278
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1279
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 1280
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v5, p1, p0, p4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 1281
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1282
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1284
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1293
    .local v2, mSamsungCustomFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    const-string v5, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v5, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    const-string v5, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomIntent:Landroid/content/Intent;

    .line 1298
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    .line 1299
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v6, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v6, "CHECK_SCHEDULE_ENABLED"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1301
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.vlingo.midas"

    const-string v7, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 1305
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 1306
    .local v4, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1307
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1308
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1309
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1310
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1313
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1314
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1317
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1318
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1322
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1323
    .local v3, pm:Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1325
    const/4 v5, 0x1

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1327
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1328
    const v5, 0x10e000b

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1330
    const v5, 0x10e000d

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1332
    const v5, 0x10e000c

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1334
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1336
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1338
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1340
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1344
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1345
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1348
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1350
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1352
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1356
    :cond_0
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1357
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002d

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1359
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002e

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1361
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002f

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1363
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070030

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1365
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070031

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1372
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v5}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1373
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1378
    :goto_1
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

    const-string v6, "/sys/power/rotation_booster"

    const-string v7, "1"

    const-string v8, "0"

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotationBoosterLock:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

    .line 1383
    return-void

    .line 1375
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_1

    .line 1285
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mSamsungCustomFilter:Landroid/content/IntentFilter;
    .end local v3           #pm:Landroid/os/PowerManager;
    .end local v4           #settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3669
    const/4 v4, 0x0

    .line 3671
    .local v4, plugged:Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3672
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3674
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 3675
    .local v2, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3677
    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3678
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 3679
    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 3680
    .local v3, n:I
    if-le v3, v7, :cond_0

    .line 3681
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 3688
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 3690
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3698
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 3699
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 3700
    return-void

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 3681
    goto :goto_0

    .line 3683
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 3684
    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3688
    if-eqz v5, :cond_1

    .line 3690
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3691
    :catch_1
    move-exception v9

    goto :goto_1

    .line 3685
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 3686
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3688
    if-eqz v5, :cond_1

    .line 3690
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 3691
    :catch_3
    move-exception v9

    goto :goto_1

    .line 3688
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 3690
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3692
    :cond_3
    :goto_7
    throw v7

    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 3698
    goto :goto_2

    :cond_5
    move v7, v8

    .line 3699
    goto :goto_3

    .line 3691
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 3688
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 3685
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 3683
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 45
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v23

    .line 2158
    .local v23, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 2159
    .local v22, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v31

    .line 2160
    .local v31, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v27

    .line 2161
    .local v27, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    .line 2162
    .local v11, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v41

    if-nez v41, :cond_2

    const/4 v8, 0x1

    .line 2163
    .local v8, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 2164
    .local v5, canceled:Z
    and-int/lit8 v41, p3, 0x3

    if-eqz v41, :cond_3

    const/16 v20, 0x1

    .line 2166
    .local v20, isWakeKey:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v41, v0

    if-nez v41, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    const/16 v18, 0x1

    .line 2177
    .local v18, isPhoneAndHasHardKey:Z
    :goto_2
    if-eqz v18, :cond_0

    .line 2178
    const/16 v41, 0x3

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    if-nez v8, :cond_0

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2185
    :cond_0
    const/16 v41, 0x3

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v37

    .line 2187
    .local v37, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    if-nez v41, :cond_1

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v42, "enterprise_policy"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    if-eqz v41, :cond_6

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v25

    .line 2193
    .local v25, lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v25, :cond_5

    .line 2194
    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled()Z

    move-result v41

    if-nez v41, :cond_5

    .line 2195
    const-string v41, "WindowManager"

    const-string v42, "home key disabled by edm"

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const-wide/16 v41, -0x1

    .line 2651
    .end local v25           #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .end local v37           #topActivity:Landroid/content/ComponentName;
    :goto_3
    return-wide v41

    .line 2162
    .end local v5           #canceled:Z
    .end local v8           #down:Z
    .end local v18           #isPhoneAndHasHardKey:Z
    .end local v20           #isWakeKey:Z
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2164
    .restart local v5       #canceled:Z
    .restart local v8       #down:Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2166
    .restart local v20       #isWakeKey:Z
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2199
    .restart local v18       #isPhoneAndHasHardKey:Z
    .restart local v25       #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .restart local v37       #topActivity:Landroid/content/ComponentName;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v41

    if-lez v41, :cond_6

    .line 2200
    const-wide/16 v41, -0x1

    goto :goto_3

    .line 2205
    .end local v25           #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .end local v37           #topActivity:Landroid/content/ComponentName;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v41

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_9

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    if-nez v41, :cond_7

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v42, "enterprise_policy"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2210
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v41, v0

    if-eqz v41, :cond_9

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    .line 2212
    .local v24, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v24, :cond_9

    .line 2213
    const/16 v16, 0x1

    .line 2214
    .local v16, isAllowed:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v41

    if-nez v41, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v41

    if-nez v41, :cond_8

    .line 2215
    const/16 v41, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v16

    .line 2219
    :goto_4
    if-nez v16, :cond_9

    .line 2220
    const-wide/16 v41, 0x0

    goto :goto_3

    .line 2217
    :cond_8
    const/16 v41, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v16

    goto :goto_4

    .line 2231
    .end local v16           #isAllowed:Z
    .end local v24           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_9
    and-int/lit16 v0, v11, 0x400

    move/from16 v41, v0

    if-nez v41, :cond_12

    .line 2232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v41, v0

    if-eqz v41, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v41, v0

    if-nez v41, :cond_a

    .line 2233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 2234
    .local v28, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x96

    add-long v35, v41, v43

    .line 2235
    .local v35, timeoutTime:J
    cmp-long v41, v28, v35

    if-gez v41, :cond_b

    .line 2236
    sub-long v41, v35, v28

    goto/16 :goto_3

    .line 2240
    .end local v28           #now:J
    .end local v35           #timeoutTime:J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v41, v0

    if-eqz v41, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v41, v0

    if-nez v41, :cond_b

    .line 2241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 2242
    .restart local v28       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x96

    add-long v35, v41, v43

    .line 2243
    .restart local v35       #timeoutTime:J
    cmp-long v41, v28, v35

    if-gez v41, :cond_b

    .line 2244
    sub-long v41, v35, v28

    goto/16 :goto_3

    .line 2248
    .end local v28           #now:J
    .end local v35           #timeoutTime:J
    :cond_b
    const/16 v41, 0x19

    move/from16 v0, v22

    move/from16 v1, v41

    if-eq v0, v1, :cond_c

    const/16 v41, 0xa9

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v41, v0

    if-eqz v41, :cond_e

    .line 2251
    if-nez v8, :cond_d

    .line 2252
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2254
    :cond_d
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2257
    :cond_e
    const/16 v41, 0x3

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    move/from16 v41, v0

    if-eqz v41, :cond_10

    .line 2259
    if-nez v8, :cond_f

    .line 2260
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 2262
    :cond_f
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2264
    :cond_10
    const/16 v41, 0x1a

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    move/from16 v41, v0

    if-eqz v41, :cond_12

    .line 2266
    if-nez v8, :cond_11

    .line 2267
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 2269
    :cond_11
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2278
    :cond_12
    const/16 v41, 0x3

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_2a

    .line 2279
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2280
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    move/from16 v41, v0

    if-eqz v41, :cond_14

    if-eqz v18, :cond_14

    const/16 v26, 0x1

    .line 2282
    .local v26, mSupportDoubleClick:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v41, v0

    const/16 v42, 0x3

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 2283
    if-eqz v4, :cond_15

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v41, v0

    const/16 v42, 0x7e1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_15

    .line 2284
    const-string v41, "homekey"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2285
    const-wide/16 v41, 0x64

    goto/16 :goto_3

    .line 2279
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v26           #mSupportDoubleClick:Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    .line 2280
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_14
    const/16 v26, 0x0

    goto :goto_6

    .line 2288
    .restart local v26       #mSupportDoubleClick:Z
    :cond_15
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2293
    :cond_16
    if-eqz v26, :cond_17

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v41, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->addAction(IIZ)V

    .line 2299
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v41, v0

    if-eqz v41, :cond_20

    if-nez v8, :cond_20

    .line 2300
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2302
    if-nez v26, :cond_19

    .line 2303
    if-nez v5, :cond_1f

    .line 2307
    const/4 v14, 0x0

    .line 2310
    .local v14, incomingRinging:Z
    const/16 v19, 0x0

    .line 2311
    .local v19, isVoIPRinging:Z
    const/16 v17, 0x0

    .line 2313
    .local v17, isAnyKeyMode:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v40

    .line 2314
    .local v40, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v40, :cond_1a

    .line 2315
    invoke-interface/range {v40 .. v40}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 2323
    .end local v40           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "anykey_mode"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1b

    .line 2324
    const/16 v17, 0x0

    .line 2330
    :goto_8
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v34

    .line 2331
    .local v34, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v34, :cond_18

    .line 2332
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 2339
    .end local v34           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_18
    :goto_9
    if-eqz v19, :cond_1d

    .line 2340
    if-eqz v17, :cond_19

    .line 2342
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v40

    .line 2343
    .restart local v40       #voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v40, :cond_1c

    .line 2344
    invoke-interface/range {v40 .. v40}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2362
    .end local v14           #incomingRinging:Z
    .end local v17           #isAnyKeyMode:Z
    .end local v19           #isVoIPRinging:Z
    .end local v40           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_19
    :goto_a
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2317
    .restart local v14       #incomingRinging:Z
    .restart local v17       #isAnyKeyMode:Z
    .restart local v19       #isVoIPRinging:Z
    .restart local v40       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1a
    :try_start_3
    const-string v41, "WindowManager"

    const-string v42, "Unable to find IVoIPInterface interface"

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 2319
    .end local v40           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v10

    .line 2320
    .local v10, ex:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2326
    .end local v10           #ex:Landroid/os/RemoteException;
    :cond_1b
    const/16 v17, 0x1

    goto :goto_8

    .line 2334
    :catch_1
    move-exception v10

    .line 2335
    .restart local v10       #ex:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2346
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v40       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1c
    :try_start_4
    const-string v41, "WindowManager"

    const-string v42, "Unable to find IVoIPInterface interface"

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    .line 2348
    .end local v40           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_2
    move-exception v10

    .line 2349
    .restart local v10       #ex:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 2353
    .end local v10           #ex:Landroid/os/RemoteException;
    :cond_1d
    if-eqz v14, :cond_1e

    .line 2354
    const-string v41, "WindowManager"

    const-string v42, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2356
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_a

    .line 2359
    .end local v14           #incomingRinging:Z
    .end local v17           #isAnyKeyMode:Z
    .end local v19           #isVoIPRinging:Z
    :cond_1f
    const-string v41, "WindowManager"

    const-string v42, "Ignoring HOME; event canceled."

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2368
    :cond_20
    if-eqz v4, :cond_25

    .line 2369
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    .line 2370
    .local v38, type:I
    const/16 v41, 0x7d4

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_21

    const/16 v41, 0x7d9

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_22

    .line 2376
    :cond_21
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2378
    :cond_22
    sget-object v41, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v39, v0

    .line 2379
    .local v39, typeCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_b
    move/from16 v0, v39

    if-ge v12, v0, :cond_25

    .line 2380
    sget-object v41, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v41, v41, v12

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_24

    .line 2382
    if-eqz v26, :cond_23

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V

    .line 2385
    :cond_23
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2379
    :cond_24
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 2390
    .end local v12           #i:I
    .end local v38           #type:I
    .end local v39           #typeCount:I
    :cond_25
    if-eqz v8, :cond_28

    .line 2391
    if-nez v31, :cond_29

    .line 2394
    :try_start_5
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v30

    .line 2395
    .local v30, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v30, :cond_27

    .line 2396
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v41

    if-eqz v41, :cond_27

    .line 2397
    if-eqz v26, :cond_26

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2400
    :cond_26
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2403
    .end local v30           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_3
    move-exception v10

    .line 2404
    .restart local v10       #ex:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2407
    .end local v10           #ex:Landroid/os/RemoteException;
    :cond_27
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2409
    if-eqz v18, :cond_28

    .line 2410
    if-nez v23, :cond_28

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v42, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v43

    invoke-virtual/range {v41 .. v44}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2424
    :cond_28
    :goto_c
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2414
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v41

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0x80

    move/from16 v41, v0

    if-eqz v41, :cond_28

    .line 2415
    const-string v41, "WindowManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Home long press behavior, keyguardOn = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-nez v23, :cond_28

    .line 2417
    if-nez v18, :cond_28

    .line 2418
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_c

    .line 2425
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v26           #mSupportDoubleClick:Z
    :cond_2a
    const/16 v41, 0x52

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_2d

    .line 2427
    const/4 v7, 0x1

    .line 2429
    .local v7, chordBug:I
    if-eqz v8, :cond_2c

    if-nez v31, :cond_2c

    .line 2430
    if-eqz v18, :cond_2b

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v42, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v43

    invoke-virtual/range {v41 .. v44}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2434
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2c

    and-int/lit8 v41, v27, 0x1

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2c

    .line 2435
    new-instance v15, Landroid/content/Intent;

    const-string v41, "android.intent.action.BUG_REPORT"

    move-object/from16 v0, v41

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2436
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2437
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2456
    .end local v15           #intent:Landroid/content/Intent;
    :cond_2c
    if-nez v8, :cond_3c

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2458
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 2460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3c

    .line 2462
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 2463
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2467
    .end local v7           #chordBug:I
    :cond_2d
    const/16 v41, 0x54

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_30

    .line 2468
    if-eqz v8, :cond_2f

    .line 2469
    if-nez v31, :cond_2e

    .line 2470
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 2471
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 2480
    :cond_2e
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2473
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v41, v0

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_2e

    .line 2474
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    .line 2475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2e

    .line 2476
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 2477
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2481
    :cond_30
    const/16 v41, 0xbb

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_33

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v41, v0

    const/16 v42, 0xbb

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v41

    if-eqz v41, :cond_31

    .line 2483
    const-string v41, "WindowManager"

    const-string v42, "APP_SWITCH event isSystemKeyEventRequested() is true"

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2486
    :cond_31
    if-eqz v8, :cond_32

    if-nez v31, :cond_32

    .line 2487
    if-nez v23, :cond_32

    .line 2491
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2497
    :cond_32
    :goto_d
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2492
    :catch_4
    move-exception v9

    .line 2493
    .local v9, e:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException when showing recent apps"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2501
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_33
    const/16 v41, 0xd4

    move/from16 v0, v22

    move/from16 v1, v41

    if-eq v0, v1, :cond_34

    const/16 v41, 0xd5

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_36

    .line 2502
    :cond_34
    if-eqz v8, :cond_3c

    if-nez v23, :cond_3c

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v42, "input_method"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 2504
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_35

    .line 2505
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 2507
    :cond_35
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2511
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_36
    const/16 v41, 0xd6

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_39

    .line 2512
    if-eqz v8, :cond_3c

    if-nez v23, :cond_3c

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    if-nez v41, :cond_37

    .line 2518
    const-string v41, "statusbar"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2520
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    if-eqz v41, :cond_38

    .line 2522
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2528
    :cond_38
    :goto_e
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2523
    :catch_5
    move-exception v9

    .line 2525
    .restart local v9       #e:Landroid/os/RemoteException;
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_e

    .line 2531
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_39
    const/16 v41, 0xd8

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_3c

    .line 2532
    if-eqz v8, :cond_3c

    if-nez v23, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    move/from16 v41, v0

    if-nez v41, :cond_3c

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    if-nez v41, :cond_3a

    .line 2538
    const-string v41, "statusbar"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2540
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3b

    .line 2542
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 2548
    :cond_3b
    :goto_f
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2543
    :catch_6
    move-exception v9

    .line 2545
    .restart local v9       #e:Landroid/os/RemoteException;
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_f

    .line 2557
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v41, v0

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_3f

    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 2559
    .local v21, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v21 .. v22}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v41

    if-eqz v41, :cond_3f

    .line 2560
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeShortcutKeyUp:Z

    .line 2561
    if-eqz v8, :cond_3d

    if-nez v31, :cond_3d

    if-nez v23, :cond_3d

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v33

    .line 2563
    .local v33, shortcutIntent:Landroid/content/Intent;
    if-eqz v33, :cond_3e

    .line 2564
    const/high16 v41, 0x1000

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2566
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2579
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_3d
    :goto_10
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2567
    .restart local v33       #shortcutIntent:Landroid/content/Intent;
    :catch_7
    move-exception v10

    .line 2568
    .local v10, ex:Landroid/content/ActivityNotFoundException;
    const-string v41, "WindowManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dropping shortcut key combination because the activity to which it is registered was not found: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "+"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 2574
    .end local v10           #ex:Landroid/content/ActivityNotFoundException;
    :cond_3e
    const-string v41, "WindowManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dropping unregistered shortcut key combination: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutKeyPressed:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "+"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2584
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_3f
    if-eqz v8, :cond_40

    if-nez v31, :cond_40

    const/high16 v41, 0x1

    and-int v41, v41, v27

    if-eqz v41, :cond_40

    .line 2586
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 2587
    .restart local v21       #kcm:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v41, v0

    const v42, -0x70001

    and-int v42, v42, v27

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v33

    .line 2590
    .restart local v33       #shortcutIntent:Landroid/content/Intent;
    if-eqz v33, :cond_40

    .line 2591
    const/high16 v41, 0x1000

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2593
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    .line 2599
    :goto_11
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2594
    :catch_8
    move-exception v10

    .line 2595
    .restart local v10       #ex:Landroid/content/ActivityNotFoundException;
    const-string v41, "WindowManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 2604
    .end local v10           #ex:Landroid/content/ActivityNotFoundException;
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_40
    if-eqz v8, :cond_41

    if-nez v31, :cond_41

    .line 2605
    sget-object v41, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2606
    .local v6, category:Ljava/lang/String;
    if-eqz v6, :cond_41

    .line 2607
    const-string v41, "android.intent.action.MAIN"

    move-object/from16 v0, v41

    invoke-static {v0, v6}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 2608
    .restart local v15       #intent:Landroid/content/Intent;
    const/high16 v41, 0x1000

    move/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2610
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_b} :catch_9

    .line 2616
    :goto_12
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2611
    :catch_9
    move-exception v10

    .line 2612
    .restart local v10       #ex:Landroid/content/ActivityNotFoundException;
    const-string v41, "WindowManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", category="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 2621
    .end local v6           #category:Ljava/lang/String;
    .end local v10           #ex:Landroid/content/ActivityNotFoundException;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_41
    if-eqz v8, :cond_43

    if-nez v31, :cond_43

    const/16 v41, 0x3d

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_43

    .line 2622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v41, v0

    if-nez v41, :cond_44

    .line 2623
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v41

    move/from16 v0, v41

    and-int/lit16 v0, v0, -0xc2

    move/from16 v32, v0

    .line 2624
    .local v32, shiftlessModifiers:I
    const/16 v41, 0x2

    move/from16 v0, v32

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v41

    if-nez v41, :cond_42

    const/high16 v41, 0x1

    move/from16 v0, v32

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v41

    if-eqz v41, :cond_44

    .line 2627
    :cond_42
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2631
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a

    .line 2635
    :goto_13
    const-wide/16 v41, -0x1

    goto/16 :goto_3

    .line 2632
    :catch_a
    move-exception v9

    .line 2633
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException when showing recent apps"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 2638
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v32           #shiftlessModifiers:I
    :cond_43
    if-nez v8, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v41, v0

    if-eqz v41, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v41, v0

    and-int v41, v41, v27

    if-nez v41, :cond_44

    .line 2640
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2644
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 2651
    :cond_44
    :goto_14
    const-wide/16 v41, 0x0

    goto/16 :goto_3

    .line 2645
    :catch_b
    move-exception v9

    .line 2646
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v41, "WindowManager"

    const-string v42, "RemoteException when showing recent apps"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 23
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 3890
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_2

    const/4 v5, 0x1

    .line 3891
    .local v5, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 3892
    .local v4, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 3893
    .local v13, keyCode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/4 v10, 0x1

    .line 3894
    .local v10, isPhoneAndHasHardKey:Z
    :goto_1
    and-int/lit8 v20, p2, 0x3

    if-eqz v20, :cond_4

    const/4 v12, 0x1

    .line 3899
    .local v12, isWakeKey:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "enterprise_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3904
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 3905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v15

    .line 3906
    .local v15, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v15, :cond_6

    .line 3907
    const/4 v8, 0x1

    .line 3908
    .local v8, isAllowed:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_5

    .line 3909
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v8

    .line 3913
    :goto_3
    if-nez v8, :cond_6

    .line 3914
    const/16 v17, 0x0

    .line 4369
    .end local v8           #isAllowed:Z
    .end local v15           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    :goto_4
    return v17

    .line 3890
    .end local v4           #canceled:Z
    .end local v5           #down:Z
    .end local v10           #isPhoneAndHasHardKey:Z
    .end local v12           #isWakeKey:Z
    .end local v13           #keyCode:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 3893
    .restart local v4       #canceled:Z
    .restart local v5       #down:Z
    .restart local v13       #keyCode:I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 3894
    .restart local v10       #isPhoneAndHasHardKey:Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 3911
    .restart local v8       #isAllowed:Z
    .restart local v12       #isWakeKey:Z
    .restart local v15       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v8

    goto :goto_3

    .line 3921
    .end local v8           #isAllowed:Z
    .end local v15           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_6
    const/high16 v20, 0x100

    and-int v20, v20, p2

    if-eqz v20, :cond_7

    const/4 v9, 0x1

    .line 3927
    .local v9, isInjected:Z
    :goto_5
    if-eqz p3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v14

    .line 3931
    .local v14, keyguardActive:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 3933
    const/16 v17, 0x0

    goto :goto_4

    .line 3921
    .end local v9           #isInjected:Z
    .end local v14           #keyguardActive:Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 3927
    .restart local v9       #isInjected:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v14

    goto :goto_6

    .line 3941
    .restart local v14       #keyguardActive:Z
    :cond_9
    if-eqz v5, :cond_a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_a

    .line 3944
    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3959
    :cond_a
    const/16 v17, 0x1

    .line 3961
    .local v17, result:I
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-eq v13, v0, :cond_b

    .line 3962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedInputMode()Z

    move-result v20

    if-nez v20, :cond_b

    .line 3963
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 3964
    const-string v20, "MTP-PWM"

    const-string v21, "MTP is running. Blocking all keys"

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    and-int/lit8 v17, v17, -0x2

    .line 3966
    goto :goto_4

    .line 3971
    :cond_b
    if-nez p3, :cond_c

    if-eqz v9, :cond_d

    .line 3973
    :cond_c
    const/16 v17, 0x1

    .line 3976
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v13, v0, :cond_10

    .line 3977
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ignore screen on : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 3985
    :cond_d
    const/16 v17, 0x0

    .line 3988
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-eq v13, v0, :cond_e

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v13, v0, :cond_f

    .line 3989
    :cond_e
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ignore screen off : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowLockScreen:Z

    .line 3991
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 3998
    :cond_f
    if-eqz v5, :cond_10

    if-eqz v12, :cond_10

    .line 3999
    if-eqz v14, :cond_12

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 4020
    :cond_10
    :goto_7
    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_4

    .line 4326
    :sswitch_0
    if-eqz v10, :cond_1

    .line 4327
    if-eqz v5, :cond_30

    .line 4329
    if-nez v12, :cond_11

    if-eqz v10, :cond_11

    .line 4331
    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4333
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect()V

    .line 4336
    :cond_11
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 4338
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    .line 4339
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    .line 4340
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 4341
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4342
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    goto/16 :goto_4

    .line 4006
    :cond_12
    or-int/lit8 v17, v17, 0x2

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardHiding(IZ)Z

    move-result v20

    if-nez v20, :cond_10

    .line 4012
    and-int/lit8 v17, v17, -0x3

    goto :goto_7

    .line 4026
    :sswitch_1
    if-nez v10, :cond_16

    const/16 v20, 0x19

    move/from16 v0, v20

    if-eq v13, v0, :cond_13

    const/16 v20, 0xa9

    move/from16 v0, v20

    if-ne v13, v0, :cond_16

    .line 4028
    :cond_13
    if-eqz v5, :cond_15

    .line 4029
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 4031
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4032
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 4033
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 4034
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4035
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4055
    :cond_14
    :goto_8
    if-eqz v5, :cond_1a

    .line 4056
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 4057
    .local v18, telephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v19

    .line 4058
    .local v19, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v18, :cond_19

    .line 4060
    :try_start_0
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 4067
    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4076
    and-int/lit8 v17, v17, -0x2

    goto/16 :goto_4

    .line 4038
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_15
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4039
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_8

    .line 4041
    :cond_16
    if-nez v10, :cond_14

    const/16 v20, 0x18

    move/from16 v0, v20

    if-eq v13, v0, :cond_17

    const/16 v20, 0xa8

    move/from16 v0, v20

    if-ne v13, v0, :cond_14

    .line 4043
    :cond_17
    if-eqz v5, :cond_18

    .line 4044
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 4046
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4047
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4048
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_8

    .line 4051
    :cond_18
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4052
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_8

    .line 4090
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .restart local v19       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v6

    .line 4091
    .local v6, ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4105
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 4106
    new-instance v20, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 4107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto/16 :goto_4

    .line 4113
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 4114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 4115
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_4

    .line 4123
    :sswitch_2
    and-int/lit8 v17, v17, -0x2

    .line 4124
    if-eqz v5, :cond_1e

    .line 4125
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 4126
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    .line 4127
    .local v7, hungUp:Z
    if-eqz v18, :cond_1b

    .line 4129
    :try_start_1
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 4134
    :cond_1b
    :goto_9
    if-eqz p3, :cond_1c

    if-eqz v7, :cond_1d

    :cond_1c
    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_4

    .line 4130
    :catch_1
    move-exception v6

    .line 4131
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 4134
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_1d
    const/16 v20, 0x0

    goto :goto_a

    .line 4136
    .end local v7           #hungUp:Z
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_1f

    .line 4139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v20

    if-nez v20, :cond_1

    .line 4143
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_1

    .line 4145
    and-int/lit8 v20, v17, -0x3

    or-int/lit8 v17, v20, 0x4

    goto/16 :goto_4

    .line 4153
    :sswitch_3
    and-int/lit8 v17, v17, -0x2

    .line 4154
    if-eqz v5, :cond_29

    .line 4155
    if-eqz p3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_20

    .line 4157
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4158
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 4159
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4163
    :cond_20
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Landroid/view/IWindowManager;->getWakeFlag(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4169
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    if-eqz v10, :cond_23

    const/4 v11, 0x1

    .line 4171
    .local v11, isScreenOnPolicy:Z
    :goto_c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 4172
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v19

    .line 4173
    .restart local v19       #voipInterfaceService:Landroid/os/IVoIPInterface;
    const/4 v7, 0x0

    .line 4174
    .restart local v7       #hungUp:Z
    if-eqz v18, :cond_21

    .line 4176
    :try_start_3
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_24

    .line 4179
    const-string v20, "KOR"

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_21

    .line 4180
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4222
    :cond_21
    :goto_d
    if-eqz p3, :cond_22

    if-nez v7, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    :cond_22
    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v20, v0

    const/16 v21, 0x1a

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4227
    const-string v20, "WindowManager"

    const-string v21, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSystemKeyEventRequested() is true"

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    or-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 4165
    .end local v7           #hungUp:Z
    .end local v11           #isScreenOnPolicy:Z
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_2
    move-exception v16

    .line 4166
    .local v16, re:Landroid/os/RemoteException;
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    goto :goto_b

    .line 4169
    .end local v16           #re:Landroid/os/RemoteException;
    :cond_23
    const/4 v11, 0x0

    goto :goto_c

    .line 4182
    .restart local v7       #hungUp:Z
    .restart local v11       #isScreenOnPolicy:Z
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .restart local v19       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_24
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_26

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_26

    if-nez p3, :cond_25

    if-eqz v11, :cond_26

    .line 4187
    :cond_25
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v7

    goto :goto_d

    .line 4189
    :cond_26
    if-eqz v19, :cond_21

    .line 4190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_21

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v20

    if-nez v20, :cond_27

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v20

    if-eqz v20, :cond_21

    .line 4194
    :cond_27
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    goto :goto_d

    .line 4198
    :catch_3
    move-exception v6

    .line 4199
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 4222
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_28
    const/16 v20, 0x0

    goto :goto_e

    .line 4232
    .end local v7           #hungUp:Z
    .end local v11           #isScreenOnPolicy:Z
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_29
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4233
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4234
    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2d

    :cond_2a
    const/16 v20, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 4235
    and-int/lit8 v20, v17, -0x3

    or-int/lit8 v17, v20, 0x4

    .line 4239
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v20, v0

    const/16 v21, 0x1a

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 4240
    const-string v20, "WindowManager"

    const-string v21, "in interceptKeyBeforeQueueing() KEYCODE_POWER Up event isSystemKeyEventRequested() is true"

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    or-int/lit8 v17, v17, 0x1

    .line 4242
    and-int/lit8 v17, v17, -0x5

    .line 4245
    :cond_2c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_4

    .line 4234
    :cond_2d
    const/16 v20, 0x0

    goto :goto_f

    .line 4253
    :sswitch_4
    if-eqz v5, :cond_1

    .line 4254
    and-int/lit8 v20, v17, 0x1

    if-nez v20, :cond_1

    .line 4255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    new-instance v22, Landroid/view/KeyEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 4265
    :sswitch_5
    if-eqz v5, :cond_2e

    .line 4266
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 4267
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_2e

    .line 4269
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v20

    if-eqz v20, :cond_1

    .line 4281
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    :goto_10
    :sswitch_6
    const/16 v20, 0x4f

    move/from16 v0, v20

    if-ne v13, v0, :cond_2f

    const-string v20, "ril.factory_mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "PBA"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2f

    .line 4283
    const-string v20, "WindowManager"

    const-string v21, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4274
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_4
    move-exception v6

    .line 4275
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 4292
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2f
    :sswitch_7
    and-int/lit8 v20, v17, 0x1

    if-nez v20, :cond_1

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    new-instance v22, Landroid/view/KeyEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 4303
    :sswitch_8
    if-eqz v5, :cond_1

    .line 4304
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 4305
    .restart local v18       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_1

    .line 4307
    :try_start_6
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4308
    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v20 .. v21}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4314
    and-int/lit8 v17, v17, -0x2

    goto/16 :goto_4

    .line 4316
    :catch_5
    move-exception v6

    .line 4317
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 4345
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v18           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_30
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    .line 4346
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_4

    .line 4358
    :sswitch_9
    if-eqz v5, :cond_1

    .line 4359
    if-eqz v10, :cond_1

    .line 4361
    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4363
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect()V

    goto/16 :goto_4

    .line 4020
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_6
        0x52 -> :sswitch_9
        0x54 -> :sswitch_9
        0x55 -> :sswitch_5
        0x56 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_4
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_7
        0xa4 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
        0xbb -> :sswitch_9
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .parameter "policyFlags"

    .prologue
    .line 4375
    const/4 v1, 0x0

    .line 4377
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 4379
    .local v0, isWakeMotion:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4380
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4382
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    .line 4388
    :cond_0
    :goto_1
    return v1

    .line 4377
    .end local v0           #isWakeMotion:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4385
    .restart local v0       #isWakeMotion:Z
    :cond_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1126
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isFMActive()Z
    .locals 3

    .prologue
    .line 3718
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3719
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3720
    const-string v1, "WindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    const/4 v1, 0x0

    .line 3723
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 4596
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 3706
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3707
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3708
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    const/4 v1, 0x0

    .line 3711
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isNavigationBarCanHide(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 5490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->isNavigationBarCanHide(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 4571
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 4576
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isStatusBarCanHide(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->isStatusBarCanHide(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2722
    const-string v0, "WindowManager"

    const-string v1, "Disabled Home Launching Case #1"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :goto_0
    return-void

    .line 2723
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 2744
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 2745
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 27
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 3053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 3338
    :cond_0
    :goto_0
    return-void

    .line 3057
    :cond_1
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3058
    .local v4, fl:I
    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3060
    .local v5, sim:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3061
    .local v8, pf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3062
    .local v9, df:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3063
    .local v10, cf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3065
    .local v11, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v23, 0x1

    .line 3069
    .local v23, hasNavBar:Z
    :goto_1
    const/16 v22, 0x0

    .line 3070
    .local v22, bMwModeCheck:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v22

    .line 3074
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_9

    .line 3075
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3076
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3078
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3080
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3081
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3288
    :goto_2
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_2

    .line 3289
    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3290
    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3294
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 3295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3306
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3310
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xbb6

    if-ne v2, v3, :cond_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3311
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 3312
    .local v26, top:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v26, v26, v2

    .line 3313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v26

    if-le v2, v0, :cond_5

    .line 3314
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3316
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 3317
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v26, v26, v2

    .line 3318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, v26

    if-le v2, v0, :cond_6

    .line 3319
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3326
    :cond_6
    if-eqz v22, :cond_0

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v25

    .line 3328
    .local v25, sService:Landroid/sec/multiwindow/IMultiWindowManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    sub-int v24, v2, v3

    .line 3329
    .local v24, height:I
    if-gez v24, :cond_7

    .line 3330
    const/16 v24, 0x0

    .line 3332
    :cond_7
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->notifySIP(I)Z

    goto/16 :goto_0

    .line 3065
    .end local v22           #bMwModeCheck:Z
    .end local v23           #hasNavBar:Z
    .end local v24           #height:I
    .end local v25           #sService:Landroid/sec/multiwindow/IMultiWindowManager;
    .end local v26           #top:I
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 3083
    .restart local v22       #bMwModeCheck:Z
    .restart local v23       #hasNavBar:Z
    :cond_9
    and-int/lit16 v15, v5, 0xf0

    .line 3085
    .local v15, adjust:I
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_14

    .line 3094
    if-eqz p3, :cond_a

    .line 3097
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 3100
    :cond_a
    if-eqz v22, :cond_b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 3102
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3103
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3104
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3105
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3107
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf1 top="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  bottom="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  left"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  right"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :goto_3
    const/16 v2, 0x10

    if-eq v15, v2, :cond_12

    .line 3142
    if-eqz v22, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 3144
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3148
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3149
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3152
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf2 top="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  bottom="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  left"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  right"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :goto_4
    const/16 v2, 0x30

    if-eq v15, v2, :cond_13

    .line 3169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 3110
    :cond_b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_10

    .line 3119
    :cond_c
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_5
    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3121
    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_6
    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3124
    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_7
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3119
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_5

    .line 3121
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_6

    .line 3124
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_7

    .line 3134
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3155
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3163
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3166
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3174
    :cond_13
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 3177
    :cond_14
    and-int/lit16 v2, v4, 0x100

    if-eqz v2, :cond_1e

    .line 3182
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_19

    .line 3184
    :cond_15
    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_8
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3185
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3186
    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_9
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3189
    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_a
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3231
    :goto_b
    const/16 v2, 0x30

    if-eq v15, v2, :cond_1d

    .line 3232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 3184
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_8

    .line 3186
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_9

    .line 3189
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_a

    .line 3198
    :cond_19
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-ne v2, v3, :cond_1a

    .line 3200
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3201
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    .line 3209
    :cond_1a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-ne v2, v3, :cond_1b

    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1b

    .line 3213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3217
    :cond_1b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_1c

    .line 3219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3220
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3225
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3237
    :cond_1d
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 3239
    :cond_1e
    if-eqz p3, :cond_1f

    .line 3244
    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v14, v4

    move-object/from16 v16, p3

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 3250
    :cond_1f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_20

    .line 3255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 3261
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3265
    const/16 v2, 0x10

    if-eq v15, v2, :cond_21

    .line 3266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 3276
    :goto_c
    const/16 v2, 0x30

    if-eq v15, v2, :cond_22

    .line 3277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3279
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 3271
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3274
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    .line 3282
    :cond_22
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2
.end method

.method public lockNow()V
    .locals 3

    .prologue
    .line 5001
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5002
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5003
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5004
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 791
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v1, :cond_1

    .line 800
    const/4 v0, 0x0

    .line 818
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 810
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_0

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3627
    if-eqz p3, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    .line 3628
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyboardVisibility()V

    .line 3630
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 3631
    .local v0, awakeNow:Z
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 3632
    if-eqz v0, :cond_2

    .line 3636
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 3655
    :cond_0
    :goto_1
    return-void

    .end local v0           #awakeNow:Z
    :cond_1
    move v1, v3

    .line 3627
    goto :goto_0

    .line 3637
    .restart local v0       #awakeNow:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3638
    if-eqz p3, :cond_0

    .line 3642
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v4, 0x1a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 3647
    :cond_4
    if-eqz p3, :cond_5

    .line 3648
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v3, v2}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_1

    .line 3651
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 6
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5176
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 5178
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5201
    :cond_0
    :goto_1
    return v1

    .end local v0           #hapticsDisabled:Z
    :cond_1
    move v0, v1

    .line 5176
    goto :goto_0

    .line 5184
    .restart local v0       #hapticsDisabled:Z
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 5195
    if-lt p2, v5, :cond_0

    const/16 v3, 0x15

    if-gt p2, v3, :cond_0

    .line 5197
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p2}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v2

    .line 5198
    goto :goto_1

    .line 5190
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v5}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v2

    .line 5191
    goto :goto_1

    .line 5184
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    .line 2022
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2060
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 2024
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2032
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2035
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2042
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2048
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2054
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2057
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2022
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_4
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_3
        0x7e3 -> :sswitch_1
    .end sparse-switch
.end method

.method readLidState()V
    .locals 3

    .prologue
    .line 1716
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 1717
    .local v0, sw:I
    if-lez v0, :cond_0

    .line 1718
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    .line 1727
    .end local v0           #sw:I
    :goto_0
    return-void

    .line 1719
    .restart local v0       #sw:I
    :cond_0
    if-nez v0, :cond_1

    .line 1720
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    goto :goto_0

    .line 1724
    .end local v0           #sw:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1722
    .restart local v0       #sw:I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 2001
    if-eqz p2, :cond_0

    .line 2002
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2003
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2005
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 2065
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2066
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2074
    :goto_0
    return-void

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2068
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2070
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2072
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 5583
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(II)I
    .locals 11
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 4640
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4641
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 4643
    .local v1, sensorRotation:I
    const-string v6, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotationForOrientationLw(orient="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", last="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "); user="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_1

    const-string v3, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mLidOpen="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mDockMode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mHdmiPlugged="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mAccelerometerDefault="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " sensorRotation="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/safelog/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    if-gez v1, :cond_0

    .line 4655
    move v1, p2

    .line 4659
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    .line 4661
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 4733
    .local v0, preferredRotation:I
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 4785
    :pswitch_0
    if-ltz v0, :cond_1e

    .line 4786
    monitor-exit v5

    .line 4788
    .end local v0           #preferredRotation:I
    :goto_2
    return v0

    .line 4643
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 4662
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_5

    .line 4667
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_4

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_3
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_3

    .line 4669
    :cond_5
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v9, :cond_9

    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_9

    .line 4676
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_8

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_4
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_4

    .line 4678
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_d

    .line 4682
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    if-eqz v3, :cond_c

    .line 4684
    if-nez p1, :cond_a

    .line 4685
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 4686
    .end local v0           #preferredRotation:I
    :cond_a
    if-ne p1, v4, :cond_b

    .line 4687
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 4689
    .end local v0           #preferredRotation:I
    :cond_b
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 4693
    .end local v0           #preferredRotation:I
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 4695
    .end local v0           #preferredRotation:I
    :cond_d
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v3, :cond_e

    if-eq p1, v8, :cond_f

    const/4 v3, -0x1

    if-eq p1, v3, :cond_f

    :cond_e
    if-eq p1, v9, :cond_f

    if-eq p1, v10, :cond_f

    const/4 v3, 0x6

    if-eq p1, v3, :cond_f

    const/4 v3, 0x7

    if-ne p1, v3, :cond_14

    .line 4704
    :cond_f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_10

    .line 4708
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110014

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_5
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 4713
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_10

    .line 4714
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 4717
    :cond_10
    if-ne v1, v8, :cond_11

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_11

    if-ne p1, v10, :cond_13

    .line 4720
    :cond_11
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_12
    move v3, v2

    .line 4708
    goto :goto_5

    .line 4722
    :cond_13
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 4724
    .end local v0           #preferredRotation:I
    :cond_14
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_15

    .line 4726
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 4730
    .end local v0           #preferredRotation:I
    :cond_15
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 4736
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4737
    monitor-exit v5

    goto/16 :goto_2

    .line 4790
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4739
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    :cond_16
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4743
    .restart local v0       #preferredRotation:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4744
    monitor-exit v5

    goto/16 :goto_2

    .line 4746
    :cond_17
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4750
    .restart local v0       #preferredRotation:I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4751
    monitor-exit v5

    goto/16 :goto_2

    .line 4753
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4757
    .restart local v0       #preferredRotation:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4758
    monitor-exit v5

    goto/16 :goto_2

    .line 4760
    :cond_19
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4764
    .restart local v0       #preferredRotation:I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4765
    monitor-exit v5

    goto/16 :goto_2

    .line 4767
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4768
    monitor-exit v5

    move v0, p2

    goto/16 :goto_2

    .line 4770
    :cond_1b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4774
    .restart local v0       #preferredRotation:I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4775
    monitor-exit v5

    goto/16 :goto_2

    .line 4777
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4778
    monitor-exit v5

    move v0, p2

    goto/16 :goto_2

    .line 4780
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 4788
    .restart local v0       #preferredRotation:I
    :cond_1e
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_2

    .line 4733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    .line 4795
    packed-switch p1, :pswitch_data_0

    .line 4807
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4799
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 4804
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 4795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenOnStartedLw()V
    .locals 0

    .prologue
    .line 5252
    return-void
.end method

.method public screenOnStoppedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5255
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5256
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5258
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 5261
    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 4476
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4477
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4478
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 4479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 4480
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4486
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v0, :cond_0

    .line 4487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    .line 4488
    const-string v0, "WindowManager"

    const-string v1, "mSetIgnore"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 4505
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4506
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4507
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4508
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4509
    return-void

    .line 4480
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4508
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4
    .parameter "screenOnListener"

    .prologue
    const/4 v2, 0x1

    .line 4513
    const v0, 0x11170

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4519
    if-eqz p1, :cond_1

    .line 4520
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 4551
    :goto_0
    const-string v0, "WindowManager"

    const-string v1, "mSetIgnorePWR"

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v0, :cond_0

    .line 4553
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    .line 4554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4562
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4563
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 4564
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4567
    return-void

    .line 4546
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4547
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 4548
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4566
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 1
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 2082
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 2083
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    const v0, 0x10a0011

    .line 2089
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 4622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4623
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4627
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 2999
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3007
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3008
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3009
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3010
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3041
    .end local p8
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_8

    .line 3042
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3047
    :cond_0
    :goto_1
    return-void

    .line 3018
    .restart local p8
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 3019
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3035
    :cond_2
    :goto_2
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p8

    .end local p8
    :cond_3
    invoke-virtual {p7, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3036
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3027
    .restart local p8
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3028
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3029
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 3030
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 3031
    :cond_6
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 3032
    :cond_7
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 3044
    .end local p8
    :cond_8
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    .line 3045
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 5166
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5167
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 5168
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 5169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5170
    invoke-static {p1}, Landroid/view/WindowOrientationListener;->setCurrentAppOrientation(I)V

    .line 5172
    :cond_0
    monitor-exit v1

    .line 5173
    return-void

    .line 5172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHdmiPlugged(Z)V
    .locals 2
    .parameter "plugged"

    .prologue
    .line 3658
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 3659
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 3660
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 3661
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3662
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3663
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3664
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3666
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const v7, 0x1110015

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1387
    if-le p1, p2, :cond_2

    .line 1388
    move v1, p2

    .line 1389
    .local v1, shortSize:I
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1390
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1391
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1393
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1394
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1416
    :goto_0
    mul-int/lit16 v3, v1, 0xa0

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v3, v6

    .line 1419
    .local v2, shortSizeDp:I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    .line 1420
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    if-eqz v3, :cond_5

    const v3, 0x105000a

    :goto_2
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1425
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110036

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1429
    const-string v3, "qemu.hw.mainkeys"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, navBarOverride:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1431
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1435
    :cond_0
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeight:I

    .line 1439
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_5
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidth:I

    .line 1444
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    if-eqz v3, :cond_9

    .line 1445
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 1454
    :goto_6
    return-void

    .line 1396
    .end local v0           #navBarOverride:Ljava/lang/String;
    .end local v2           #shortSizeDp:I
    :cond_1
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1397
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_0

    .line 1400
    .end local v1           #shortSize:I
    :cond_2
    move v1, p1

    .line 1401
    .restart local v1       #shortSize:I
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1402
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1403
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1405
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1406
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1408
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1409
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .restart local v2       #shortSizeDp:I
    :cond_4
    move v3, v5

    .line 1419
    goto/16 :goto_1

    .line 1420
    :cond_5
    const v3, 0x105000b

    goto/16 :goto_2

    .line 1432
    .restart local v0       #navBarOverride:Ljava/lang/String;
    :cond_6
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto :goto_3

    :cond_7
    move v3, v5

    .line 1435
    goto :goto_4

    :cond_8
    move v3, v5

    .line 1439
    goto :goto_5

    .line 1448
    :cond_9
    const-string v3, "portrait"

    const-string v4, "persist.demo.hdmirotation"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1449
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto :goto_6

    .line 1451
    :cond_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto :goto_6
.end method

.method public setNavigationBarCanHide(Landroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "componentName"
    .parameter "canHide"

    .prologue
    .line 5486
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->setNavigationBarCanHide(Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public setNavigationBarCanHideNotInActivity(Z)V
    .locals 0
    .parameter "canHide"

    .prologue
    .line 5482
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanHide:Z

    .line 5483
    return-void
.end method

.method public setRotationLw(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotationBoosterLock:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->acquire(I)V

    .line 4814
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 4815
    return-void
.end method

.method public setStatusBarCanHide(Landroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "componentName"
    .parameter "canHide"

    .prologue
    .line 5443
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHideConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->setStatusBarCanHide(Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public setStatusBarCanHideNotInActivity(Z)V
    .locals 0
    .parameter "canHide"

    .prologue
    .line 5439
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    .line 5440
    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 3
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    .line 4828
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4831
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 4832
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4835
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4843
    :goto_0
    return-void

    .line 4839
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4910
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4954
    return-void
.end method

.method showGlobalActionsDialog()V
    .locals 5

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    .line 1111
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1116
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 1117
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1118
    if-eqz v0, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1123
    :cond_1
    return-void

    .line 1113
    .end local v0           #keyguardShowing:Z
    :cond_2
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x1030128

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    goto :goto_0
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 3
    .parameter "behavior"

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 1226
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 1227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1270
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startDockOrHome()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5092
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5093
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 5095
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5113
    :cond_0
    :goto_0
    return-void

    .line 5097
    :catch_0
    move-exception v3

    .line 5100
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_sync_alive"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v3, :cond_4

    .line 5102
    :try_start_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5103
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_3

    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5104
    :cond_3
    const-string v3, "PWM - MTP"

    const-string v4, "com.android.HOME_RESUME_MTP sent"

    invoke-static {v3, v4}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.HOME_RESUME_MTP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5107
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v1

    .line 5108
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5111
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 1830
    packed-switch p1, :pswitch_data_0

    .line 1841
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1833
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1835
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1837
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1839
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 4901
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4902
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 4903
    monitor-exit v1

    .line 4904
    return-void

    .line 4903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 4886
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 4887
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4888
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4889
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 4891
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4896
    monitor-exit v1

    .line 4897
    return-void

    .line 4896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x1

    .line 842
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    const/4 v0, 0x0

    .line 846
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 849
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 854
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 857
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 1
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5037
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->updateRotation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5041
    :goto_0
    return-void

    .line 5038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 25

    .prologue
    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1458
    .local v18, resolver:Landroid/content/ContentResolver;
    const/16 v19, 0x0

    .line 1459
    .local v19, updateRotation:Z
    const/4 v4, 0x0

    .line 1460
    .local v4, addView:Landroid/view/View;
    const/16 v17, 0x0

    .line 1463
    .local v17, removeView:Landroid/view/View;
    const-string v22, "end_button_behavior"

    const/16 v23, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1466
    .local v7, endcallBehavior:I
    const-string v22, "incall_power_button_behavior"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1469
    .local v11, incallPowerBehavior:I
    const-string v22, "accelerometer_rotation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1471
    .local v3, accelerometerDefault:I
    const-string v22, "user_rotation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 1474
    .local v20, userRotation:I
    const-string v22, "window_orientation_listener_log"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1476
    .local v13, logEnabled:I
    const-string v22, "pointer_location"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1478
    .local v16, pointerLocation:I
    const-string v22, "screen_off_timeout"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1480
    .local v12, lockScreenTimeout:I
    const-string v22, "default_input_method"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1483
    .local v10, imId:Ljava/lang/String;
    const-string v22, "double_tab_launch"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1485
    .local v5, doubleTapBehavior:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1486
    :try_start_0
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1487
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1490
    if-nez v3, :cond_9

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1493
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v3, :cond_0

    .line 1496
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1500
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    move-object/from16 v24, v0

    if-eqz v13, :cond_a

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setLogEnabled(Z)V

    .line 1502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 1504
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1505
    if-eqz v16, :cond_b

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 1507
    new-instance v22, Lcom/android/internal/widget/PointerLocationView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1518
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1519
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_c

    const/4 v9, 0x1

    .line 1520
    .local v9, hasSoftInput:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v9, :cond_2

    .line 1521
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1522
    const/16 v19, 0x1

    .line 1524
    :cond_2
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    if-eqz v19, :cond_3

    .line 1526
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1528
    :cond_3
    if-eqz v4, :cond_4

    .line 1529
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1532
    .local v14, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v22, 0x7df

    move/from16 v0, v22

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1533
    const/16 v22, 0x518

    move/from16 v0, v22

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1537
    const/16 v22, -0x3

    move/from16 v0, v22

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1538
    const-string v22, "PointerLocation"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 1541
    .local v21, wm:Landroid/view/WindowManager;
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1542
    move-object/from16 v0, v21

    invoke-interface {v0, v4, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1546
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v22, v0

    const-string v23, "PointerLocationView"

    invoke-interface/range {v22 .. v23}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1556
    .end local v14           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #wm:Landroid/view/WindowManager;
    :cond_4
    :goto_4
    if-eqz v17, :cond_6

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/InputChannel;->dispose()V

    .line 1560
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1563
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 1565
    .restart local v21       #wm:Landroid/view/WindowManager;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1569
    .end local v21           #wm:Landroid/view/WindowManager;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 1602
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 1604
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v22, v0

    const-string v23, "PointerMiniStatusBarView"

    invoke-interface/range {v22 .. v23}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptInputHandler:Landroid/view/InputHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1617
    :cond_8
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1618
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_d

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    const/16 v23, 0x80

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 1620
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1631
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :goto_6
    return-void

    .line 1490
    .end local v9           #hasSoftInput:Z
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1500
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1512
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    move-object/from16 v17, v0

    .line 1513
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_2

    .line 1524
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v22

    .line 1519
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1550
    .restart local v9       #hasSoftInput:Z
    .restart local v14       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v21       #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v8

    .line 1551
    .local v8, ex:Landroid/os/RemoteException;
    const-string v22, "WindowManager"

    const-string v23, "Could not set up input monitoring channel for PointerLocation."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1608
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v14           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v8

    .line 1609
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v22, "WindowManager"

    const-string v23, "Could not set up input monitoring channel for PointerLocation."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1623
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    :cond_d
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 1626
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v6

    .line 1627
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_6
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 5592
    return-void
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 4981
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 4982
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 4984
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4985
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4987
    :cond_0
    monitor-exit v1

    .line 4988
    return-void

    .line 4987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 5
    .parameter "type"

    .prologue
    const/16 v3, 0x12

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v0, 0x2

    .line 1769
    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    const/16 v4, 0x63

    if-gt p1, v4, :cond_0

    .line 1825
    :goto_0
    :sswitch_0
    return v0

    .line 1772
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1824
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1774
    :sswitch_1
    const/16 v0, 0xe

    goto :goto_0

    .line 1776
    :sswitch_2
    const/16 v0, 0xf

    goto :goto_0

    .line 1778
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 1780
    goto :goto_0

    .line 1782
    :sswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 1784
    goto :goto_0

    .line 1786
    :sswitch_7
    const/16 v0, 0xb

    goto :goto_0

    .line 1788
    :sswitch_8
    const/16 v0, 0xc

    goto :goto_0

    .line 1790
    :sswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 1792
    :sswitch_a
    const/16 v0, 0x13

    goto :goto_0

    .line 1794
    :sswitch_b
    const/16 v0, 0x9

    goto :goto_0

    .line 1796
    :sswitch_c
    const/16 v0, 0xa

    goto :goto_0

    .line 1798
    :sswitch_d
    const/16 v0, 0x10

    goto :goto_0

    .line 1800
    :sswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 1802
    :sswitch_f
    const/16 v0, 0x15

    goto :goto_0

    .line 1804
    :sswitch_10
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_11
    move v0, v3

    .line 1806
    goto :goto_0

    .line 1810
    :sswitch_12
    const/16 v0, 0x14

    goto :goto_0

    .line 1812
    :sswitch_13
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_14
    move v0, v3

    .line 1814
    goto :goto_0

    .line 1816
    :sswitch_15
    const/16 v0, 0x16

    goto :goto_0

    .line 1818
    :sswitch_16
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_17
    move v0, v2

    .line 1820
    goto :goto_0

    :sswitch_18
    move v0, v1

    .line 1822
    goto :goto_0

    .line 1772
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_9
        0x7d4 -> :sswitch_7
        0x7d5 -> :sswitch_11
        0x7d6 -> :sswitch_e
        0x7d7 -> :sswitch_10
        0x7d8 -> :sswitch_4
        0x7d9 -> :sswitch_8
        0x7da -> :sswitch_a
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_2
        0x7df -> :sswitch_f
        0x7e0 -> :sswitch_12
        0x7e1 -> :sswitch_3
        0x7e2 -> :sswitch_13
        0x7e3 -> :sswitch_14
        0x7e4 -> :sswitch_d
        0x7e5 -> :sswitch_15
        0x7e6 -> :sswitch_16
        0x834 -> :sswitch_17
        0x835 -> :sswitch_18
    .end sparse-switch
.end method

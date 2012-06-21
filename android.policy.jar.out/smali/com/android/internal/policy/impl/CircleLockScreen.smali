.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

.field private mMissedEventWidget:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

.field private mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 21
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 379
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 67
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 96
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 101
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 102
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 103
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 108
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 359
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 361
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 362
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 381
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 382
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 383
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 385
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 393
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWindowManager:Landroid/view/IWindowManager;

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 399
    const/16 v20, 0x0

    .line 400
    .local v20, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v10, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 401
    .local v10, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v20

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentLockScreenString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const v3, 0x102033f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 405
    .local v19, statement:Landroid/widget/TextView;
    if-eqz v19, :cond_0

    .line 406
    if-eqz v20, :cond_8

    .line 407
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v10           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v19           #statement:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 421
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 422
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 424
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 425
    .local v12, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 427
    const v3, 0x1090053

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v12, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 437
    :goto_1
    const v3, 0x10202de

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    .line 442
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_2

    .line 443
    :cond_1
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    .line 446
    :cond_2
    const v3, 0x10202e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 449
    const v3, 0x10202e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    const v3, 0x10202e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 457
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 462
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 466
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_f

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v13, 0x0

    .line 474
    .local v13, isLiveWallpaper:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 475
    .local v17, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const/4 v15, 0x1

    .line 476
    .local v15, isRippleEffect:Z
    :goto_8
    if-nez v13, :cond_12

    if-eqz v17, :cond_12

    if-eqz v15, :cond_12

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 478
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    .line 539
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 550
    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 553
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 554
    new-instance v3, Lcom/android/internal/policy/impl/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    .line 559
    :goto_a
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v14

    .line 560
    .local v14, isNewMissedWidgetIsUsed:Z
    if-eqz v14, :cond_14

    .line 561
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 567
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const/16 v16, 0x1

    .line 568
    .local v16, isTickerOn:Z
    :goto_c
    if-eqz v16, :cond_17

    .line 569
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_16

    .line 570
    new-instance v4, Lcom/android/internal/policy/impl/TickerWidget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    .line 580
    :goto_d
    new-instance v3, Lcom/android/internal/policy/impl/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    .line 587
    const v3, 0x10202df

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 594
    const v3, 0x10202e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 597
    const v3, 0x10202e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v3, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v5, -0x1

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v5, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 607
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_18

    .line 608
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 610
    .local v18, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 615
    .end local v18           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    .line 618
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_5

    .line 619
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_5

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 623
    .local v7, mChecked:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0xde

    :goto_f
    if-ge v7, v3, :cond_1a

    const/4 v11, 0x1

    .line 624
    .local v11, flag:Z
    :goto_10
    if-eqz v11, :cond_5

    .line 626
    new-instance v6, Lcom/android/internal/policy/impl/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    .line 642
    .local v6, helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;
    new-instance v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getItemCount()I

    move-result v8

    move-object/from16 v5, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 649
    .end local v6           #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;
    .end local v7           #mChecked:I
    .end local v11           #flag:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_6

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v5, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 653
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 654
    const v3, 0x10202e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 657
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 658
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 668
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 670
    return-void

    .line 412
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    .end local v13           #isLiveWallpaper:Z
    .end local v14           #isNewMissedWidgetIsUsed:Z
    .end local v15           #isRippleEffect:Z
    .end local v16           #isTickerOn:Z
    .end local v17           #isWaterRippleConfig:Z
    .restart local v10       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v19       #statement:Landroid/widget/TextView;
    :cond_8
    const/16 v3, 0x8

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 415
    .end local v10           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v19           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 416
    .local v9, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM Exception Statement :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #inflater:Landroid/view/LayoutInflater;
    :cond_9
    const v3, 0x1090054

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v12, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 440
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 441
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 455
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 464
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_5

    :cond_e
    const/4 v3, 0x0

    goto :goto_11

    .line 469
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 473
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 475
    .restart local v13       #isLiveWallpaper:Z
    .restart local v17       #isWaterRippleConfig:Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 476
    .restart local v15       #isRippleEffect:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 556
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    goto/16 :goto_a

    .line 563
    .restart local v14       #isNewMissedWidgetIsUsed:Z
    :cond_14
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_b

    .line 567
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 572
    .restart local v16       #isTickerOn:Z
    :cond_16
    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    goto/16 :goto_d

    .line 576
    :cond_17
    const v3, 0x10202e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 612
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v5, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_e

    .line 623
    .restart local v7       #mChecked:I
    :cond_19
    const/16 v3, 0x6f

    goto/16 :goto_f

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_10
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 778
    :cond_0
    if-eqz p1, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    .line 752
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 756
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

    .line 754
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_0
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 735
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_0
    return v0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x104061f

    const v1, 0x104061d

    .line 673
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_3

    .line 674
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    .line 675
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 694
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040620

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 684
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_6

    .line 685
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104061e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 727
    new-instance v0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 919
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    .line 922
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->cleanUp()V

    .line 924
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->cleanUp()V

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 931
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_3

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->cleanUp()V

    .line 933
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_4

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->cleanUp()V

    .line 936
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_5

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->cleanUp()V

    .line 939
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 945
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 948
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 949
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 950
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 824
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 829
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 836
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    const/4 v1, 0x0

    .line 770
    :goto_0
    return v1

    .line 766
    :cond_0
    const-string v0, ""

    .line 767
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1026
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1030
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 891
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 892
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->onPause()V

    .line 895
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onPause()V

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onPause()V

    .line 906
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onPause()V

    .line 908
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onPause()V

    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onPause()V

    .line 911
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    .line 912
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onPause()V

    .line 913
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 915
    :cond_7
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1022
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 982
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 987
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 989
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1000
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1033
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1038
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1039
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1040
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1041
    const/4 v1, 0x1

    .line 1043
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onResume()V

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 847
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onResume()V

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onResume()V

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onResume()V

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onResume()V

    .line 858
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_6

    .line 865
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onResume()V

    .line 870
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_8

    .line 871
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    if-eqz v0, :cond_8

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->onResume()V

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 875
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    :cond_8
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1014
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 994
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 996
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1004
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1018
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 814
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 795
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_3

    .line 796
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->registerListener()V

    .line 797
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 798
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 801
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 806
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 808
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 809
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 954
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    if-eqz p1, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 963
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo()V

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 966
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 974
    :cond_1
    return-void

    .line 954
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    :cond_0
    return-void
.end method

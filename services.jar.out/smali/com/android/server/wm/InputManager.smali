.class public Lcom/android/server/wm/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputManager$Callbacks;,
        Lcom/android/server/wm/InputManager$InputFilterHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_NONE:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_FINISH:I = 0x2

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_RESULT:I = 0x1

.field static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

.field private final mContext:Landroid/content/Context;

.field mInputFilter:Lcom/android/server/wm/InputFilter;

.field mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "windowManagerService"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 149
    new-instance v1, Lcom/android/server/wm/InputManager$Callbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/InputManager$Callbacks;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    .line 151
    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 153
    .local v0, looper:Landroid/os/Looper;
    const-string v1, "InputManager"

    const-string v2, "Initializing input manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputManager;->nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V

    .line 157
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 158
    return-void
.end method

.method static synthetic access$200(Landroid/view/InputEvent;IIIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 61
    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPointerSpeedSetting(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 517
    move v0, p1

    .line 519
    .local v0, speed:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 523
    :goto_0
    return v0

    .line 521
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getShowHoveringSetting(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 572
    move v1, p1

    .line 574
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    :goto_0
    return v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 561
    move v0, p1

    .line 563
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 567
    :goto_0
    return v0

    .line 565
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDump()Ljava/lang/String;
.end method

.method private static native nativeGetInputConfiguration(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeGetInputDevice(I)Landroid/view/InputDevice;
.end method

.method private static native nativeGetInputDeviceIds()[I
.end method

.method private static native nativeGetKeyCodeState(III)I
.end method

.method private static native nativeGetScanCodeState(III)I
.end method

.method private static native nativeGetSwitchState(III)I
.end method

.method private static native nativeGetWakeFlag(II)Z
.end method

.method private static native nativeHasKeys(II[I[Z)Z
.end method

.method private static native nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor()V
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;ZZ)V
.end method

.method private static native nativeSetDisplayOrientation(II)V
.end method

.method private static native nativeSetDisplaySize(IIIII)V
.end method

.method private static native nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(ZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(Z)V
.end method

.method private static native nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
.end method

.method private static native nativeSetLedState(Z)I
.end method

.method private static native nativeSetPointerSpeed(I)V
.end method

.method private static native nativeSetShowHovering(Z)V
.end method

.method private static native nativeSetShowTouches(Z)V
.end method

.method private static native nativeSetSystemUiVisibility(I)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$1;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$1;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 514
    return-void
.end method

.method private registerShowHoveringSettingObserver()V
    .locals 5

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$3;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$3;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 558
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$2;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$2;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 546
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    .line 583
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeDump()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, dumpStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputConfiguration(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 440
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeGetInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodeState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCode"

    .prologue
    .line 219
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "scanCode"

    .prologue
    .line 232
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "switchCode"

    .prologue
    .line 251
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getWakeFlag(II)Z
    .locals 1
    .parameter "deviceId"
    .parameter "keyCode"

    .prologue
    .line 237
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeGetWakeFlag(II)Z

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 2
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCodes"
    .parameter "keyExists"

    .prologue
    .line 267
    if-nez p3, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/InputManager;->nativeHasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;IIII)I
    .locals 6
    .parameter "event"
    .parameter "injectorPid"
    .parameter "injectorUid"
    .parameter "syncMode"
    .parameter "timeoutMillis"

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "injectorPid and injectorUid must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2
    if-gtz p5, :cond_3

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_3
    const/high16 v5, 0x800

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeMonitor()V

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 5
    .parameter "inputChannelName"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 289
    .local v0, inputChannels:[Landroid/view/InputChannel;
    aget-object v1, v0, v4

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;ZZ)V

    .line 290
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 291
    aget-object v1, v0, v3

    return-object v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V
    .locals 8
    .parameter "inputChannel"
    .parameter "inputWindowHandle"

    .prologue
    const/4 v7, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "inputChannel must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, adjustPointersValue:Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 313
    .local v5, uid:I
    if-lez v5, :cond_2

    .line 314
    iget-object v6, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 315
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, packageName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 317
    const-string v6, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 319
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 320
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 321
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 322
    :cond_1
    const/4 v0, 0x1

    .line 339
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    invoke-static {p1, p2, v7, v0}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;ZZ)V

    .line 340
    return-void

    .line 325
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 326
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDisplayOrientation(II)V
    .locals 2
    .parameter "displayId"
    .parameter "rotation"

    .prologue
    .line 191
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetDisplayOrientation(II)V

    .line 199
    return-void
.end method

.method public setDisplaySize(IIIII)V
    .locals 2
    .parameter "displayId"
    .parameter "width"
    .parameter "height"
    .parameter "externalWidth"
    .parameter "externalHeight"

    .prologue
    .line 179
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid display id or dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/InputManager;->nativeSetDisplaySize(IIIII)V

    .line 188
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 456
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    .line 457
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 0
    .parameter "enabled"
    .parameter "frozen"

    .prologue
    .line 460
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetInputDispatchMode(ZZ)V

    .line 461
    return-void
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 368
    .local v0, oldFilter:Lcom/android/server/wm/InputFilter;
    if-ne v0, p1, :cond_0

    .line 369
    monitor-exit v2

    .line 387
    :goto_0
    return-void

    .line 372
    :cond_0
    if-eqz v0, :cond_1

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 374
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/wm/InputManager$InputFilterHost;->disconnectLocked()V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    .line 376
    invoke-virtual {v0}, Lcom/android/server/wm/InputFilter;->uninstall()V

    .line 379
    :cond_1
    if-eqz p1, :cond_2

    .line 380
    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 381
    new-instance v1, Lcom/android/server/wm/InputManager$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/InputManager$InputFilterHost;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputFilter;->install(Lcom/android/server/wm/InputFilter$Host;)V

    .line 385
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetInputFilterEnabled(Z)V

    .line 386
    monitor-exit v2

    goto :goto_0

    .end local v0           #oldFilter:Lcom/android/server/wm/InputFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    .restart local v0       #oldFilter:Lcom/android/server/wm/InputFilter;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
    .locals 0
    .parameter "windowHandles"

    .prologue
    .line 452
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    .line 453
    return-void
.end method

.method public setLedState(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 430
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetLedState(Z)I

    move-result v0

    return v0
.end method

.method public setPointerSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 496
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 497
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetPointerSpeed(I)V

    .line 498
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 464
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetSystemUiVisibility(I)V

    .line 465
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeStart()V

    .line 164
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerPointerSpeedSettingObserver()V

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerShowTouchesSettingObserver()V

    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerShowHoveringSettingObserver()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updatePointerSpeedFromSettings()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateShowTouchesFromSettings()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateShowHoveringFromSettings()V

    .line 175
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .parameter "fromChannel"
    .parameter "toChannel"

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    if-nez p2, :cond_1

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    .line 352
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 2

    .prologue
    .line 501
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getPointerSpeedSetting(I)I

    move-result v0

    .line 502
    .local v0, speed:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 503
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getShowHoveringSetting(I)I

    move-result v0

    .line 534
    .local v0, setting:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetShowHovering(Z)V

    .line 535
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getShowTouchesSetting(I)I

    move-result v0

    .line 528
    .local v0, setting:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetShowTouches(Z)V

    .line 529
    return-void
.end method

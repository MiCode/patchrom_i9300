.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$3;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final MY_IMMVIBE_LICENSE_KEY:Ljava/lang/String; = "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final TYPE_FEEDBACK_MAGNITUDE:I

.field private final TYPE_NOTIFICATION_MAGNITUDE:I

.field private final TYPE_RECVCALL_MAGNITUDE:I

.field private final VIBE_DEBUG:Z

.field private levelToMagnitude:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultTouchMagnitude:I

.field private mDevHandle:I

.field private mH:Landroid/os/Handler;

.field private mImmVibeAlertOnCallMagnitude:I

.field private mImmVibeCallMagnitude:I

.field private mImmVibeNotiMagnitude:I

.field private mImmVibeTouchMagnitude:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mTypeURIs:[Ljava/lang/String;

.field private mVibe:Lcom/immersion/android/ImmVibe;

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volumeToMagnitude:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 52
    iput v4, p0, Lcom/android/server/VibratorService;->TYPE_FEEDBACK_MAGNITUDE:I

    .line 53
    iput v5, p0, Lcom/android/server/VibratorService;->TYPE_RECVCALL_MAGNITUDE:I

    .line 54
    iput v7, p0, Lcom/android/server/VibratorService;->TYPE_NOTIFICATION_MAGNITUDE:I

    .line 56
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v2, v4

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v2, v5

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 61
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/VibratorService;->volumeToMagnitude:[I

    .line 62
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 65
    iput v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 66
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 67
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 68
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 69
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeAlertOnCallMagnitude:I

    .line 70
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    .line 78
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->VIBE_DEBUG:Z

    .line 82
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 179
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 437
    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 624
    new-instance v2, Lcom/android/server/VibratorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 153
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 154
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "VibratorService"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 157
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 165
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 166
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 167
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v7}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 169
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->openDevice(Landroid/content/Context;)V

    .line 171
    return-void

    .line 61
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xact 0xdt 0x0t 0x0t
        0x5ct 0x12t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x4ct 0x1dt 0x0t 0x0t
        0xfct 0x21t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 62
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private closeDevice(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1054
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 1055
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1063
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v1

    .line 1057
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 1059
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doCancelVibrateLocked()V
    .locals 4

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v1, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v2

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 451
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 452
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-eqz v1, :cond_1

    .line 459
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v2, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v1, v2}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    return-void

    .line 452
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v1, "VibratorService"

    const-string v2, "RuntimeException occured at doCancelVibrateLocked()."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMagnitude(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 784
    invoke-static {p1}, Landroid/os/Vibrator$MagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeType;

    move-result-object v0

    .line 785
    .local v0, magnitudeType:Landroid/os/Vibrator$MagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$3;->$SwitchMap$android$os$Vibrator$MagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/Vibrator$MagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 795
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 787
    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    goto :goto_0

    .line 790
    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    goto :goto_0

    .line 793
    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAll0([J)Z
    .locals 6
    .parameter "pattern"

    .prologue
    .line 320
    array-length v0, p1

    .line 321
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 323
    const/4 v2, 0x0

    .line 326
    :goto_1
    return v2

    .line 321
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private openDevice(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x5

    .line 1031
    :try_start_0
    new-instance v2, Lcom/immersion/android/ImmVibe;

    invoke-direct {v2}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    .line 1032
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 1033
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v3, 0x0

    const-string v4, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v2, v3, v4}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 1035
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1036
    .local v1, magnitudeLevel:I
    if-le v1, v5, :cond_0

    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1038
    :goto_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 1039
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 1047
    .end local v1           #magnitudeLevel:I
    :goto_1
    return-void

    .line 1037
    .restart local v1       #magnitudeLevel:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1042
    .end local v1           #magnitudeLevel:I
    :catch_0
    move-exception v0

    .line 1043
    .local v0, e:Ljava/lang/Error;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1044
    .end local v0           #e:Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1045
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 4
    .parameter "token"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 503
    .local v0, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 505
    .local v1, vib:Lcom/android/server/VibratorService$Vibration;
    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 507
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 517
    .end local v1           #vib:Lcom/android/server/VibratorService$Vibration;
    :goto_0
    return-object v1

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 514
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 515
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_0

    .line 517
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setVibeStrength(I)V
    .locals 5
    .parameter "strength"

    .prologue
    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 666
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at setDevicePropertyInt32, playPeriodicEffect()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 662
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at setDevicePropertyInt32, playPeriodicEffect()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 478
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 5
    .parameter "vib"

    .prologue
    const/4 v4, 0x0

    .line 483
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->getMagnitude()I

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :goto_1
    return-void

    .line 486
    :cond_0
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->getMagnitude()I

    move-result v2

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;I)V

    goto :goto_0

    .line 495
    :cond_1
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 496
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_1
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter "vib"

    .prologue
    .line 521
    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    :try_start_0
    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private vibrate(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, duration:I
    sparse-switch p1, :sswitch_data_0

    .line 228
    const/16 v0, 0x32

    .line 232
    :goto_0
    int-to-long v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 233
    return-void

    .line 206
    :sswitch_0
    const/16 v0, 0x32

    .line 207
    goto :goto_0

    .line 210
    :sswitch_1
    const/16 v0, 0x64

    .line 211
    goto :goto_0

    .line 214
    :sswitch_2
    const/16 v0, 0x1f4

    .line 215
    goto :goto_0

    .line 221
    :sswitch_3
    const/16 v0, 0x5dc

    .line 222
    goto :goto_0

    .line 225
    :sswitch_4
    const/16 v0, 0x32

    .line 226
    goto :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .parameter "token"

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 424
    .local v0, identity:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 426
    .local v2, vib:Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 428
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 430
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    return-void

    .line 430
    .end local v2           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 433
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->closeDevice(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public getMaxMagnitude()I
    .locals 4

    .prologue
    .line 1019
    const/16 v1, 0x2710

    .line 1021
    .local v1, magnitude:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    return v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method public resetMagnitude()V
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 181
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 182
    :cond_0
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    const/16 p1, 0x2710

    .line 184
    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 185
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 186
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;)V
    .locals 1
    .parameter "milliseconds"
    .parameter "token"

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 237
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;I)V
    .locals 0
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 240
    return-void
.end method

.method public vibrateCall(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 769
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 773
    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 7
    .parameter "type"
    .parameter "magnitude"

    .prologue
    .line 674
    const/4 v2, -0x4

    .line 680
    .local v2, ret:I
    if-gez p2, :cond_0

    iget p2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 681
    :cond_0
    const/16 v3, 0x2710

    if-le p2, v3, :cond_1

    const/16 p2, 0x2710

    .line 683
    :cond_1
    const/16 v3, 0x9

    if-lt p1, v3, :cond_4

    const/16 v3, 0x15

    if-gt p1, v3, :cond_4

    .line 686
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 688
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_2

    .line 689
    const/4 v2, -0x2

    .line 692
    :cond_2
    if-nez p2, :cond_3

    .line 693
    const/4 v2, 0x0

    .line 696
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_3
    :goto_0
    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    .line 705
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 706
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v5, Lcom/immersion/android/ImmVibeConstants;->ivt:[[B

    add-int/lit8 v6, p1, -0x9

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 716
    :cond_4
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 708
    .restart local v1       #re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public vibrateImmVibeMagnitudeType(ILjava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "magnitudeType"

    .prologue
    .line 925
    const/4 v3, -0x4

    .line 926
    .local v3, ret:I
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v1

    .line 931
    .local v1, magnitude:I
    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 932
    :cond_0
    const/16 v4, 0x2710

    if-le v1, v4, :cond_1

    const/16 v1, 0x2710

    .line 934
    :cond_1
    const/16 v4, 0x9

    if-lt p1, v4, :cond_4

    const/16 v4, 0x15

    if-gt p1, v4, :cond_4

    .line 937
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 939
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v4, :cond_2

    .line 940
    const/4 v3, -0x2

    .line 943
    :cond_2
    if-nez v1, :cond_3

    .line 944
    const/4 v3, 0x0

    .line 947
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_3
    :goto_0
    const/4 v4, -0x4

    if-ne v3, v4, :cond_4

    .line 956
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 957
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v6, Lcom/immersion/android/ImmVibeConstants;->ivt:[[B

    add-int/lit8 v7, p1, -0x9

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 967
    :cond_4
    :goto_1
    return-void

    .line 948
    :catch_0
    move-exception v2

    .line 949
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 959
    .restart local v2       #re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at closeDevice()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 961
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 962
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VibratorService"

    const-string v5, "Exception occured at closeDevice()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public vibrateImmVibePattern([BI)V
    .locals 6
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    .line 724
    const/4 v2, -0x4

    .line 730
    .local v2, ret:I
    if-gez p2, :cond_0

    iget p2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 731
    :cond_0
    const/16 v3, 0x2710

    if-le p2, v3, :cond_1

    const/16 p2, 0x2710

    .line 733
    :cond_1
    if-eqz p1, :cond_4

    .line 735
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 737
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_2

    .line 738
    const/4 v2, -0x2

    .line 741
    :cond_2
    if-nez p2, :cond_3

    .line 742
    const/4 v2, 0x0

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_3
    :goto_0
    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    .line 754
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 755
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 765
    :cond_4
    :goto_1
    return-void

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 757
    .restart local v1       #re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 759
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public vibrateImmVibePatternMagnitudeType([BLjava/lang/String;)V
    .locals 7
    .parameter "pattern"
    .parameter "magnitudeType"

    .prologue
    .line 975
    const/4 v3, -0x4

    .line 976
    .local v3, ret:I
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v1

    .line 981
    .local v1, magnitude:I
    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 982
    :cond_0
    const/16 v4, 0x2710

    if-le v1, v4, :cond_1

    const/16 v1, 0x2710

    .line 984
    :cond_1
    if-eqz p1, :cond_4

    .line 986
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 988
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v4, :cond_2

    .line 989
    const/4 v3, -0x2

    .line 992
    :cond_2
    if-nez v1, :cond_3

    .line 993
    const/4 v3, 0x0

    .line 996
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :cond_3
    :goto_0
    const/4 v4, -0x4

    if-ne v3, v4, :cond_4

    .line 1005
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1006
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 1016
    :cond_4
    :goto_1
    return-void

    .line 997
    :catch_0
    move-exception v2

    .line 998
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 1008
    .restart local v2       #re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at closeDevice()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 1010
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1011
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VibratorService"

    const-string v5, "Exception occured at closeDevice()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public vibrateMagnitude(JLandroid/os/IBinder;I)V
    .locals 16
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 255
    .local v15, uid:I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    if-gez p4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    move/from16 p4, v0

    .line 263
    :cond_3
    const/16 v2, 0x2710

    move/from16 v0, p4

    if-le v0, v2, :cond_4

    const/16 p4, 0x2710

    .line 266
    :cond_4
    const/4 v14, -0x4

    .line 268
    .local v14, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_5

    .line 269
    const/4 v14, -0x2

    .line 272
    :cond_5
    if-nez p4, :cond_6

    .line 273
    const/4 v14, 0x0

    .line 276
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_6
    :goto_1
    const/4 v2, -0x4

    if-ne v14, v2, :cond_1

    .line 289
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 291
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-lez v2, :cond_7

    const v11, 0x7fffffff

    .line 292
    .local v11, duration:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p1

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    goto :goto_0

    .line 277
    .end local v11           #duration:I
    :catch_0
    move-exception v13

    .line 278
    .local v13, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v13           #re:Ljava/lang/RuntimeException;
    :cond_7
    move-wide/from16 v0, p1

    long-to-int v11, v0

    goto :goto_2

    .line 302
    :catch_1
    move-exception v13

    .line 303
    .restart local v13       #re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    .end local v13           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v12

    .line 305
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public vibrateMagnitudeType(JLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 16
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitudeType"

    .prologue
    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 807
    .local v15, uid:I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 814
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v5

    .line 815
    .local v5, magnitude:I
    if-gez v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 816
    :cond_3
    const/16 v2, 0x2710

    if-le v5, v2, :cond_4

    const/16 v5, 0x2710

    .line 819
    :cond_4
    const/4 v14, -0x4

    .line 821
    .local v14, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_5

    .line 822
    const/4 v14, -0x2

    .line 825
    :cond_5
    if-nez v5, :cond_6

    .line 826
    const/4 v14, 0x0

    .line 829
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_6
    :goto_1
    const/4 v2, -0x4

    if-ne v14, v2, :cond_1

    .line 842
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 844
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-lez v2, :cond_7

    const v11, 0x7fffffff

    .line 845
    .local v11, duration:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p1

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    goto :goto_0

    .line 830
    .end local v11           #duration:I
    :catch_0
    move-exception v13

    .line 831
    .local v13, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at mVibe.stopAllPlayingEffects(mDevHandle)."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    .end local v13           #re:Ljava/lang/RuntimeException;
    :cond_7
    move-wide/from16 v0, p1

    long-to-int v11, v0

    goto :goto_2

    .line 855
    :catch_1
    move-exception v13

    .line 856
    .restart local v13       #re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 858
    .end local v13           #re:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v12

    .line 859
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public vibrateNotification(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 777
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 781
    return-void
.end method

.method public vibratePattern([JILandroid/os/IBinder;)V
    .locals 9
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 336
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 340
    .local v7, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-lt p2, v1, :cond_1

    array-length v1, p1

    if-ge p2, v1, :cond_1

    if-nez p3, :cond_2

    .line 343
    :cond_1
    const-string v1, "VibratorService"

    const-string v2, "vibratePattern() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    return-void

    .line 347
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 355
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 356
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 357
    if-ltz p2, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 366
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 369
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 350
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 363
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 364
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public vibratePatternByMagnitude([JILandroid/os/IBinder;I)V
    .locals 10
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 380
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 383
    .local v8, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-lt p2, v1, :cond_1

    array-length v1, p1

    if-ge p2, v1, :cond_1

    if-nez p3, :cond_3

    .line 386
    :cond_1
    const-string v1, "VibratorService"

    const-string v2, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 412
    :cond_2
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    return-void

    .line 389
    :cond_3
    if-eqz p4, :cond_2

    .line 390
    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 392
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 397
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 399
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 400
    if-ltz p2, :cond_4

    .line 401
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 402
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 409
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 412
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 393
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 406
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_6
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 407
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public vibratePatternByMagnitudeType([JILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .parameter "magnitudeType"

    .prologue
    .line 875
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 881
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 884
    .local v8, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-lt p2, v1, :cond_1

    array-length v1, p1

    if-ge p2, v1, :cond_1

    if-nez p3, :cond_3

    .line 887
    :cond_1
    const-string v1, "VibratorService"

    const-string v2, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 915
    :cond_2
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    return-void

    .line 891
    :cond_3
    :try_start_1
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v6

    .line 892
    .local v6, magnitude:I
    if-eqz v6, :cond_2

    .line 893
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 895
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 900
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 901
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 902
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 903
    if-ltz p2, :cond_4

    .line 904
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 912
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 915
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    .end local v6           #magnitude:I
    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 896
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    .restart local v6       #magnitude:I
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 909
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_6
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 910
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

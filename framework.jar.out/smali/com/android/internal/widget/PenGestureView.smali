.class public Lcom/android/internal/widget/PenGestureView;
.super Landroid/view/View;
.source "PenGestureView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PenGesture"


# instance fields
.field private mBootCompleted:Z

.field private mDisplay:Landroid/view/Display;

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeightMovingSlop:I

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsPhone:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTheshold:Z

.field private mWidthMovingSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 76
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 80
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    .line 203
    new-instance v4, Lcom/android/internal/widget/PenGestureView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/PenGestureView$4;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 237
    new-instance v4, Lcom/android/internal/widget/PenGestureView$5;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/PenGestureView$5;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 85
    new-instance v4, Lcom/android/internal/widget/PenGestureView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/PenGestureView$1;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v4, Lcom/android/internal/widget/PenGestureView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/PenGestureView$2;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 113
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 116
    .local v2, size:Landroid/graphics/Point;
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    .line 118
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 120
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 122
    .local v3, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_0

    .line 129
    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    .line 130
    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    .line 137
    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 138
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 139
    iget-boolean v4, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const/high16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v5, "com.diotek.screen_capture2"

    const-string v6, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v5, "application/vnd.diotek.papermemo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string/jumbo v5, "is_secure_enabled"

    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isSecureUnlockEnabled()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string/jumbo v5, "is_lockscreen_showing"

    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->isLockScreenShowing()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    :goto_2
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/android/internal/widget/PenGestureView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/PenGestureView$3;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-direct {v4, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 201
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "PenGesture"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    goto :goto_0

    .line 133
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    .line 134
    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    goto :goto_1

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v5, "com.diotek.screen_capture"

    const-string v6, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v5, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.diotek.mini_penmemo"

    const-string v7, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/PenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PenGestureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PenGestureView;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/PenGestureView;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private handleBootCompleted()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 309
    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-boolean v0, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string/jumbo v1, "send interrupt to previous mPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/PenGestureView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/PenGestureView$6;-><init>(Lcom/android/internal/widget/PenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPenEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x2

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 286
    sget-boolean v1, Lcom/android/internal/widget/PenGestureView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPenEvent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 299
    .end local v0           #action:I
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 295
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isBootCompleted()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method

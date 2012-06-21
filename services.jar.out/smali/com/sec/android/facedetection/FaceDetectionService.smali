.class public Lcom/sec/android/facedetection/FaceDetectionService;
.super Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
.source "FaceDetectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    }
.end annotation


# static fields
.field private static final FDS_DISABLE:Z = false

.field private static final MAX_RETRY:I = 0x2

.field private static final NO_TIMEOUT:Z = true

.field public static final START_CAMERA:I = 0x1

.field public static final START_FD_ONE_EYE:I = 0x3

.field public static final START_FD_TWO_EYE:I = 0x4

.field public static final STOP_CAMERA:I = 0x0

.field public static final STOP_FD:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field final callback:Ljava/util/concurrent/locks/Condition;

.field final complete:Ljava/util/concurrent/locks/Condition;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final lock2:Ljava/util/concurrent/locks/Lock;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceOrientation:I

.field private mDegreeOffset:I

.field private mFaces:[Lcom/sec/android/facedetection/SecFace;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastDeviceOrientation:I

.field private mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

.field private mNumOfListener:I

.field private mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;-><init>()V

    .line 71
    const-string v1, "FaceDetectionService"

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->TAG:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 98
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    .line 99
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    .line 100
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    .line 279
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    .line 280
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 281
    iput v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 282
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 284
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 285
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Callback Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    .line 288
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 290
    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    .line 292
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    .line 293
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$1;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Fatal System Error!\nNow Dumping Log...\nDo not turn off!\nIt will take about 1 min."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "Error Dialog"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    .line 309
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 310
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "FaceDetectionService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 311
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 313
    const-string v1, "FaceDetectionService"

    const-string v2, "FaceDetectionService Started."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 370
    return-void
.end method

.method private declared-synchronized decreaseListener()V
    .locals 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 390
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->closeCamera()V

    .line 393
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.release() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_1
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "needOneEye"

    .prologue
    const/4 v0, -0x1

    .line 431
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;
    .locals 7
    .parameter "needOneEye"
    .parameter "last"
    .parameter "current"

    .prologue
    const/4 v6, 0x2

    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 442
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 444
    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    .line 445
    iput p3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCurrentDeviceOrientation:I

    .line 447
    if-eqz p1, :cond_5

    .line 448
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 452
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 453
    const-string v2, "FaceDetectionService"

    const-string v3, "WAIT FOR CALLBACK"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 457
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v3, 0x11e1a300

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    const-string v2, "FaceDetectionService"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 462
    :cond_3
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 464
    :cond_4
    const-string v2, "FaceDetectionService"

    const-string v3, "DONE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 468
    .local v1, ret:[Lcom/sec/android/facedetection/SecFace;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 470
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 471
    if-nez v1, :cond_1

    const/4 v2, 0x0

    new-array v1, v2, [Lcom/sec/android/facedetection/SecFace;

    goto :goto_0

    .line 450
    .end local v0           #i:I
    .end local v1           #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 454
    .restart local v0       #i:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 459
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private declared-synchronized increaseListener()V
    .locals 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 378
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.acquire() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->openCamera()V

    .line 384
    :cond_2
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openCamera()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 363
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 364
    return-void
.end method

.method private sendMessageAndWait(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 329
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessage(I)Z

    .line 330
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 356
    const-string v0, "FaceDetectionService"

    const-string v1, "DONE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    return-void
.end method

.method private showErrorPopup()V
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 552
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 553
    return-void
.end method

.method private showIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string v1, "face"

    invoke-interface {v0, v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 486
    const-string v0, "FaceDetectionService"

    const-string v1, "FaceDetectionClient died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    .line 488
    return-void
.end method

.method public disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 418
    const-string v1, "FaceDetectionService"

    const-string v2, "disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "FaceDetectionService"

    const-string v2, "unlinkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 492
    const-string v0, "FaceDetectionService"

    const-string v1, "DUMP Face detection service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ThemeService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 503
    :cond_0
    const-string v0, "FaceDetectionService is up and running!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " # of clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 506
    const-string v0, " Camera is opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    const-string v0, " Camera is not opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 405
    const-string v1, "FaceDetectionService"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->increaseListener()V

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FaceDetectionService"

    const-string v2, "linkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "last"
    .parameter "current"

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 268
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 270
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "FaceDetectionService"

    const-string v1, "Whatever happened to camera service, I will try to re-open camera! I have a client waiting for my service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :cond_0
    return-void
.end method

.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    if-nez p1, :cond_0

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 263
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 264
    return-void

    .line 246
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/sec/android/facedetection/SecFace;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 248
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 251
    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    new-instance v0, Lcom/sec/android/facedetection/SecFace;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    aget-object v2, p1, v7

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    aget-object v3, p1, v7

    iget v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->leftEye:Landroid/graphics/Point;

    aget-object v5, p1, v7

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rightEye:Landroid/graphics/Point;

    aget-object v6, p1, v7

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->mouth:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/facedetection/SecFace;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v0, v8, v7

    .line 253
    const-string v0, "FaceDetectionService"

    const-string v1, "set orientation using score field"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    aget-object v0, v0, v7

    aget-object v1, p1, v7

    iget v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    iput v1, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 258
    :cond_1
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

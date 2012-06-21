.class public Lcom/android/server/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationPlayer$CmdThread;,
        Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/server/NotificationPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NotificationPlayer"

.field private static final mDebug:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

.field private mLooper:Landroid/os/Looper;

.field private mMotionEnabled:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMotionRegistered:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/server/NotificationPlayer$CmdThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 255
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRegistered:Z

    .line 364
    new-instance v0, Lcom/android/server/NotificationPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationPlayer$1;-><init>(Lcom/android/server/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/NotificationPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->register()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/NotificationPlayer;->startSound(Lcom/android/server/NotificationPlayer$Command;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$CmdThread;)Lcom/android/server/NotificationPlayer$CmdThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 352
    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->acquireWakeLock()V

    .line 319
    new-instance v0, Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationPlayer$CmdThread;-><init>(Lcom/android/server/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    .line 320
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/server/NotificationPlayer$CmdThread;->start()V

    .line 322
    :cond_0
    return-void
.end method

.method private register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 389
    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRegistered:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 392
    iput-boolean v2, p0, Lcom/android/server/NotificationPlayer;->mMotionRegistered:Z

    .line 393
    const-string v0, "STATUSBAR-NotificationPlayer"

    const-string v1, "Turnover - register()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 358
    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/server/NotificationPlayer$Command;)V
    .locals 7
    .parameter "cmd"

    .prologue
    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 152
    :cond_0
    new-instance v3, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 153
    iget-object v5, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->start()V

    .line 155
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 156
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v3, v5

    .line 161
    .local v0, delay:J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .end local v0           #delay:J
    :cond_1
    :goto_0
    return-void

    .line 156
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 157
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 402
    const-string v0, "STATUSBAR-NotificationPlayer"

    const-string v1, "Turnover - unregister()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRegistered:Z

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 237
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 238
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->unregister()V

    .line 243
    return-void

    .line 238
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 240
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"

    .prologue
    const/4 v3, 0x1

    .line 284
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 285
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 286
    iput v3, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 287
    iput-object p1, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 288
    iput-object p2, v0, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 289
    iput-boolean p3, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    .line 290
    iput p4, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    .line 291
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 292
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 293
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 294
    monitor-exit v2

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMotionEnabled(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "motionEnabled"

    .prologue
    .line 377
    iput-boolean p2, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    .line 378
    if-eqz p2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    goto :goto_0
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 345
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 346
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 302
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 305
    :try_start_0
    iget v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_0

    .line 306
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 307
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 308
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 309
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 310
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 312
    .end local v0           #cmd:Lcom/android/server/NotificationPlayer$Command;
    :cond_0
    monitor-exit v2

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

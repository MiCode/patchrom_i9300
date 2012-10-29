.class public Lcom/android/server/pm/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;
    }
.end annotation


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final DRAW_BEFORE:I

.field private final DRAW_FINISH:I

.field private final DRAW_NEXT:I

.field private final DRAW_START:I

.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawState:I

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

.field private mp:Landroid/media/MediaPlayer;

.field private sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private soundThread:Ljava/lang/Thread;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "theme"

    .prologue
    const/16 v1, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 85
    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_BEFORE:I

    .line 86
    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_START:I

    .line 87
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_NEXT:I

    .line 88
    const/16 v1, 0x190

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_FINISH:I

    .line 90
    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    .line 91
    new-instance v1, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;-><init>(Lcom/android/server/pm/ShutdownDialog;Lcom/android/server/pm/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    .line 92
    iput v3, p0, Lcom/android/server/pm/ShutdownDialog;->cntImages:I

    .line 99
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 101
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 102
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 105
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 248
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 117
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, startAnimation:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShutdownDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 137
    const-string v1, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/pm/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    return v0
.end method

.method public static existAnim()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 383
    new-instance v0, Ljava/io/File;

    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareAnim(Ljava/lang/String;)V
    .locals 5
    .parameter "animPath"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-static {p1}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    .line 425
    :goto_0
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    .line 426
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    .line 428
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 432
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 433
    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 435
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    if-le v2, v3, :cond_1

    .line 436
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 441
    :goto_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 443
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 446
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    .line 448
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    .line 449
    return-void

    .line 423
    .end local v0           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    goto/16 :goto_0

    .line 438
    .restart local v0       #l:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 4
    .parameter "soundPath"

    .prologue
    .line 398
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 400
    :try_start_0
    const-string v2, "ShutdownDialog"

    const-string v3, "shutdown Dialog kor power snd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v2, "service.media.powersnd"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "ctl.start"

    const-string v3, "powersnd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShutdownDialog;->prepareSoundThread(Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 415
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThreadFeature;->SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 408
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private prepareSoundThread(Ljava/lang/String;)V
    .locals 9
    .parameter "soundPath"

    .prologue
    const/4 v8, 0x1

    .line 257
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/pm/ShutdownDialog$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/ShutdownDialog$1;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, f:Ljava/io/File;
    if-eqz p1, :cond_0

    .line 284
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v2       #f:Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 287
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v6, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v2       #f:Ljava/io/File;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_4

    .line 290
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v6, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v2       #f:Ljava/io/File;
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_7

    .line 293
    :cond_5
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Sound file not found, Shutdown sound will not be start!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_6
    :goto_0
    return-void

    .line 296
    :cond_7
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Sound file found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 299
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 300
    .local v5, volume:I
    if-gez v5, :cond_8

    .line 301
    const-string v6, "ShutdownDialog"

    const-string v7, "!@Volume is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_8
    const/4 v3, 0x0

    .line 307
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 308
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 310
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 311
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 312
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/server/pm/ShutdownDialog$2;

    invoke-direct {v7, p0}, Lcom/android/server/pm/ShutdownDialog$2;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 321
    iget-object v6, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 330
    if-eqz v4, :cond_6

    .line 331
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 332
    .end local v4           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 322
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception raised. SoundThread is not started !"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    if-eqz v3, :cond_6

    .line 331
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 329
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 330
    :goto_2
    if-eqz v3, :cond_9

    .line 331
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 329
    :cond_9
    :goto_3
    throw v6

    .line 332
    :catch_2
    move-exception v7

    goto :goto_3

    .line 329
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 322
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 142
    const-string v0, "ShutdownDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 154
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 155
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 164
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 165
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->start()V

    .line 169
    return-void

    .line 158
    :cond_1
    const-string v1, "ShutdownDialog"

    const-string v2, "StatusBarManager == null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 380
    return-void
.end method

.method public prepareBootup()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v0, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 466
    const-string v0, "/system/media/video/shutdown/warmboot.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public prepareShutdown()V
    .locals 4

    .prologue
    .line 452
    const-string v2, "ShutdownDialog"

    const-string v3, "prepare shutdown dialog image and sound"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v2, "/System/media/audio/ui/PowerOff.ogg"

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/io/File;

    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, shutdownFilePathMultiCSC:Ljava/io/File;
    const/4 v0, 0x0

    .line 456
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const-string v0, "//system/csc_contents/shutdown.qmg"

    .line 460
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    .line 461
    return-void

    .line 459
    :cond_0
    const-string v0, "//system/media/video/shutdown/shutdown.qmg"

    goto :goto_0
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 394
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 470
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    .line 471
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessage(I)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "ShutdownDialog"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 478
    :cond_0
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 6
    .parameter "waittime"

    .prologue
    const/4 v1, 0x0

    .line 346
    :goto_0
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 348
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownDialog"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    return v1

    .line 356
    :cond_0
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end wait start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 368
    :catch_1
    move-exception v0

    .line 369
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_2
    const-string v1, "ShutdownDialog"

    const-string v2, "animation end detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x1

    goto :goto_1

    .line 363
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    const-string v2, "ShutdownDialog"

    const-string v3, "sound end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 370
    :catch_2
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

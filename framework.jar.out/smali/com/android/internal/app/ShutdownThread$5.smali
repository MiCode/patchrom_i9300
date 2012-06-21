.class final Lcom/android/internal/app/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 407
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "ShutdownThread"

    const-string v1, "Releasing sAnimationSound end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 412
    :cond_0
    return-void
.end method

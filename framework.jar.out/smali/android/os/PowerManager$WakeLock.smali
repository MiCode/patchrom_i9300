.class public Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WakeLock"
.end annotation


# static fields
.field static final RELEASE_WAKE_LOCK:I = 0x1


# instance fields
.field mCount:I

.field mFlags:I

.field mHeld:Z

.field mRefCounted:Z

.field mReleaser:Ljava/lang/Runnable;

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "flags"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 248
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/os/PowerManager$WakeLock$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 242
    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 244
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 249
    and-int/lit16 v0, p2, 0x13f

    sparse-switch v0, :sswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 261
    :sswitch_0
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 262
    const-string v0, "[-a-zA-Z0-9][-a-zA-Z0-9._]+@[-a-zA-Z0-9_.]+[.][-a-zA-Z0-9]+"

    const-string v1, "EM"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 263
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 264
    return-void

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private acquireLocked()V
    .locals 5

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 311
    :cond_1
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 285
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 296
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 298
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 400
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 322
    return-void
.end method

.method public release(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 336
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 345
    :cond_1
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-gez v0, :cond_2

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 276
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 5
    .parameter "ws"

    .prologue
    .line 359
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 360
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const/4 p1, 0x0

    .line 363
    :cond_0
    const/4 v0, 0x1

    .line 364
    .local v0, changed:Z
    if-nez p1, :cond_3

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 375
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 377
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    .line 382
    return-void

    .line 366
    :cond_3
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_5

    .line 367
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 368
    :goto_2
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_0

    .line 381
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 367
    .restart local v0       #changed:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 370
    :cond_5
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 371
    if-eqz v0, :cond_1

    .line 372
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 386
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " held="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", refCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

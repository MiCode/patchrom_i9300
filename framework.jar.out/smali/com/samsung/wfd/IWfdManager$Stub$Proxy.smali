.class Lcom/samsung/wfd/IWfdManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWfdManager.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 217
    return-void
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 398
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 404
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    return v2

    .line 404
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public WFDGetSuspendStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 452
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 458
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    return v2

    .line 458
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 6
    .parameter "subtitle"
    .parameter "nFontSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 433
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 441
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    return v2

    .line 441
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 7
    .parameter "bStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 415
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object v4, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    return v2

    .end local v2           #_result:Z
    :cond_0
    move v4, v3

    .line 416
    goto :goto_0

    :cond_1
    move v2, v3

    .line 419
    goto :goto_1

    .line 422
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 495
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 498
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    sget-object v3, Lcom/samsung/ScreenCapture/CaptureImg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ScreenCapture/CaptureImg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .local v2, _result:Lcom/samsung/ScreenCapture/CaptureImg;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    return-object v2

    .line 505
    .end local v2           #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    goto :goto_0

    .line 509
    .end local v2           #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "com.samsung.wfd.IWfdManager"

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .local v2, _result:Landroid/os/Messenger;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    return-object v2

    .line 366
    .end local v2           #_result:Landroid/os/Messenger;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Messenger;
    goto :goto_0

    .line 370
    .end local v2           #_result:Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    sget-object v3, Lcom/samsung/wfd/WfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .local v2, _result:Lcom/samsung/wfd/WfdInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    return-object v2

    .line 327
    .end local v2           #_result:Lcom/samsung/wfd/WfdInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/samsung/wfd/WfdInfo;
    goto :goto_0

    .line 331
    .end local v2           #_result:Lcom/samsung/wfd/WfdInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getWfdSinkResolution()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 381
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 387
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return v2

    .line 387
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getWfdState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 348
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return v2

    .line 348
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setWfdEnabled(I)Z
    .locals 6
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 250
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 257
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    return v2

    .line 257
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 7
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v4, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return v2

    .end local v2           #_result:Z
    :cond_0
    move v4, v3

    .line 233
    goto :goto_0

    :cond_1
    move v2, v3

    .line 236
    goto :goto_1

    .line 239
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setWfdRestart()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 291
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    return v2

    .line 291
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setWfdRestartOption(I)Z
    .locals 6
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 302
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 309
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    return v2

    .line 309
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setWfdTerminate()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 265
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 274
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return v2

    .line 274
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startCapture(I)V
    .locals 5
    .parameter "frameType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 468
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v2, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    return-void

    .line 474
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stopCapture()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.wfd.IWfdManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    return-void

    .line 488
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

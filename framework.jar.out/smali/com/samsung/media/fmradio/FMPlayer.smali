.class public Lcom/samsung/media/fmradio/FMPlayer;
.super Ljava/lang/Object;
.source "FMPlayer.java"


# static fields
.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final DEBUG:Z = true

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FMPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sput-object p1, Lcom/samsung/media/fmradio/FMPlayer;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 70
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private checkBusy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, code:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 539
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 540
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x3

    const-string v4, "Player is scanning channel"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 547
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private checkOnStatus()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    .line 522
    .local v0, val:Z
    if-nez v0, :cond_0

    .line 523
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v2, 0x1

    const-string v3, "Player is not ON.Call on() method to start player"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 529
    :cond_0
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .locals 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 375
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, 0x1

    const-string v2, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public GetAFValid_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 683
    const/4 v1, -0x1

    .line 685
    .local v1, val:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFValid_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 689
    :goto_0
    return v1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public GetAF_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 664
    const/4 v1, -0x1

    .line 666
    .local v1, val:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAF_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 670
    :goto_0
    return v1

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SetAFValid_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFValid_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SetAF_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAF_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SkipTuning_Value()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->SkipTuning_Value()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelAFSwitching()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelScan()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableAF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableRDS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableAF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 695
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 696
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 697
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 698
    return-void
.end method

.method public getCnt_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v1, -0x1

    .line 646
    .local v1, val:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 650
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getCurrentChannel()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 463
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 467
    :goto_0
    return-wide v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 467
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentRSSI()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentRSSI()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 424
    :goto_0
    return-wide v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 424
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLastScanResult()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    :goto_0
    return-object v1

    .line 513
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getMaxVolume()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 500
    :goto_0
    return-wide v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 500
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getRSSI_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v1, -0x1

    .line 626
    .local v1, val:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 630
    :goto_0
    return v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getSNR_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 634
    const/4 v1, -0x1

    .line 636
    .local v1, val:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    :goto_0
    return v1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getVolume()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 490
    :goto_0
    return-wide v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 490
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isAFEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 563
    :goto_0
    return v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 563
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAirPlaneMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBatteryLow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeadsetPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRDSEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    :goto_0
    return v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 555
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTvOutPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 58
    const-string v0, "FMPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public off()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public on()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isTvOutPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x7

    const-string v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x4

    const-string v4, "Headset is not presents."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Headset is not presents."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 97
    :cond_2
    const/4 v1, 0x0

    .line 100
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x6

    const-string v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    return v1
.end method

.method public on(Z)Z
    .locals 7
    .parameter "testMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 127
    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    .end local v1           #val:Z
    :goto_0
    return v1

    .line 132
    .restart local v1       #val:Z
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 137
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #val:Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 581
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 220
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 283
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchAll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 287
    :goto_0
    return-wide v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 287
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public searchDown()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 237
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 241
    :goto_0
    return-wide v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 241
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public searchUp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 270
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 274
    :goto_0
    return-wide v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 274
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 444
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 448
    :goto_0
    return-wide v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 448
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public seekUp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 432
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 436
    :goto_0
    return-wide v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 436
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 2
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setChannelSpacing(I)V
    .locals 2
    .parameter "spacing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setCnt_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setDEConstant(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setDEConstant(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 570
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setMono()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRSSI_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSNR_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSeekRSSI(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekRSSI(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSeekSNR(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekSNR(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSpeakerOn(Z)Z
    .locals 2
    .parameter "bSpeakerOn"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting bSpeakerOn = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 192
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setStereo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public tune(J)Z
    .locals 2
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v1, 0x1

    .line 388
    :goto_0
    return v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

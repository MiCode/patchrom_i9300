.class public final Lcom/sec/android/app/sysscope/service/SysScope;
.super Ljava/lang/Object;
.source "SysScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    }
.end annotation


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

.field private final mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

.field private mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    .line 293
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    .line 294
    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    .line 297
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->connectToService()V

    .line 298
    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    return-object v0
.end method

.method private confirmServiceVersion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 598
    .local v0, info:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 599
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 601
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 618
    :cond_0
    :goto_0
    return v2

    .line 605
    :cond_1
    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, versionCode:I
    if-gez v1, :cond_2

    .line 607
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v4, 0xff

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 611
    :cond_2
    const/4 v3, 0x4

    if-lt v3, v1, :cond_3

    .line 612
    const/4 v2, 0x1

    goto :goto_0

    .line 615
    :cond_3
    const-string v3, "SysScope"

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version missmatched, change the library with the valid version. The version of server is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectToService()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "SYSSCOPE"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifyServiceIntegrity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    .line 318
    :cond_0
    return-void
.end method

.method private getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope$1;-><init>(Lcom/sec/android/app/sysscope/service/SysScope;)V

    return-object v0
.end method

.method private verifyServiceIntegrity()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifySysScopeService()Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 625
    const/16 v2, 0x15

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 626
    :cond_0
    const-string v1, "SysScope"

    const-string v2, "SysScope service has invalid signature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    :goto_0
    return v0

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->confirmServiceVersion()Z

    move-result v1

    if-nez v1, :cond_3

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 633
    const/16 v2, 0x17

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    goto :goto_0

    .line 638
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySysScopeService()Z
    .locals 4

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, ret:Z
    new-instance v1, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;-><init>(Landroid/content/Context;)V

    .line 586
    .local v1, sv:Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifySysScopeService()Z

    move-result v0

    .line 587
    if-nez v0, :cond_1

    .line 588
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 590
    :cond_0
    const/4 v2, 0x0

    .line 593
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 413
    .local v1, info:Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 416
    :cond_0
    const/4 v2, 0x0

    .line 429
    :goto_0
    return-object v2

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 420
    if-nez v1, :cond_2

    .line 421
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v2, v1

    .line 429
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 497
    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 506
    :cond_0
    :goto_0
    return-object v1

    .line 502
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

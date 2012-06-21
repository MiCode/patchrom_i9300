.class public Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SysBusFrequencyRequest"
.end annotation


# instance fields
.field mSysBusReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJ)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 144
    invoke-direct/range {p0 .. p5}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    .line 137
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;-><init>(Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    .line 145
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->releaseSysBus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 168
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cancelFrequencyRequest:  RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doFrequencyRequest()V
    .locals 6

    .prologue
    .line 148
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    invoke-interface {v1, v3}, Landroid/os/ICustomFrequencyManager;->requestSysBus(I)V

    .line 151
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 156
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFrequencyRequest :  RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class public Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyRequest"
.end annotation


# instance fields
.field mFrequency:I

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJ)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 68
    :try_start_0
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    .line 82
    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    .line 83
    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    .line 84
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 85
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 73
    :try_start_1
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public doFrequencyRequest()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

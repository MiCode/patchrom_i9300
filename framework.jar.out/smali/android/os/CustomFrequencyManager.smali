.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;,
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;
    }
.end annotation


# static fields
.field public static final FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_SYSBUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 38
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public getSupportedGPUFrequency()[I
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newFrequencyRequest(IIJ)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 6
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"

    .prologue
    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    .line 197
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 193
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 195
    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTopAppChanged(Z)V
    .locals 4
    .parameter "isTopFullscreen"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 50 --util_l 40"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTopAppChanged :  RemoteException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

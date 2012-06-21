.class final Lcom/android/internal/telephony/ims/IMSServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "IMSServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IMSServiceStateTracker"


# instance fields
.field private IMSDataConnectionState:I

.field private mDefaultRoamingIndicator:I

.field private mIMSRoaming:Z

.field private mIsInPrl:Z

.field private mRegistrationState:I

.field private mRoamingIndicator:I

.field private networkType:I

.field private newIMSDataConnectionState:I

.field private newNetworkType:I

.field phone:Lcom/android/internal/telephony/ims/IMSPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "IMSPhone"
    .parameter "ci"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 54
    iput v2, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->networkType:I

    .line 55
    iput v2, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newNetworkType:I

    .line 57
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mIMSRoaming:Z

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->IMSDataConnectionState:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newIMSDataConnectionState:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mRegistrationState:I

    .line 76
    const-string v0, "IMSServiceStateTracker"

    const-string v1, "Setting Service State"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 79
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 80
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 81
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setState(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIMSDataConnectionState()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLacAndCid(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 155
    return-void
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 101
    return-void
.end method

.method public hangupAndPowerOff()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 176
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 173
    return-void
.end method

.method public registerForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "eventRegisteredToNetwork"
    .parameter "object"

    .prologue
    .line 125
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public unregisterForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 130
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

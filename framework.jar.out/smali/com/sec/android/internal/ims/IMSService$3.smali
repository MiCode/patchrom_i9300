.class Lcom/sec/android/internal/ims/IMSService$3;
.super Landroid/telephony/PhoneStateListener;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$3;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 550
    const-string v1, "Inside onCellLocationChanged"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$3;->this$0:Lcom/sec/android/internal/ims/IMSService;

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, pAccessNwkInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$3;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamItemToIMS(ILjava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 543
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged : state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$3;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleTelephonyMgrEvt(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;II)V

    .line 545
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 536
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged :  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$3;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iput-object p1, v0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    .line 538
    return-void
.end method

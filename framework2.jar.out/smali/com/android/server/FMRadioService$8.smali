.class Lcom/android/server/FMRadioService$8;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    .line 471
    if-eq p1, v4, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "CALL_STATE_RINGING or CALL_STATE_OFFHOOK"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 512
    invoke-static {}, Lcom/android/server/FMRadioService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mIsphoneCall:Z
    invoke-static {v0, v4}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_0
.end method

.class Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    const-string v4, "gsm.sim.unknownready"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const-string v3, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, iccStatus:Ljava/lang/String;
    const-string v3, "INSERTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCard;->doIccCardSwap(Z)V

    goto :goto_0

    .line 405
    :cond_2
    const-string v3, "REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCard;->doIccCardSwap(Z)V

    goto :goto_0

    .line 408
    .end local v1           #iccStatus:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const-string/jumbo v3, "networkName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, selectedNwkName:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    :cond_4
    const-string v3, "GSM"

    const-string v4, "[Voicemail] Voicemail number can not be set because there is no matched networkName!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Voicemail] Voicemail number can not be set what matched with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 530
    .local v3, wifiState:I
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v4, v5

    :goto_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v7, v4}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 533
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 594
    .end local v3           #wifiState:I
    :cond_0
    :goto_1
    return-void

    .restart local v3       #wifiState:I
    :cond_1
    move v4, v6

    .line 530
    goto :goto_0

    .line 546
    .end local v3           #wifiState:I
    :cond_2
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    iput-object v4, v7, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 549
    sget-object v4, Lcom/android/server/WifiService$8;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v7, v7, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 562
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v7, v7, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_3

    :goto_2
    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;Z)Z

    .line 564
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 565
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    goto :goto_1

    :cond_3
    move v5, v6

    .line 562
    goto :goto_2

    .line 571
    :cond_4
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 573
    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 574
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateResources()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 575
    :cond_6
    const-string v4, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 576
    const-string v4, "nid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 577
    .local v2, nid:I
    const v4, 0x1080644

    if-ne v2, v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsShowingNotification:Z
    invoke-static {v4, v6}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    goto :goto_1

    .line 580
    .end local v2           #nid:I
    :cond_7
    const-string v4, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    const-string v4, "NUM"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 582
    .local v1, clientNum:I
    if-lez v1, :cond_8

    .line 583
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;Z)Z

    .line 585
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 588
    :cond_8
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v4, v6}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;Z)Z

    .line 590
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

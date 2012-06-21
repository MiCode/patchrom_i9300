.class Lcom/samsung/wfd/WfdService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, action:Ljava/lang/String;
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "intent recieved "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 527
    const-string/jumbo v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 529
    .local v8, state:I
    packed-switch v8, :pswitch_data_0

    .line 803
    .end local v8           #state:I
    :cond_0
    :goto_0
    return-void

    .line 532
    .restart local v8       #state:I
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 534
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 535
    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$300()V

    goto :goto_0

    .line 537
    :cond_1
    const-string v9, "WfdService"

    const-string v10, "Wfd is not enabled from Picker"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 543
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 544
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206f

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 552
    .end local v8           #state:I
    :cond_2
    const-string v9, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 553
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 561
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "IP"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 564
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle IP:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_3
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "URL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 570
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle Update URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_4
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "count"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 576
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_5
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "VER"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 582
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle ver:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_6
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x4

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 586
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 587
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 589
    :cond_7
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD session established intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    :cond_8
    const-string v9, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 593
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receive from Engine...WFD_SESSION_TERMINATED  state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    .line 595
    const-string v9, "WfdService"

    const-string/jumbo v10, "send wfd stop msg"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 597
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 598
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206c

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 599
    :cond_9
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 600
    const-string v9, "WfdService"

    const-string/jumbo v10, "send disable wfd msg"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22068

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 603
    :cond_a
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD session terminated intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 606
    :cond_b
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 607
    const-string v9, "WfdService"

    const-string v10, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string/jumbo v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 610
    .local v6, networkInfo:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string/jumbo v9, "wifiP2pInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v10, v9}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 612
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 613
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 620
    const-string v9, "WfdService"

    const-string v10, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() true"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 637
    :cond_c
    const-string v9, "WfdService"

    const-string v10, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() false"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 640
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 641
    const-string v9, "WfdService"

    const-string v10, "don\'t show disconnect popup..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22068

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 646
    :cond_d
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    .line 650
    :pswitch_2
    const-string v9, "WfdService"

    const-string v10, "Wifip2p disconnect..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 656
    .end local v6           #networkInfo:Landroid/net/NetworkInfo;
    :cond_e
    const-string v9, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 657
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 661
    const-string/jumbo v9, "wifiP2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 663
    .local v4, mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-nez v4, :cond_f

    .line 664
    const-string v9, "WfdService"

    const-string v10, "EXTRA_WIFI_P2P_GROUP_INFO is null!!! check!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    :cond_f
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;I)I

    .line 669
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wifi P2P_CONNECTION_ESTABLISHED >> Wfd frequency:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10

    .line 672
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 674
    const-string v9, "WfdService"

    const-string/jumbo v10, "send wfd start msg"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206b

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 678
    :cond_10
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 681
    .end local v4           #mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_11
    const-string v9, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 682
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 684
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;I)I

    .line 685
    const-string v9, "WfdService"

    const-string/jumbo v10, "wifi P2P_CONNECTION_TERMINATED"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    :cond_12
    const-string v9, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 688
    const-string/jumbo v9, "res"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 689
    .local v7, resolution:I
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;)I

    move-result v10

    and-int/2addr v10, v7

    #setter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2102(Lcom/samsung/wfd/WfdService;I)I

    .line 690
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD sink resln bitmask:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SrcRslnBitMsk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UpdatedRslnBitMsk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 703
    .end local v7           #resolution:I
    :cond_13
    const-string v9, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 704
    const-string v9, "WfdService"

    const-string v10, "WFD param changed notification"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 708
    :cond_14
    const-string v9, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 709
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string/jumbo v10, "res"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2402(Lcom/samsung/wfd/WfdService;I)I

    .line 710
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "3D"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2502(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd resolution from app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " 3D:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "Control"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2602(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "terminate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 715
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd SessionControl from app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22068

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 718
    :cond_15
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 720
    const-string/jumbo v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 722
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_19

    .line 723
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 725
    const-string v9, "WfdService"

    const-string v10, "AP is connected!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string/jumbo v9, "wifiInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 729
    .local v5, mWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v5, :cond_16

    .line 730
    const-string v9, "WfdService"

    const-string v10, "EXTRA_WIFI_INFO is null!!! check!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 734
    :cond_16
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 736
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 737
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP is connected! FreqAp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ? FreqWfd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 740
    const-string v9, "WfdService"

    const-string v10, "They are different. Now WfdService will be restarted!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x22073

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 747
    :cond_17
    const-string v9, "WfdService"

    const-string v10, "WfdService is not running..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 751
    .end local v5           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_18
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 752
    const-string v9, "WfdService"

    const-string v10, "AP is disconnected!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 756
    :cond_19
    const-string v9, "WfdService"

    const-string v10, "NetworkInfo is null!! check!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 759
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1a
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 760
    const/16 v1, 0xe

    .line 762
    .local v1, apState:I
    const-string/jumbo v9, "wifi_state"

    const/16 v10, 0xe

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 763
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xb

    if-ne v1, v9, :cond_0

    .line 766
    const-string v9, "WfdService"

    const-string v10, "Wait done for Hotspot off!!! Now Wfd is start!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 768
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206f

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 771
    .end local v1           #apState:I
    :cond_1b
    const-string v9, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 772
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2902(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 773
    :cond_1c
    const-string v9, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 775
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "URL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 778
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle Update URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x22078

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 781
    :cond_1d
    const-string v9, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 782
    const-string v9, "WfdService"

    const-string v10, "display toast for weak network"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2207a

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 784
    :cond_1e
    const-string v9, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 786
    const-string v9, "cause"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 787
    .local v2, data:I
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WFD Engine noti Error << data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 791
    .end local v2           #data:I
    :cond_1f
    const-string v9, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 793
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string/jumbo v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 794
    const-string v9, "WfdService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 797
    const-string v9, "WfdService"

    const-string v10, "dongle update is failed..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 646
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

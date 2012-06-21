.class Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWpsCompletionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4416
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 4420
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4421
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4425
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 4484
    :goto_0
    return v2

    .line 4436
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 4483
    :goto_1
    const v2, 0xc366

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(II)I

    move v2, v3

    .line 4484
    goto :goto_0

    .line 4440
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 4446
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$7502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4447
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4450
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$7502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4451
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z

    .line 4452
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 4453
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4457
    :sswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4458
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4459
    .local v1, wpsEvent:Ljava/lang/String;
    const/4 v0, 0x5

    .line 4460
    .local v0, event:I
    const-string/jumbo v4, "wps_success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4461
    const/4 v0, 0x1

    .line 4471
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendWpsEventBroadcast(I)V
    invoke-static {v4, v0}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4472
    if-eq v0, v3, :cond_5

    .line 4473
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$7502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4474
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$16600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4462
    :cond_1
    const-string/jumbo v4, "wps_fail"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4463
    const/4 v0, 0x2

    goto :goto_2

    .line 4464
    :cond_2
    const-string/jumbo v4, "wps_overlap"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4465
    const/4 v0, 0x3

    goto :goto_2

    .line 4466
    :cond_3
    const-string/jumbo v4, "wps_timeout"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4467
    const/4 v0, 0x4

    goto :goto_2

    .line 4468
    :cond_4
    const-string/jumbo v4, "wps_not_defined"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4469
    const/4 v0, 0x5

    goto :goto_2

    .line 4476
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_1

    .line 4425
    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_0
        0x20036 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004c -> :sswitch_0
        0x20056 -> :sswitch_0
        0x20079 -> :sswitch_2
        0x2007b -> :sswitch_3
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_1
        0x24033 -> :sswitch_4
    .end sparse-switch
.end method

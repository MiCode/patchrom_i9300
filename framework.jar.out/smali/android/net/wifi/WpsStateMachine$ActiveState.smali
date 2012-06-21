.class Landroid/net/wifi/WpsStateMachine$ActiveState;
.super Lcom/android/internal/util/State;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WpsStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const v5, 0x20079

    .line 141
    const/4 v0, 0x1

    .line 143
    .local v0, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    :sswitch_0
    return v0

    .line 145
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 146
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v2, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 147
    .local v2, supState:Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    const-string v3, "WpsStateMachine"

    const-string v4, "WPS set up successful"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 157
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 158
    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/wifi/WifiConfigStore;->updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V

    .line 160
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WpsStateMachine;->access$500(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 161
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$600(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 165
    :pswitch_1
    const-string v3, "WpsStateMachine"

    const-string v4, "WPS set up failed, enabling other networks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 167
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WpsStateMachine;->access$500(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 168
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$700(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 184
    .end local v1           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    .end local v2           #supState:Landroid/net/wifi/SupplicantState;
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$800(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_0
        0x2007b -> :sswitch_2
        0x24006 -> :sswitch_1
        0x24033 -> :sswitch_0
    .end sparse-switch

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

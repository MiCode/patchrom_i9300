.class Landroid/net/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4092
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    .line 4096
    const v7, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4097
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$14508(Landroid/net/wifi/WifiStateMachine;)I

    .line 4098
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4099
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20053

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4105
    :cond_0
    const-string/jumbo v0, "home_ap_mac"

    .line 4106
    .local v0, HOME_AP_MAC:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "home_ap_mac"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4108
    .local v3, homeAps:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 4109
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4111
    .local v2, homeApMacs:[Ljava/lang/String;
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 4112
    .local v6, mac:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 4116
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.RUN_KIES"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 4122
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #homeApMacs:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #mac:Ljava/lang/String;
    :cond_1
    return-void

    .line 4111
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #homeApMacs:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #mac:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4242
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)V

    .line 4244
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15402(Z)Z

    .line 4246
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$15400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4247
    const-string v0, "WifiStateMachine"

    const-string v2, "Disable CS wakelock for wifi only devices"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 4257
    :cond_1
    return-void

    .line 4249
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const-string v2, "WifiStateMachine"

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const-wide/16 v10, 0xbb8

    const v9, 0x20053

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4126
    const/4 v1, 0x1

    .line 4127
    .local v1, eventLoggingEnabled:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 4236
    :cond_0
    :goto_0
    return v6

    .line 4129
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 4130
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v6, 0x30006

    invoke-virtual {v4, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4233
    :cond_1
    :goto_1
    :sswitch_1
    if-eqz v1, :cond_2

    .line 4234
    const v4, 0xc366

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_2
    move v6, v5

    .line 4236
    goto :goto_0

    .line 4133
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 4134
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_3

    .line 4135
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    goto :goto_1

    .line 4136
    :cond_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_1

    .line 4137
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)V

    .line 4138
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4142
    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 4143
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4146
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_1

    .line 4147
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2004a

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4148
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/WifiStateMachine;->access$14800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 4152
    :sswitch_5
    const/4 v1, 0x0

    .line 4158
    invoke-static {v7}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0

    .line 4163
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4164
    .local v2, netId:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 4169
    .end local v2           #netId:I
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4172
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4, v0, v6}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4177
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 4178
    .local v3, result:Landroid/net/wifi/NetworkUpdateResult;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 4179
    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4180
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Reconfiguring IP on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4181
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4183
    :cond_4
    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4184
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Reconfiguring proxy on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4185
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;)V

    .line 4186
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 4210
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_8
    const/4 v1, 0x0

    .line 4211
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 4213
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4214
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v9, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6, v10, v11}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 4221
    :sswitch_9
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$1202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4222
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14508(Landroid/net/wifi/WifiStateMachine;)I

    .line 4223
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4225
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4226
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v9, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6, v10, v11}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 4221
    goto :goto_2

    .line 4127
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_4
        0x2004a -> :sswitch_3
        0x20052 -> :sswitch_9
        0x20053 -> :sswitch_8
        0x20056 -> :sswitch_6
        0x20057 -> :sswitch_7
        0x24003 -> :sswitch_1
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method

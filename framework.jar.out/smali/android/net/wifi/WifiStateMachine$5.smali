.class Landroid/net/wifi/WifiStateMachine$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2186
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 2189
    const-string v4, "cwState"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2190
    .local v3, state:I
    if-ne v3, v7, :cond_0

    .line 2191
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_STATE : mWiFiToCWEventReceiver :No CW so far"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :goto_0
    return-void

    .line 2194
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput v3, v4, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    .line 2196
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CW_STATE : mWiFiToCWEventReceiver :retu im state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    if-eqz v3, :cond_1

    .line 2198
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CW_STATE : mWiFiToCWEventReceiver :return im state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2204
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-nez v4, :cond_3

    .line 2209
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : mWiFiToCWEventReceiver :TURN OFF WIFI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)V

    .line 2277
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$202(Landroid/net/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 2213
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 2217
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :TURN OFF WIFI From UI WIFI Enabler"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2221
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 2225
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :CW_WIFI_DEVICE_SHUTDOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2229
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 2230
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x20018

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2231
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)V

    .line 2232
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :TURN OFF WIFI Airplane mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2235
    :cond_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 2239
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :DISCONNECT WIFI mstoppingtype == 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2242
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0xc

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2243
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2245
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_1

    .line 2249
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 2254
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :FORGET WIFI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CW_SISO : WifiStateTracker : removeNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->forgetNetwork(I)V

    .line 2257
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$202(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2258
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$502(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 2261
    :cond_8
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 2263
    const/4 v2, -0x1

    .line 2268
    .local v2, nTempStorenetID:I
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiCWConnMgrStateChange :re-enable case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CW_SISO : WifiStateTracker : re-enable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    .line 2272
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$502(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2274
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateTracker : re-enable done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateTracker : re-enable called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, action:Ljava/lang/String;
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 165
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 166
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 168
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 169
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 170
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 173
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 178
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-nez v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v11, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 191
    :cond_2
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_4

    .line 194
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 196
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 197
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 198
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    .line 200
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v12}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$502(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    goto :goto_0

    .line 203
    :cond_5
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 204
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 205
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$502(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 206
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 208
    :cond_6
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 209
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 215
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$802(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 218
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 219
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_a

    .line 220
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-ne v6, v10, :cond_9

    .line 226
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 229
    .local v3, mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 230
    .local v5, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_1

    .line 232
    .end local v5           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 233
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$3;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1$3;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 244
    :cond_8
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$902(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 246
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 247
    .local v2, in:Landroid/content/Intent;
    const-string v6, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 250
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto/16 :goto_0

    .line 253
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #in:Landroid/content/Intent;
    .end local v3           #mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_9
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 257
    :cond_a
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 258
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v12}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$502(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 262
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 263
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_0

    .line 267
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_b
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;->access$1302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_0
.end method
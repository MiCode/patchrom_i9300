.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, action:Ljava/lang/String;
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    const-string v3, "WfdPickerActivity"

    const-string v4, "wfd settings P2P changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 218
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 221
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 222
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 237
    :cond_3
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 240
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 244
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 247
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v3, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 248
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 249
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 252
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const v4, 0x7f0d0333

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    goto :goto_0

    .line 259
    :cond_5
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 266
    :cond_6
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 268
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 271
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    const-string v3, "wifiP2pInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 273
    .local v2, wifip2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    const-string v3, "WfdPickerActivity"

    const-string v4, "Connected... wait more times for p2p establish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v10}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    goto/16 :goto_0

    .line 279
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 281
    const-string v3, "WfdPickerActivity"

    const-string v4, "onReceive set mEndConnectionFlag false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "WfdPickerActivity"

    const-string v4, "onReceive we need to scan device again!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z
    invoke-static {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1602(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 285
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    goto/16 :goto_0

    .line 289
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #wifip2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_8
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 291
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_9
    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << P2P_CONNECTION_ESTABLISHED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v3

    if-ne v3, v10, :cond_d

    .line 298
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v4, 0x5

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 300
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 301
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 304
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdManager;->startWFDSession(Ljava/lang/Object;)V

    .line 308
    :cond_a
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 309
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v4, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 311
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 312
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 315
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 316
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 318
    :cond_c
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0334

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 320
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 323
    :cond_d
    const-string v3, "WfdPickerActivity"

    const-string v4, "bad state! P2P_CONNECTION_ESTABLISHED should be followed after wifi p2p connect - WIFI_P2P_CONNECTION_CHANGED_ACTION !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

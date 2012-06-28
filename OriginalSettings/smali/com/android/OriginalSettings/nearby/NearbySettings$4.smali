.class Lcom/android/OriginalSettings/nearby/NearbySettings$4;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 720
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, action:Ljava/lang/String;
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: BroadcastReceiver onReceive(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v23, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 725
    :cond_0
    const-string v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 726
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 728
    .local v17, netInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    const-string v24, "wifip2p"

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v23 .. v24}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$900(Lcom/android/OriginalSettings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 729
    .local v22, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    .line 731
    .local v18, netInfoP2p:Landroid/net/NetworkInfo;
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: intent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    if-eqz v22, :cond_1

    if-eqz v17, :cond_1

    .line 735
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v24, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v24 .. v24}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v24, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v24 .. v24}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v24

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V
    invoke-static/range {v23 .. v24}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1000(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference;)V

    .line 868
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v17           #netInfo:Landroid/net/NetworkInfo;
    .end local v18           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v22           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_1
    :goto_0
    return-void

    .line 746
    .restart local v3       #action:Ljava/lang/String;
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v17       #netInfo:Landroid/net/NetworkInfo;
    .restart local v18       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v22       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: STATE WIFI:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", P2P:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 859
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v17           #netInfo:Landroid/net/NetworkInfo;
    .end local v18           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v22           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v8

    .line 861
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: NotFoundException on broadcast receiver: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 750
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v23, "com.android.settings.allshare.REFRESH"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$200(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 863
    .end local v3           #action:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 865
    .local v9, e1:Ljava/lang/Exception;
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: Exception on broadcast receiver: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v23, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 756
    :cond_5
    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: media mount changed"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #calls: Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$200(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    goto/16 :goto_0

    .line 759
    :cond_6
    const-string v23, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 761
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: com.android.settings.allshare.UPDATE_LIST "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ACCEPTLIST"

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v23, "ACCEPTLIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 763
    .local v13, isAcceptList:Z
    const-string v23, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v12

    .line 767
    .local v12, index:[I
    if-eqz v13, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1100(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-result-object v21

    .line 776
    .local v21, preference:Landroid/preference/MultiSelectListPreference;
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 777
    .local v10, entry:[Ljava/lang/CharSequence;
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 778
    .local v19, newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_8

    .line 780
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: Index: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget v25, v12, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    aget v25, v12, v11

    aget-object v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    aget v23, v12, v11

    aget-object v23, v10, v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 773
    .end local v10           #entry:[Ljava/lang/CharSequence;
    .end local v11           #i:I
    .end local v19           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1200(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-result-object v21

    .restart local v21       #preference:Landroid/preference/MultiSelectListPreference;
    goto :goto_1

    .line 783
    .restart local v10       #entry:[Ljava/lang/CharSequence;
    .restart local v11       #i:I
    .restart local v19       #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 785
    .end local v10           #entry:[Ljava/lang/CharSequence;
    .end local v11           #i:I
    .end local v12           #index:[I
    .end local v13           #isAcceptList:Z
    .end local v19           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_9
    const-string v23, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 787
    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v23, "START"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 791
    .local v14, isServerStarted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z

    move-result v23

    move/from16 v0, v23

    if-ne v0, v14, :cond_a

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 797
    :cond_a
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: INVALID FUNCTION STATE: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 803
    .end local v14           #isServerStarted:Z
    :cond_b
    const-string v23, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 805
    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: REFRESH_DEVICE_LIST"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v23, "LIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 808
    .local v4, bIsAcceptedList:Z
    if-eqz v4, :cond_c

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1100(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1100(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    .line 814
    .local v7, dialog:Landroid/app/AlertDialog;
    if-eqz v7, :cond_1

    .line 816
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    .line 817
    .local v20, positiveButton:Landroid/widget/Button;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 819
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 821
    .local v16, listView:Landroid/widget/ListView;
    if-eqz v16, :cond_1

    .line 823
    new-instance v15, Lcom/android/OriginalSettings/nearby/ListItemListener;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 824
    .local v15, listItemListener:Lcom/android/OriginalSettings/nearby/ListItemListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 826
    new-instance v6, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 827
    .local v6, deletebuttonlistener:Lcom/android/OriginalSettings/nearby/DeleteButtonListener;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 834
    .end local v6           #deletebuttonlistener:Lcom/android/OriginalSettings/nearby/DeleteButtonListener;
    .end local v7           #dialog:Landroid/app/AlertDialog;
    .end local v15           #listItemListener:Lcom/android/OriginalSettings/nearby/ListItemListener;
    .end local v16           #listView:Landroid/widget/ListView;
    .end local v20           #positiveButton:Landroid/widget/Button;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1200(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->updateDialog()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1200(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    .line 838
    .restart local v7       #dialog:Landroid/app/AlertDialog;
    if-eqz v7, :cond_1

    .line 840
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    .line 841
    .restart local v20       #positiveButton:Landroid/widget/Button;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 843
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 845
    .restart local v16       #listView:Landroid/widget/ListView;
    if-eqz v16, :cond_1

    .line 847
    new-instance v15, Lcom/android/OriginalSettings/nearby/ListItemListener;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 848
    .restart local v15       #listItemListener:Lcom/android/OriginalSettings/nearby/ListItemListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 850
    new-instance v6, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 851
    .restart local v6       #deletebuttonlistener:Lcom/android/OriginalSettings/nearby/DeleteButtonListener;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

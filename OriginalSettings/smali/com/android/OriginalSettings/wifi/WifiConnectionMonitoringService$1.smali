.class Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, action:Ljava/lang/String;
    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 64
    const-string v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 66
    .local v7, info:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 67
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->startMonitoring()V

    .line 135
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->stopMonitoring()V

    goto :goto_0

    .line 71
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_2
    const-string v11, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 73
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v12, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v12

    .line 74
    :try_start_0
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 75
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_5

    .line 78
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 101
    :cond_3
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, blacklist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v14, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 80
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    const/4 v4, 0x0

    .line 82
    .local v4, found:Z
    :try_start_1
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 83
    .local v10, string:Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 87
    const/4 v4, 0x1

    .line 92
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, find "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez v4, :cond_6

    .line 95
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, remove "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from blacklist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #string:Ljava/lang/String;
    :cond_9
    const-string v11, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 106
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v12, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v12

    .line 107
    :try_start_2
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 108
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 110
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_c

    .line 111
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 112
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget v11, v8, Landroid/net/wifi/ScanResult;->level:I

    iget-object v13, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)I

    move-result v13

    add-int/lit8 v13, v13, 0x5

    if-lt v11, v13, :cond_a

    .line 113
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, SSID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", RSSI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", threashold:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v11, "WifiConnectionMonitoringService"

    const-string v13, "onReceive, remove from the blacklist"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, blacklist:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v14, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 120
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_a

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 122
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_b

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 123
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, EnableNetwork : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 125
    monitor-exit v12

    goto/16 :goto_0

    .line 133
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    .end local v9           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    :cond_c
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

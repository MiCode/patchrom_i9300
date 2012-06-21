.class Lcom/android/server/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
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
    .line 1382
    iput-object p1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1528
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1496
    iget-object v2, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1500
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return v1

    .line 1503
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1509
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$6;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, action:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_idle_ms"

    const-wide/32 v12, 0xdbba0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1390
    .local v2, idleMillis:J
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stay_on_while_plugged_in"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1393
    .local v7, stayAwakeConditions:I
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1397
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1398
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2402(Lcom/android/server/WifiService;Z)Z

    .line 1402
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1403
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1404
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1408
    :cond_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1409
    .local v4, msg:Landroid/os/Message;
    const/4 v10, 0x2

    iput v10, v4, Landroid/os/Message;->what:I

    .line 1410
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 1413
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1414
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;Z)V

    .line 1485
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1415
    :cond_2
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1419
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2402(Lcom/android/server/WifiService;Z)Z

    .line 1423
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1424
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1425
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1433
    :cond_3
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1435
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_4

    .line 1437
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v2

    iget-object v14, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1440
    :cond_4
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1443
    :cond_5
    const-string v10, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1450
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1451
    :cond_6
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1459
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1463
    .local v5, pluggedType:I
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {p0, v7, v5}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v8, v10, v2

    .line 1469
    .local v8, triggerTime:J
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1471
    .end local v8           #triggerTime:J
    :cond_7
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10, v5}, Lcom/android/server/WifiService;->access$2702(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1472
    .end local v5           #pluggedType:I
    :cond_8
    const-string v10, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1473
    const-string v10, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1475
    .local v6, state:I
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1476
    .end local v6           #state:I
    :cond_9
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1477
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const-string v11, "phoneinECMState"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2802(Lcom/android/server/WifiService;Z)Z

    .line 1478
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 1479
    :cond_a
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1481
    const-string v10, "WifiService"

    const-string v11, "Receive IP Policy Intent"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v10, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->handleSecurityPolicy()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method

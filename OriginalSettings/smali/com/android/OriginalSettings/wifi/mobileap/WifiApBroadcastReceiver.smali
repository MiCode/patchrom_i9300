.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static MAX_CLIENTS:I

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field public static mIsForegroundWifiSettings:Z


# instance fields
.field private mLastClientNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 49
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 50
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 53
    sput v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    .line 58
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->WIFI_AP_ON_ICON:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0xet 0x2t 0x2t 0x7ft
        0xft 0x2t 0x2t 0x7ft
        0x10t 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
        0x12t 0x2t 0x2t 0x7ft
        0x13t 0x2t 0x2t 0x7ft
        0x14t 0x2t 0x2t 0x7ft
        0x15t 0x2t 0x2t 0x7ft
        0x16t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    return-void
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 246
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    const/16 v2, 0x4b0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctxt"
    .parameter "type"

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 256
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, wifiApIntent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    .end local v0           #wifiApIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, action:Ljava/lang/String;
    const-string v18, "WifiApBroadcastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive: action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v18, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 77
    const-string v18, "wifi_state"

    const/16 v19, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 79
    .local v7, apState:I
    packed-switch v7, :pswitch_data_0

    .line 237
    .end local v7           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 81
    .restart local v7       #apState:I
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :pswitch_2
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 112
    .end local v7           #apState:I
    :cond_1
    const-string v18, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 113
    const-string v18, "wifiap_power_mode_alarm_option"

    const/16 v19, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 115
    .local v12, option:I
    if-nez v12, :cond_4

    .line 116
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v15

    .line 117
    .local v15, powermode_value:I
    const-string v18, "WifiApBroadcastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ALARM_START : set "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sec"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v15, :cond_2

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    mul-int/lit16 v0, v15, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v9, v18, v20

    .line 121
    .local v9, expireTime:J
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, alarm_intent:Landroid/content/Intent;
    const-string v18, "wifiap_power_mode_alarm_option"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 125
    .local v13, pending:Landroid/app/PendingIntent;
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 126
    .local v6, am:Landroid/app/AlarmManager;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0, v9, v10, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 129
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 131
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v9           #expireTime:J
    .end local v13           #pending:Landroid/app/PendingIntent;
    :cond_2
    sget-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v18, :cond_3

    .line 132
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v18, "wifiap_power_mode_alarm_option"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 136
    .restart local v13       #pending:Landroid/app/PendingIntent;
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 137
    .restart local v6       #am:Landroid/app/AlarmManager;
    invoke-virtual {v6, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 139
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v13           #pending:Landroid/app/PendingIntent;
    :cond_3
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 141
    .end local v15           #powermode_value:I
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_6

    .line 142
    const-string v18, "WifiApBroadcastReceiver"

    const-string v19, "ALARM_EXPIRE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 144
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 147
    const-string v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 148
    .local v14, pm:Landroid/os/PowerManager;
    const/16 v18, 0x1

    const-string v19, "MobileAPCloseService"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 150
    .local v11, mStopService:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    const-string v18, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 157
    .local v17, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v16

    .line 158
    .local v16, wifiApState:I
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v15

    .line 160
    .restart local v15       #powermode_value:I
    const-string v18, "WifiApBroadcastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "powermode_value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    if-eqz v15, :cond_5

    .line 162
    const-string v18, "WifiApBroadcastReceiver"

    const-string v19, "--> ap disable"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 166
    :cond_5
    if-eqz v11, :cond_0

    .line 168
    :try_start_1
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 151
    .end local v15           #powermode_value:I
    .end local v16           #wifiApState:I
    .end local v17           #wm:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v8

    .line 152
    .local v8, e:Ljava/lang/Throwable;
    const-string v18, "WifiApBroadcastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    .end local v8           #e:Ljava/lang/Throwable;
    .restart local v15       #powermode_value:I
    .restart local v16       #wifiApState:I
    .restart local v17       #wm:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v8

    .line 171
    .restart local v8       #e:Ljava/lang/Throwable;
    const-string v18, "WifiApBroadcastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot release wake lock ~~"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    .end local v8           #e:Ljava/lang/Throwable;
    .end local v11           #mStopService:Landroid/os/PowerManager$WakeLock;
    .end local v14           #pm:Landroid/os/PowerManager;
    .end local v15           #powermode_value:I
    .end local v16           #wifiApState:I
    .end local v17           #wm:Landroid/net/wifi/WifiManager;
    :cond_6
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v12, v0, :cond_0

    .line 175
    const-string v18, "WifiApBroadcastReceiver"

    const-string v19, "ALARM_STOP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v18, :cond_0

    sget-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v18, :cond_0

    .line 177
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v18, "wifiap_power_mode_alarm_option"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 180
    .restart local v13       #pending:Landroid/app/PendingIntent;
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 181
    .restart local v6       #am:Landroid/app/AlarmManager;
    invoke-virtual {v6, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 182
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 185
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v12           #option:I
    .end local v13           #pending:Landroid/app/PendingIntent;
    :cond_7
    const-string v18, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 186
    const-string v18, "NUM"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 188
    .local v3, ClientNum:I
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 189
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 214
    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 212
    :cond_8
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_2

    .line 234
    .end local v3           #ClientNum:I
    :cond_9
    const-string v18, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

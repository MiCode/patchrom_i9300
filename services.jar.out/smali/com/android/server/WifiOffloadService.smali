.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# static fields
.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DIALOG_TIMER_MAX:J = 0x240c8400L

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I

.field public static USER_PRESSED_OK:I

.field public static USER_PRESSED_TURN_OFF_WIFI:I

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field private ACTION_DELETE_REQUEST:Ljava/lang/String;

.field public DATA_USAGE_THRESHOLD:I

.field private final DONT_USE_WIFI_PRESS_TIMER:I

.field private EXTRA_SSID:Ljava/lang/String;

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field private am:Landroid/app/ActivityManager;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field public currentIntelScanMode:Z

.field private data_usage:J

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field public dontUsePressTime:J

.field dont_use_counter:I

.field private funcCallTimer:I

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private isdontUseWifiTimerRuning:Z

.field private lastWifiScanTime:J

.field private launch_count:J

.field private mContext:Landroid/content/Context;

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mPackageName:Ljava/lang/String;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevStationID:I

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private processName:Ljava/lang/String;

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field timer_delay:J

.field private timer_dontUseWifi:Ljava/util/Timer;

.field private tm:Landroid/telephony/TelephonyManager;

.field private user_id:I

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 147
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 148
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 150
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 186
    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    .line 187
    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    .line 188
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    .line 189
    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    .line 854
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    .line 855
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 233
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 145
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 152
    const-string v0, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    .line 153
    const-string v0, "delete_ssid"

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    .line 159
    iput v3, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 164
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 168
    iput v2, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 169
    iput v2, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 171
    iput v3, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 174
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 177
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/WifiOffloadService;->DONT_USE_WIFI_PRESS_TIMER:I

    .line 180
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 185
    iput v3, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 191
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 194
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 198
    iput v3, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 203
    iput-object v4, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 204
    iput v2, p0, Lcom/android/server/WifiOffloadService;->user_id:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    .line 206
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->data_usage:J

    .line 207
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->launch_count:J

    .line 208
    iput v7, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 218
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    .line 223
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    .line 484
    new-instance v0, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    new-instance v0, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 595
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 596
    iput-wide v5, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 597
    iput v7, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1051
    new-instance v0, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    .line 1066
    new-instance v0, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    .line 1155
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1223
    new-instance v0, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v0, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 1931
    iput v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 234
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 236
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "WifiOffloadService is started . . ."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    .line 240
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 248
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 249
    const-string v0, "WifiOffloadService"

    const-string v1, "WifiManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 255
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 257
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 260
    const-string v0, "persist.offload.dontuse.time"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "persist.offload.datausage.limit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiOffloadService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->insertDataUsage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiOffloadService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->updateOffloadFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiOffloadService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1638
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return v1

    .line 1640
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1641
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_2
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1643
    const/4 v1, 0x1

    goto :goto_0

    .line 1640
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1665
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return v1

    .line 1667
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1668
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_2
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1670
    const/4 v1, 0x1

    goto :goto_0

    .line 1667
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1902
    const/4 v0, -0x1

    .line 1905
    .local v0, perm:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1908
    :goto_0
    if-nez v0, :cond_0

    .line 1909
    const/4 v1, 0x1

    .line 1911
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1906
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 1362
    if-nez p0, :cond_1

    .line 1363
    const-string p0, ""

    .line 1374
    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .line 1365
    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1366
    const-string p0, ""

    goto :goto_0

    .line 1369
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1370
    .restart local v0       #lastPos:I
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1371
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1866
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1868
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1871
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataUsageforUID(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1719
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "getDataUsageforApp ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1842
    return-void
.end method

.method private getDialogShown()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getDialogStatusCount(I)I
    .locals 11
    .parameter "stationID"

    .prologue
    const/4 v10, 0x0

    .line 1486
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1487
    const-string v0, "WifiOffloadService"

    const-string v1, "getDialogStatusCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1491
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1492
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1494
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1504
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return v7

    .line 1497
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v7, v10

    .line 1504
    goto :goto_0

    .line 1500
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1501
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getDialogStatusCount for Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v10

    .line 1502
    goto :goto_0
.end method

.method private getWifiState()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private insertDataUsage(I)Z
    .locals 7
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1883
    sget-boolean v4, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertDataUsage for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1886
    .local v0, cvalues:Landroid/content/ContentValues;
    const-string v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1887
    const-string v4, "pkgname"

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v4, "datausage"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1889
    const-string v4, "launchcount"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const-string v4, "offload"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1891
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "data_usage"

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    .end local v0           #cvalues:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 1893
    :catch_0
    move-exception v1

    .line 1894
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v4, "Exception in insertDataUsage for dbHelper"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .line 1896
    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 699
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 705
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 701
    goto :goto_0

    .line 702
    :catch_0
    move-exception v1

    .line 703
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "Settings AIRPLANE_MODE_ON not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 705
    goto :goto_0
.end method

.method private isAnyDataActivity()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, counter:I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_4

    .line 756
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    .line 757
    .local v1, dataActivity:I
    sget-boolean v4, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile data state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 772
    .end local v1           #dataActivity:I
    :cond_1
    :goto_1
    return v3

    .line 765
    .restart local v1       #dataActivity:I
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :catch_0
    move-exception v2

    .line 767
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 772
    .end local v1           #dataActivity:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)V
    .locals 2
    .parameter "processName"

    .prologue
    .line 919
    if-nez p1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private isForeGroundAppRunning()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1678
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 1679
    const-string v3, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForeGroundAppRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1682
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1683
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1684
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForeGroundAppRunning  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1692
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return v3

    .line 1689
    :catch_0
    move-exception v1

    .line 1690
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WifiOffloadService"

    const-string v4, "Exception in isForeGroundAppRunning check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v5

    .line 1692
    goto :goto_0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 714
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    .line 718
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v2, "No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 726
    :goto_0
    return v0

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    .line 722
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v2, "Hotspot is ON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 723
    goto :goto_0

    .line 725
    :cond_4
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "WifiOffloadService"

    const-string v1, "Hotspot is Off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 6

    .prologue
    .line 736
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 737
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 738
    .local v2, netInfo:Landroid/net/NetworkInfo;
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pEnabled():: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 743
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiOffloadService"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTempPopupBlocked(I)Z
    .locals 2
    .parameter "stationID"

    .prologue
    .line 1474
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_1

    .line 1475
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "back key logic we are on the same base station"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1479
    :goto_0
    return v0

    .line 1478
    :cond_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    const-string v1, "back key logic, looks like location changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isdontUseWifiTimerRuning(I)Z
    .locals 5
    .parameter "stationID"

    .prologue
    const/4 v0, 0x0

    .line 619
    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v1, :cond_3

    .line 620
    iget v1, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v1, p1, :cond_2

    .line 621
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer is runing but location didn\'t change, TIMER_DELAY) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 623
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, ">>>>>>>>>>>>>>>>>>>timer didn\'t executed so resetting the flag in diff location!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 626
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 633
    :goto_0
    return v0

    .line 629
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0

    .line 633
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    goto :goto_0
.end method

.method private setWaitForDialogShown()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1128
    return-void
.end method

.method private setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 231
    return-void
.end method

.method private showAppRunningOverWifiDialog()V
    .locals 6

    .prologue
    .line 452
    const-string v3, "WifiOffloadService"

    const-string v4, "showAppRunningOverWifiDialog ---------------->>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 464
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    :cond_0
    move v0, v1

    .line 467
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_1
    return-void
.end method

.method private updateOffloadFlag(I)V
    .locals 6
    .parameter "uid"

    .prologue
    .line 1876
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1877
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "offload"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1878
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "data_usage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 1107
    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1109
    :try_start_0
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v3, "<<<<<<<<<<<<<<<< Waiting Till Dialog is created >>>>>>>>>>>"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1115
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    const-string v3, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>>"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1196
    packed-switch p0, :pswitch_data_0

    .line 1206
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1198
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1200
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1202
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1204
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .locals 4
    .parameter "mStationId"
    .parameter "isBlock"

    .prologue
    const/4 v3, 0x1

    .line 1436
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_3

    .line 1437
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1438
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "wifi offload : Okay, we can show pop up next time"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    :goto_0
    return v3

    .line 1440
    :cond_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temporary pop up blocked is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_2
    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1442
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_0

    .line 1446
    :cond_3
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiOffloadService"

    const-string v1, "wifi offload : different station id so reset value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1448
    sput v3, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 1449
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_0
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .locals 4
    .parameter "packagName"

    .prologue
    .line 1849
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1850
    :try_start_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v2, "Calling data usage in seperate thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    :try_start_1
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v2, "waiting here"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_1
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1858
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v1

    return v0

    .line 1860
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 4
    .parameter "taskID"

    .prologue
    .line 1137
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "Move task to front..!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1140
    .local v1, manager:Landroid/app/IActivityManager;
    const/4 v2, 0x2

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception move task to front"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 888
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "test 1 passed for starting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    const/4 v1, -0x1

    .line 893
    .local v1, perm:I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 897
    :goto_0
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 912
    .end local v1           #perm:I
    :cond_2
    :goto_1
    return-void

    .line 894
    .restart local v1       #perm:I
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0

    .line 903
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 906
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiOffloadService"

    const-string v3, "Now turning ON wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 910
    :cond_5
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    const-string v3, "starting activity now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkIsWifiConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1158
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    move v1, v2

    .line 1185
    :goto_0
    return v1

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1166
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1167
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1168
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    const-string v3, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 1169
    goto :goto_0

    .line 1172
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1174
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1175
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_4

    move v1, v2

    .line 1176
    goto :goto_0

    .line 1178
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1179
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1180
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiOffloadService"

    const-string v2, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v3

    .line 1181
    goto :goto_0

    .line 1183
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1184
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "WifiOffloadService"

    const-string v3, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v1, v2

    .line 1185
    goto :goto_0
.end method

.method public checkisScreenOn()Z
    .locals 4

    .prologue
    .line 1383
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "checkisScreenOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1386
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1389
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return v2

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception when checking is screen on"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAllAccessPoints()V
    .locals 6

    .prologue
    .line 1990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :goto_0
    return-void

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    const-string v2, "Exception in test api clearAllAccessPoints"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public collectWiFiDetails()V
    .locals 3

    .prologue
    .line 1307
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "getWiFiDetails()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1312
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_3

    .line 1321
    :cond_2
    :goto_0
    return-void

    .line 1315
    :cond_3
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1316
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 1317
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createWiFiOffloadDB()V
    .locals 3

    .prologue
    .line 1213
    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 1214
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    const-string v2, "Exception in create WifiOffloadDB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .locals 7
    .parameter "networkName"

    .prologue
    .line 1700
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    .line 1701
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    const/4 v1, 0x0

    .line 1704
    .local v1, rows:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1708
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 1709
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_2
    return v1

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in delete network"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 858
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "doOffloadStuff()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    .line 861
    .local v0, wifiIntelligentMode:Z
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_1
    if-eqz v0, :cond_3

    .line 864
    if-eqz p1, :cond_5

    .line 865
    sget-object v2, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_0
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process pkName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    :try_start_1
    sget-object v1, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 872
    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    if-eqz v1, :cond_4

    .line 873
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 874
    monitor-exit v2

    .line 883
    :cond_3
    :goto_1
    return v5

    .line 876
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 879
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offload pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 876
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 870
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActualState()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 951
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    :goto_0
    return v0

    .line 955
    :cond_1
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE is granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1939
    const/4 v10, 0x0

    .line 1940
    .local v10, ssIDs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1942
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    const-string v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1948
    if-eqz v7, :cond_2

    .line 1949
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 1950
    const/4 v8, 0x0

    .line 1951
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1953
    :cond_0
    const-string v0, "wifissid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 1954
    add-int/lit8 v8, v8, 0x1

    .line 1955
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1957
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    .line 1960
    .end local v8           #count:I
    :goto_0
    return-object v0

    .line 1943
    :catch_0
    move-exception v9

    .line 1944
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getAvailableSSIDNames for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 1945
    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v11

    .line 1960
    goto :goto_0
.end method

.method public getCDMABaseStationID()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 1326
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v4, "getCDMABaseStationID()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    const/4 v0, 0x0

    .line 1329
    .local v0, baseStation:I
    iget v2, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v2, v3, :cond_1

    .line 1330
    iget v2, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1357
    :goto_0
    return v2

    .line 1332
    :cond_1
    const/4 v1, -0x1

    .line 1334
    .local v1, phoneType:I
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    .line 1335
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    move v2, v3

    .line 1336
    goto :goto_0

    .line 1339
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 1341
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 1343
    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is not CDMA but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1344
    goto :goto_0

    .line 1347
    :cond_4
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1348
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v2, :cond_5

    .line 1349
    const-string v2, "WifiOffloadService"

    const-string v4, "cdma location is null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1350
    goto :goto_0

    .line 1353
    :cond_5
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 1354
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v2, v0

    .line 1357
    goto/16 :goto_0
.end method

.method public getIntelligentWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 670
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 673
    const-string v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 672
    goto :goto_0

    :cond_1
    move v2, v3

    .line 673
    goto :goto_1
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .locals 4

    .prologue
    .line 1081
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning the last scanned time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1572
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_0

    .line 1590
    :goto_0
    return v7

    .line 1576
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1577
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1578
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1579
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1580
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1586
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1587
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getNeverTurnonWiFiValue for Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v7, v10

    .line 1588
    goto :goto_0

    .line 1583
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v7, v10

    .line 1590
    goto :goto_0
.end method

.method public getStationID()I
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public intelScanMode(Z)Z
    .locals 5
    .parameter "intelMode"

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 827
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 828
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 843
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return v1

    .line 832
    :cond_1
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ichecking if supplicant running ?? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->pingSupplicant()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 835
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplicant is running and setting new scan interval values to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 837
    const/16 v2, 0x8

    invoke-static {v2, p1}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v2

    if-nez v2, :cond_0

    .line 838
    const/4 v1, 0x1

    goto :goto_0

    .line 842
    :cond_4
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "Supplicant is not running; not able to set scan interval values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1614
    if-nez p1, :cond_0

    .line 1615
    const/4 v0, 0x0

    .line 1616
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1653
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1654
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1655
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    const/4 v1, 0x1

    .line 1660
    .end local v0           #j:I
    :goto_1
    return v1

    .line 1654
    .restart local v0       #j:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    .end local v0           #j:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDontUseWifiPressed()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 3

    .prologue
    .line 849
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is intel scan mode enabled ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    return v0
.end method

.method public isMobileDataActive()I
    .locals 5

    .prologue
    .line 781
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 782
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    .line 783
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "No Telephony manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    const/4 v0, 0x2

    .line 790
    :cond_1
    :goto_0
    return v0

    .line 787
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 788
    .local v0, activity:I
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telephony state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNotifyMeChecked()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 683
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 689
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 685
    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "exception happened while checking NotifyMe"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 689
    goto :goto_0
.end method

.method public isUIDAvailable(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 1917
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "data_usage"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1918
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1919
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1920
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1921
    const/4 v0, 0x0

    .line 1925
    :goto_0
    return v0

    .line 1924
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1925
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 1626
    if-nez p1, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return v0

    .line 1629
    :cond_1
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 1632
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWifiSeamlessConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    .line 1118
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    :try_start_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v2, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1121
    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1122
    monitor-exit v1

    .line 1123
    return-void

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActualStateChange(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1148
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1151
    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1152
    .local v0, wifiState:I
    goto :goto_0
.end method

.method protected requestStateChange()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2

    .line 1029
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiOffloadService"

    const-string v4, "No wifiManager."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .line 1045
    :goto_0
    return v2

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v1

    .line 1035
    .local v1, wifi_state:I
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_3
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiOffloadService"

    const-string v4, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 1039
    goto :goto_0

    .line 1041
    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1042
    const-string v2, "WifiOffloadService"

    const-string v3, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    move-result v0

    :cond_6
    move v2, v0

    .line 1045
    goto :goto_0
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .locals 11
    .parameter "networkName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 965
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 966
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 968
    :cond_0
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_2

    .line 969
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiOffloadService"

    const-string v8, "No wifiManager."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v7

    .line 1004
    :goto_0
    return v6

    .line 973
    :cond_2
    const/4 v4, 0x0

    .line 977
    .local v4, nowWaitForConnection:I
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_3
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 979
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 981
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuration is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, ssid:Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSID is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 986
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 987
    .local v3, netId:I
    const-string v6, "WifiOffloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable network for SSID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 989
    const-string v6, "WifiOffloadService"

    const-string v9, "enableNetwork passed"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v6, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 995
    const-string v6, "WifiOffloadService"

    const-string v7, "Connected "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 996
    goto/16 :goto_0

    .line 991
    :cond_7
    const-string v6, "WifiOffloadService"

    const-string v8, "failed enableNetwork"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 992
    goto/16 :goto_0

    .line 998
    :cond_8
    const-string v6, "WifiOffloadService"

    const-string v8, "failed to connect"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 999
    goto/16 :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #netId:I
    .end local v5           #ssid:Ljava/lang/String;
    :cond_9
    move v6, v7

    .line 1004
    goto/16 :goto_0
.end method

.method protected requestStateChange(Z)Z
    .locals 3
    .parameter "desiredState"

    .prologue
    .line 1009
    const/4 v0, 0x1

    .line 1011
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 1015
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_1
    const/4 v1, 0x0

    .line 1019
    :goto_0
    return v1

    .line 1018
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    .line 1019
    goto :goto_0
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .locals 11
    .parameter "stationID"

    .prologue
    .line 1401
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "requestWifiListForStationID()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning performed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_1
    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 1405
    const/4 v7, 0x0

    .line 1406
    .local v7, availableWiFi:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1408
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1413
    :goto_0
    if-eqz v9, :cond_4

    .line 1414
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1415
    const/4 v8, 0x0

    .line 1416
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1418
    :cond_2
    const-string v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1419
    add-int/lit8 v8, v8, 0x1

    .line 1420
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1422
    .end local v8           #count:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1424
    :cond_4
    return-object v7

    .line 1409
    :catch_0
    move-exception v10

    .line 1410
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentTestBaseStationID()V
    .locals 1

    .prologue
    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 1974
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 1975
    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1596
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetNeverTurnOnWifi() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v0, :cond_1

    .line 1598
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1599
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 1600
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->timer_dontUseWifi:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1603
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1604
    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1605
    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 2
    .parameter "value"
    .parameter "isDontShowChecked"

    .prologue
    .line 471
    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 472
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "notification came"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .locals 1
    .parameter "stationID"

    .prologue
    .line 1965
    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 1967
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 1969
    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 0
    .parameter "isPressed"

    .prologue
    .line 810
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 811
    return-void
.end method

.method public setNeverTurnOnWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1608
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "setNeverTurnOnWifi()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1610
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1611
    return-void
.end method

.method public setStationID(I)V
    .locals 0
    .parameter "stationID"

    .prologue
    .line 2029
    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 2030
    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiAuth"

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 2021
    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiBSSID"

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 2013
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiSSID"

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 2005
    return-void
.end method

.method public showAPDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1087
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    sget-boolean v3, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiOffloadService"

    const-string v4, "Going to show AP dialog now"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v2, startDialogIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1091
    const-string v3, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1093
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 1096
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1097
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .line 1101
    .end local v0           #counter:I
    .end local v2           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    return v6
.end method

.method public startBackKeyTimer()V
    .locals 4

    .prologue
    .line 1457
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    .line 1459
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1470
    return-void
.end method

.method public startDataActivityTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 526
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 532
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 571
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 574
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 592
    return-void
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 599
    sget-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadService"

    const-string v2, "started Timer when user pressed Don\'t use WiFi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 602
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 603
    .local v0, baseStation:I
    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 606
    const-string v1, "persist.offload.dontuse.time"

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 607
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer dealy -- >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    iget v3, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 609
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 610
    iput v5, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_1
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0
.end method

.method public stopDataActivityTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 552
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 558
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public storeWiFiDetails()V
    .locals 5

    .prologue
    .line 1288
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    .line 1289
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeWiFiDetails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getWifiBSSID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1293
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in StoreWiFiDetais()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    const/4 v1, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    .line 652
    .local v0, state:I
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait for data activity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    if-eqz p2, :cond_2

    .line 655
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    const/4 v1, 0x0

    .line 661
    :cond_1
    :goto_0
    return v1

    .line 658
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .locals 7
    .parameter "ssid"
    .parameter "stationID"

    .prologue
    .line 1978
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1979
    .local v2, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    :goto_0
    return-void

    .line 1982
    :catch_0
    move-exception v6

    .line 1983
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in test api updateBaseStationIDs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDialogStatus(I)V
    .locals 10
    .parameter "stationID"

    .prologue
    .line 1515
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogStatus "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_0
    iput p1, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 1518
    const/4 v8, 0x1

    .line 1520
    .local v8, resetDialogCount:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1521
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1522
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1526
    const/4 v9, 0x0

    .line 1528
    .local v9, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1529
    if-lez v9, :cond_2

    .line 1530
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_1
    :goto_0
    return-void

    .line 1532
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1533
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1534
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1538
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1540
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1541
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateDialogStatus for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNeverTurnOnWiFi(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 1547
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "updateNeverTurnOnWiFi to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1549
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1551
    const/4 v8, 0x0

    .line 1553
    .local v8, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1554
    if-lez v8, :cond_2

    .line 1555
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_1
    :goto_0
    return-void

    .line 1557
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1558
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1563
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1565
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1566
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateNeverTurnOnWiFi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiReallyOn()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .locals 13
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Main function called "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Times"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 280
    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 282
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    .line 284
    .local v6, intel:Z
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intel mode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    if-nez v6, :cond_3

    .line 287
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "WifiOffloadService"

    const-string v10, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_2
    const/4 v9, 0x0

    .line 447
    :goto_0
    monitor-exit p0

    return v9

    .line 292
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 293
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "WifiOffloadService"

    const-string v10, "WiFi is already connected; return false"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 296
    :cond_5
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isP2pEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 297
    :cond_6
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "WifiOffloadService"

    const-string v10, "Airplane plane OR hotspot OR Wi-Fi Direct is ON; return false"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    .line 303
    :cond_8
    const/4 v2, 0x0

    .line 304
    .local v2, data_counter:I
    if-eqz p2, :cond_d

    move v3, v2

    .line 305
    .end local v2           #data_counter:I
    .local v3, data_counter:I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 308
    add-int/lit8 v2, v3, 0x1

    .end local v3           #data_counter:I
    .restart local v2       #data_counter:I
    const/16 v9, 0x32

    if-le v3, v9, :cond_a

    .line 309
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_9

    const-string v9, "WifiOffloadService"

    const-string v10, "returning since data activity is going on for more than 10 Secs"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :cond_9
    const/4 v9, 0x0

    goto :goto_0

    .line 314
    :cond_a
    const-wide/16 v9, 0xc8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    .line 317
    .end local v2           #data_counter:I
    .restart local v3       #data_counter:I
    goto :goto_1

    .line 315
    .end local v3           #data_counter:I
    .restart local v2       #data_counter:I
    :catch_0
    move-exception v4

    .line 316
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_b

    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    move v3, v2

    .line 317
    .end local v2           #data_counter:I
    .restart local v3       #data_counter:I
    goto :goto_1

    .end local v4           #e:Ljava/lang/Exception;
    :cond_c
    move v2, v3

    .line 321
    .end local v3           #data_counter:I
    .restart local v2       #data_counter:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 323
    .local v0, baseStation:I
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 324
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_e

    const-string v9, "WifiOffloadService"

    const-string v10, "isdontUseWifiTimerRuning is true dont offload"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_e
    const/4 v9, 0x0

    goto :goto_0

    .line 328
    :cond_f
    const/4 v8, 0x0

    .line 329
    .local v8, nowWaitForConnection:Z
    const/4 v9, -0x1

    if-eq v0, v9, :cond_10

    if-nez v0, :cond_13

    .line 330
    :cond_10
    const-string v9, "WifiOffloadService"

    const-string v10, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-eqz v9, :cond_12

    if-nez p2, :cond_12

    .line 333
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_11

    const-string v9, "WifiOffloadService"

    const-string v10, "Base Station is -1 but wifi is ON show the dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    .line 336
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 338
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, networkList:[Ljava/lang/String;
    if-eqz v7, :cond_14

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_1e

    .line 341
    :cond_14
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_16

    .line 342
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_15

    const-string v9, "WifiOffloadService"

    const-string v10, "No networks and wifi is off so don\'t offload"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 347
    :cond_16
    const/4 v9, -0x1

    if-eq v0, v9, :cond_17

    if-nez v0, :cond_19

    .line 356
    :cond_17
    :goto_2
    if-eqz p2, :cond_1c

    .line 357
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_18

    const-string v9, "WifiOffloadService"

    const-string v10, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 350
    :cond_19
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_1a

    const-string v9, "WifiOffloadService"

    const-string v10, "Setting intel mode scan interval to TRUE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1a
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1b

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->intelScanMode(Z)Z

    .line 354
    :cond_1b
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_17

    const-string v9, "WifiOffloadService"

    const-string v10, "Setting intel mode scan done "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 278
    .end local v0           #baseStation:I
    .end local v2           #data_counter:I
    .end local v6           #intel:Z
    .end local v7           #networkList:[Ljava/lang/String;
    .end local v8           #nowWaitForConnection:Z
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 361
    .restart local v0       #baseStation:I
    .restart local v2       #data_counter:I
    .restart local v6       #intel:Z
    .restart local v7       #networkList:[Ljava/lang/String;
    .restart local v8       #nowWaitForConnection:Z
    :cond_1c
    :try_start_4
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_1d

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNotifyMeChecked :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-nez v9, :cond_25

    .line 364
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 367
    :cond_1e
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 369
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v9, v7

    if-ge v5, v9, :cond_25

    .line 370
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_1f

    const-string v9, "WifiOffloadService"

    const-string v10, "requestStateChange : status true"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1f
    const/4 v9, 0x1

    if-ne p2, v9, :cond_23

    .line 372
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isForeGroundAppRunning()Z

    move-result v9

    if-nez v9, :cond_21

    .line 373
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_20

    const-string v9, "WifiOffloadService"

    const-string v10, "isWaitRequired:  true || foreground app is not running"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_20
    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    .line 369
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 377
    :cond_21
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_22

    const-string v9, "WifiOffloadService"

    const-string v10, "isForeGroundAppRunning:  true"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_22
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 381
    :cond_23
    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    goto :goto_4

    .line 385
    .end local v5           #i:I
    :cond_24
    if-nez p2, :cond_2f

    .line 386
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 387
    const-string v9, "WifiOffloadService"

    const-string v10, "Connect WiFi seamlessly"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v8

    .line 423
    :cond_25
    :goto_5
    const/4 v1, 0x0

    .line 424
    .local v1, counter:I
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_26

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestStateChange returned"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_26
    :goto_6
    const/4 v9, 0x1

    if-ne v8, v9, :cond_32

    const/16 v9, 0x64

    if-ge v1, v9, :cond_32

    .line 427
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v9, v10, :cond_30

    .line 428
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_27

    const-string v9, "WifiOffloadService"

    const-string v10, "Association completed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_27
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 390
    .end local v1           #counter:I
    :cond_28
    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/server/WifiOffloadService;->setAppRunOverWiFiResult(IZ)V

    .line 391
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->showAppRunningOverWifiDialog()V

    .line 393
    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    :try_start_5
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_29

    const-string v9, "WifiOffloadService"

    const-string v11, "Waiting for user response"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_29
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    const-wide/32 v11, 0x927c0

    invoke-virtual {v9, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 399
    :goto_7
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 400
    :try_start_7
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_2a

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appRunOverWiFiResult: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2a
    iget v9, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v10, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    if-ne v9, v10, :cond_2b

    .line 402
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v8

    goto :goto_5

    .line 399
    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v9

    .line 403
    :cond_2b
    iget v9, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v10, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    if-ne v9, v10, :cond_2c

    .line 404
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startDontUseWiFiPressedTimer()V

    .line 405
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 406
    :cond_2c
    iget v9, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v10, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    if-ne v9, v10, :cond_2d

    .line 407
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 409
    :cond_2d
    iget v9, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_25

    .line 410
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_2e

    const-string v9, "WifiOffloadService"

    const-string v10, " wifiOffloadFlow ---- TIMEOUT!!!:"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 411
    :cond_2e
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 417
    :cond_2f
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 432
    .restart local v1       #counter:I
    :cond_30
    const-wide/16 v9, 0xc8

    :try_start_a
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 436
    :cond_31
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 433
    :catch_1
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_b
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_31

    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 440
    .end local v4           #e:Ljava/lang/Exception;
    :cond_32
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_33

    const-string v9, "WifiOffloadService"

    const-string v10, "enableNetwork API failed based on location, try to call standard API"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_33
    if-nez p2, :cond_35

    .line 443
    sget-boolean v9, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v9, :cond_34

    const-string v9, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWaitrequired "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_34
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v9

    if-nez v9, :cond_35

    .line 445
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 447
    :cond_35
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 397
    .end local v1           #counter:I
    :catch_2
    move-exception v9

    goto/16 :goto_7
.end method

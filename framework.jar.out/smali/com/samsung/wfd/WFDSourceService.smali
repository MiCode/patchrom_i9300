.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static mCpuLockEnabled:Z

.field private static m_bAlive:Z


# instance fields
.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mBlockedRemoteEvents:Z

.field private mCurrentWDState:I

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mFrequency:I

.field private mPauseMode:Z

.field private mPhoneCall:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 99
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 86
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 88
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 89
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 97
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 101
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 294
    return-void
.end method

.method private StartRTSP()V
    .locals 5

    .prologue
    .line 394
    const v0, 0xc000

    .line 400
    .local v0, lListeningPort:I
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wfd native start port :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v1, 0x0

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/wfd/WFDNative;->start(IIIII)Z

    .line 404
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->startForegroundCompat()V

    .line 405
    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 451
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private startForegroundCompat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 458
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 461
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 462
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 464
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 465
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 470
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v2, 0x0

    .line 109
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 127
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 13
    .parameter "arg0"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 148
    const-string v6, "WFDSourceService"

    const-string v7, "Bind!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v6, "freq"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 151
    const-string v6, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v6, "/sys/devices/system/cpu/busfreq/curr_freq"

    const v7, 0x61b48

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    const-string v6, "WFDSourceService"

    const-string v7, "bus frequency lock success onBind"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v6, :cond_0

    .line 161
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 164
    :cond_0
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v6, :cond_1

    .line 165
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v5

    .line 169
    .local v5, supportedFreq:[I
    :try_start_0
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const/4 v8, 0x4

    aget v8, v5, v8

    const-string v9, "WFDSourceService"

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$DVFSLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_2
    const-string v6, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wfd fix DVFS_MIN_LIMIT by freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sput-boolean v10, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 187
    .end local v5           #supportedFreq:[I
    :cond_1
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 188
    .local v1, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v6, "WFDSourceService"

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 189
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 191
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 192
    .local v0, PowerMgr:Landroid/os/PowerManager;
    const v6, 0x2000001a

    const-string v7, "WFDSourceService"

    invoke-virtual {v0, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 194
    const-string v6, "WFDSourceService"

    const-string/jumbo v7, "lock acquire!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput v11, p0, Lcom/samsung/wfd/WFDSourceService;->mCurrentWDState:I

    .line 197
    sput-boolean v10, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 199
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 200
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 202
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v6, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v6, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    new-instance v6, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 215
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v6

    .line 157
    .end local v0           #PowerMgr:Landroid/os/PowerManager;
    .end local v1           #WifiMgr:Landroid/net/wifi/WifiManager;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v6, "WFDSourceService"

    const-string v7, "bus frequency lock fail onBind"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .restart local v5       #supportedFreq:[I
    :catch_0
    move-exception v3

    .line 171
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "WFDSourceService"

    const-string/jumbo v7, "newDVFSLock is failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 177
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 178
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "WFDSourceService"

    const-string/jumbo v7, "mDVFSLock.acquire is failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 268
    const-string v1, "WFDSourceService"

    const-string v2, "create WFD Source service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v1, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v1, v3}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock success onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_1
    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 291
    :cond_0
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 274
    :cond_1
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock failed  onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v1, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v1, v3}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock success onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_1
    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 447
    :cond_0
    return-void

    .line 417
    :cond_1
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock failed  onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "WFDSourceService"

    const-string/jumbo v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 369
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 370
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 374
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 390
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 221
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "unBind!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 225
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const-string v2, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v2, v4}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const-string v2, "WFDSourceService"

    const-string v3, "bus frequency unlock success onUnbind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    const-string v2, "WFDSourceService"

    const-string v3, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 246
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 253
    :cond_1
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "lock release!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 256
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 258
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->stopForegroundCompat()V

    .line 260
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 231
    :cond_2
    const-string v2, "WFDSourceService"

    const-string v3, "bus frequency unlock failed  onUnbind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "mDVFSLock.release is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

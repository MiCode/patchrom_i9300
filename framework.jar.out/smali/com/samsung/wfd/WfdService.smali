.class public Lcom/samsung/wfd/WfdService;
.super Lcom/samsung/wfd/IWfdManager$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine;,
        Lcom/samsung/wfd/WfdService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private mAudioCnt:Ljava/lang/String;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mCurrentDimm:Ljava/lang/String;

.field private mCurrentResln:I

.field private mDongleUpdateResult:Z

.field private mDongleVer:Ljava/lang/String;

.field private mFrequencyAp:I

.field private mFrequencyWfd:I

.field private mHDMIConnected:Z

.field private mHDMITrigger:Z

.field private mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mRemoteIP:Ljava/lang/String;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRequestSessionControl:Ljava/lang/String;

.field private mResolutionBitMask:I

.field mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

.field private mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

.field private mSourceReslnBitMask:I

.field private mUpdateURL:Ljava/lang/String;

.field private mUseRTSPService:Z

.field private mWaitHotspotDone:Z

.field private mWfdEnabledFromPicker:Z

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private mWfdRestartOngoing:Z

.field private mWfdRestartTrigger:Z

.field private mWfdSourceConnection:Landroid/content/ServiceConnection;

.field mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

.field private final mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

.field private final mWfdSupported:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTrigger:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    invoke-direct {p0}, Lcom/samsung/wfd/IWfdManager$Stub;-><init>()V

    .line 146
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 147
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 148
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    .line 150
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNwService:Landroid/os/INetworkManagementService;

    .line 153
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 154
    new-instance v1, Lcom/samsung/wfd/WfdService$1;

    invoke-direct {v1, p0}, Lcom/samsung/wfd/WfdService$1;-><init>(Lcom/samsung/wfd/WfdService;)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    .line 171
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 174
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 175
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 177
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 179
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 180
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 181
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 182
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    .line 183
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    .line 184
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    .line 185
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    .line 190
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    .line 195
    const/16 v1, 0x19

    iput v1, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    .line 197
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    .line 199
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    .line 201
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    .line 203
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 205
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 206
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 207
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 208
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 209
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 210
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 212
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 213
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 214
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 216
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    .line 217
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 219
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 220
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 221
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 1550
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

    .line 1551
    new-instance v1, Lcom/samsung/wfd/WfdService$3;

    invoke-direct {v1, p0}, Lcom/samsung/wfd/WfdService$3;-><init>(Lcom/samsung/wfd/WfdService;)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    .line 224
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 226
    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 228
    const-string/jumbo v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    .line 234
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 235
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 236
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 237
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 238
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 240
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 241
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 242
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 243
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 244
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 247
    new-instance v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "WfdService"

    iget-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;-><init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 248
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->start()V

    .line 250
    new-instance v1, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v1}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 255
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 257
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 259
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "WfdService"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 269
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v1, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct {v2, p0, v5}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 290
    return-void

    .line 265
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "WfdService"

    const-string/jumbo v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->setWfdState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/wfd/WfdService;->startWfdRoutine()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    return-object p1
.end method

.method private broadcastDongleVerToFota()V
    .locals 4

    .prologue
    .line 375
    const-string v2, "WfdService"

    const-string v3, "broadcastDongleVerToFota"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "com.samsung.wfd.START_WFD"

    .line 379
    .local v0, ACTION_START_WFD:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.START_WFD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 383
    const-string/jumbo v2, "version"

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method private broadcastIntent2HDMI(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 295
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_0

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 309
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 305
    :pswitch_0
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iput-boolean v5, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 332
    :goto_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    if-eqz v1, :cond_1

    .line 316
    packed-switch p1, :pswitch_data_1

    .line 323
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_1
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    goto :goto_1

    .line 327
    :cond_1
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI is not triggered! no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 316
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastWfdSessionInfo()V
    .locals 4

    .prologue
    .line 392
    const-string v1, "WfdService"

    const-string v2, "broadcastWfdSessionInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_RES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, activityIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string/jumbo v1, "resBitMask"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v1, "curRes"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s:1 ResBit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ResIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private broadcastWfdSessionState(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 340
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastWfdSessionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string/jumbo v2, "resBitMask"

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v2, "curRes"

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "count"

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    :goto_0
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ResBit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ResIn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 357
    const-string v2, "WfdService"

    const-string v3, "broadcastWfdSessionInfo << to AllShare!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, mAllShareCastState:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    if-ne p1, v5, :cond_2

    .line 361
    const-string v2, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 364
    const-string v2, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void

    .line 351
    .end local v1           #mAllShareCastState:Landroid/content/Intent;
    :cond_1
    const-string v2, "count"

    const/16 v3, 0x780

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 367
    .restart local v1       #mAllShareCastState:Landroid/content/Intent;
    :cond_2
    const-string v2, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 819
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 835
    const-string v0, "WfdService"

    const-string/jumbo v2, "isHotspotOn >> No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 851
    :goto_0
    return v0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 847
    const-string v0, "WfdService"

    const-string v2, "Hotspot is Off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 851
    goto :goto_0

    .line 843
    :pswitch_0
    const-string v0, "WfdService"

    const-string v1, "Hotspot is ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSBeamOn()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method private sendWfdBrokerStartForPopup(I)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 469
    :pswitch_0
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWfdStartForPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 423
    :pswitch_1
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_TERMINATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_1
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    :pswitch_2
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_P2P_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    :pswitch_3
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_CONNECTION_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    if-eqz v1, :cond_0

    .line 434
    const-string v1, "WfdService"

    const-string v2, "do not show disconnect popup when restart!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v2, 0x22068

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 442
    :pswitch_4
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 446
    :pswitch_5
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_RESTART"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 450
    :pswitch_6
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_HDMI_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    :pswitch_7
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_HOTSPOT_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :pswitch_8
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_SBEAM_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    :pswitch_9
    const-string v1, "WfdService"

    const-string/jumbo v2, "sendWfdStartForPopup << POPUP_CAUSE_DONGLE_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    goto :goto_1

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x22070
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setHotspotOff()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 860
    const-string v0, "WfdService"

    const-string/jumbo v2, "setHotspotOff >> No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 867
    :goto_0
    return v0

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 865
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    move v0, v2

    .line 867
    goto :goto_0
.end method

.method private setSBeamOff()Z
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method private setWfdState(I)V
    .locals 4
    .parameter "wfdState"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 406
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    const-string/jumbo v1, "wfd_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method private static startWfdRoutine()V
    .locals 4

    .prologue
    .line 478
    const v0, 0xc000

    .line 480
    .local v0, lWfdPort:I
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settting ctrl port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    const-string v1, "dev_info"

    const-string v2, "0400"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    const-string v1, "ctrl_port"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    const-string/jumbo v1, "max_tput"

    const-string v2, "40"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    const-string v1, "cpled_sink_status"

    const-string v2, "00"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->setWfdParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    return-void
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .locals 2

    .prologue
    .line 1028
    const-string v0, "WfdService"

    const-string v1, "WFDGetSubtitleStatus : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 2

    .prologue
    .line 1060
    const-string v0, "WfdService"

    const-string v1, "WFDGetSuspendStatus : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x1

    return v0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 2
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 5
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 1033
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSetSubtitleStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1036
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSubtitleStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WfdService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    :cond_0
    return-void
.end method

.method public getFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 4

    .prologue
    .line 1578
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

    invoke-interface {v2}, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;->GetFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1584
    :goto_0
    return-object v1

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WfdService"

    const-string v3, "getFrame exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1021
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1022
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1000
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public getWfdSinkResolution()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method public getWfdState()I
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isSessionEstablished()Z
    .locals 2

    .prologue
    .line 1012
    const-string/jumbo v0, "wlan.wfd.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnabled(I)Z
    .locals 5
    .parameter "option"

    .prologue
    const v4, 0x2206f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 918
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 920
    packed-switch p1, :pswitch_data_0

    .line 959
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 960
    :goto_0
    return v0

    .line 923
    :pswitch_0
    const-string v1, "WfdService"

    const-string v2, "enforce to disconnect currrent p2p..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/samsung/wfd/WfdService$2;

    invoke-direct {v3, p0}, Lcom/samsung/wfd/WfdService$2;-><init>(Lcom/samsung/wfd/WfdService;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 937
    :pswitch_1
    const-string v2, "WfdService"

    const-string v3, "enforce to disconnect currrent HDMI..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    .line 939
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 943
    :pswitch_2
    const-string v0, "WfdService"

    const-string v2, "enforce to disconnect currrent hotspot..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setHotspotOff()Z

    move v0, v1

    .line 947
    goto :goto_0

    .line 950
    :pswitch_3
    const-string v1, "WfdService"

    const-string v2, "enforce to disconnect currrent sbeam..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setSBeamOff()Z

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 887
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 889
    if-eqz p1, :cond_5

    .line 891
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_0

    .line 892
    const v1, 0x22074

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    .line 913
    :goto_0
    return v0

    .line 894
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isHotspotOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const v1, 0x22075

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 897
    :cond_1
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isSBeamOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const v1, 0x22076

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 900
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-nez v1, :cond_3

    .line 901
    const v1, 0x22072

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 904
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-eqz v0, :cond_4

    .line 905
    const-string v0, "WfdService"

    const-string v1, "already Wfd running..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 907
    :cond_4
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x2206f

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 912
    :cond_5
    const v1, 0x22070

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0
.end method

.method public setWfdRestart()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 970
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 971
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 972
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 973
    return v2
.end method

.method public setWfdRestartOption(I)Z
    .locals 3
    .parameter "option"

    .prologue
    const/4 v2, 0x1

    .line 977
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 978
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 980
    packed-switch p1, :pswitch_data_0

    .line 990
    :goto_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 991
    return v2

    .line 983
    :pswitch_0
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    goto :goto_0

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public setWfdTerminate()Z
    .locals 2

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 965
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 966
    const/4 v0, 0x1

    return v0
.end method

.method public startCapture(I)V
    .locals 4
    .parameter "frameType"

    .prologue
    .line 1563
    const-string v1, "WfdService"

    const-string/jumbo v2, "startCapture!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ScreenCapture.ScreenCaptureRemoteService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "frameType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1566
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1567
    return-void
.end method

.method public stopCapture()V
    .locals 2

    .prologue
    .line 1570
    const-string v0, "WfdService"

    const-string/jumbo v1, "stopCapture!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1572
    return-void
.end method

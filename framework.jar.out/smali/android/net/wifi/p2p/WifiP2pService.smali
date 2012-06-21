.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_P2P_TIMER_EXPIRED:Ljava/lang/String; = "android.net.wifi.p2p.TIMER_EXPIRED"

.field private static final AIRPLANE_MODE_CHANGED:I = 0x23008

.field private static final BASE:I = 0x23000

.field private static final CMD_LOAD_P2P_DRIVER_FAILURE:I = 0x23029

.field private static final CMD_LOAD_P2P_DRIVER_SUCCESS:I = 0x23028

.field private static final CMD_UNLOAD_P2P_DRIVER_FAILURE:I = 0x2302b

.field private static final CMD_UNLOAD_P2P_DRIVER_SUCCESS:I = 0x2302a

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final DBG:Z = true

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String; = null

.field private static final EMERGENCY_CALLBACK_MODE:I = 0x23009

.field private static final FORM_GROUP:Ljava/lang/Boolean; = null

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23003

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final JOIN_GROUP:Ljava/lang/Boolean; = null

.field private static final MAX_CLIENT_SUPPORT:I = 0x5

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field public static final P2P_ENABLE_PENDING:I = 0x23001

.field private static final P2P_EXPIRATION_SCREEN_TIMEOUT:I = 0x1388

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x2710

.field private static final P2P_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final P2P_RESTART_TRIES:I = 0x5

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23006

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23007

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final WIFI_DISABLE_USER_ACCEPT:I = 0x23004

.field private static final WIFI_DISABLE_USER_REJECT:I = 0x23005

.field public static final WIFI_ENABLE_PROCEED:I = 0x23002

.field private static mGroupCreatingTimeoutIndex:I


# instance fields
.field private bAirPlaneMode:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectedDevicesCnt:I

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mExpiredAlertdialog:Landroid/app/AlertDialog;

.field private mHangEvent:Z

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mLapseTime:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pRestartCount:I

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistGroup:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field t_dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 135
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 231
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 122
    iput v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    .line 123
    const/16 v5, 0xb

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    .line 124
    iput-boolean v9, p0, Landroid/net/wifi/p2p/WifiP2pService;->bAirPlaneMode:Z

    .line 127
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 149
    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    .line 200
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    .line 203
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    .line 210
    iput-boolean v9, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z

    .line 211
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 213
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "@android:style/Theme.DeviceDefault"

    invoke-virtual {v5, v6, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, resId:I
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 236
    const-string/jumbo v5, "wifi.interface"

    const-string/jumbo v6, "wlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 237
    new-instance v5, Landroid/net/NetworkInfo;

    const/16 v6, 0xd

    const-string v7, "WIFI_P2P"

    const-string v8, ""

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 239
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 242
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 243
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v5, "WifiP2pService"

    invoke-virtual {v1, v11, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    const v5, 0x1000001a

    const-string v6, "WifiP2pService"

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 248
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 249
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.p2p.TIMER_EXPIRED"

    invoke-direct {v4, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v4, timerIntent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    .line 252
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 255
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_p2p_ssid"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, ssid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 258
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_p2p_ssid"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v3, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 262
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v6, "WifiP2pService"

    iget-boolean v7, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v5, p0, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 263
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v5, "android.net.wifi.p2p.TIMER_EXPIRED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;

    invoke-direct {v6, p0, v10}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return p1
.end method

.method static synthetic access$10300(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return v0
.end method

.method static synthetic access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return p1
.end method

.method static synthetic access$12506(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$12702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$12802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$13002(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return p1
.end method

.method static synthetic access$2100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->bAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->bAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->showTimerExpiredDialog()V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return p1
.end method

.method static synthetic access$4604(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z

    return v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z

    return p1
.end method

.method static synthetic access$6400()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$8100()I
    .locals 1

    .prologue
    .line 108
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8104()I
    .locals 1

    .prologue
    .line 108
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$9600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$9602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
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

.method private showTimerExpiredDialog()V
    .locals 8

    .prologue
    .line 343
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pService$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    .line 361
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$2;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    .line 369
    .local v0, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 371
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 372
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10404ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10404ba

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$3;

    invoke-direct {v4, p0}, Landroid/net/wifi/p2p/WifiP2pService$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    .line 386
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 387
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 388
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 277
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 278
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 279
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 333
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

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

    .line 340
    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 327
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 328
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

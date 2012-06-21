.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final DBG:Z = false

.field private static final DEFAULT_BLACKLIST_FOLLOWUP_INTERVAL_MS:J = 0x3a98L

.field private static final DEFAULT_DNS_CHECK_LONG_INTERVAL_MS:J = 0x36ee80L

.field private static final DEFAULT_DNS_CHECK_SHORT_INTERVAL_MS:J = 0x1d4c0L

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_MAX_SSID_BLACKLISTS:I = 0x7

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x5

.field private static final DEFAULT_WALLED_GARDEN_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final DISABLED_NETWORK_NOTIFICATION_ID:Ljava/lang/String; = "WifiWatchdog.networkdisabled"

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0xc8

.field private static final DNS_START_DELAY_MS:I = 0x3e8

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final LOW_SIGNAL_CUTOFF:I = 0x0

.field private static final MESSAGE_DELAYED_WALLED_GARDEN_CHECK:I = 0x21068

.field private static final MESSAGE_HANDLE_BAD_AP:I = 0x21065

.field private static final MESSAGE_HANDLE_WALLED_GARDEN:I = 0x21064

.field private static final MESSAGE_NETWORK_FOLLOWUP:I = 0x21067

.field private static final MESSAGE_SINGLE_DNS_CHECK:I = 0x21066

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final WALLED_GARDEN_NOTIFICATION_ID:I = 0x1080644

.field private static final WALLED_GARDEN_NOTIFICATION_TAG:Ljava/lang/String; = "WifiWatchdog.walledgarden"

.field private static final WALLED_GARDEN_SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final WALLED_GARDEN_START_DELAY_MS:I = 0xbb8

.field private static final WIFI_SIGNAL_LEVELS:I = 0x4

.field private static sWifiOnly:Z


# instance fields
.field private mBlacklistFollowupIntervalMs:J

.field private mBlacklistedApState:Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mConnectionInfo:Landroid/net/wifi/WifiInfo;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDelayWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

.field public mDisableAPNextFailure:Z

.field private mDisabledNotificationShown:Z

.field private mDnsCheckFailureState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

.field private mDnsCheckLongIntervalMs:J

.field private mDnsCheckShortIntervalMs:J

.field private mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

.field private mDnsPingTimeoutMs:I

.field private mDnsPinger:Landroid/net/DnsPinger;

.field public mHasConnectedWifiManager:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastWalledGardenCheckTime:Ljava/lang/Long;

.field private mMaxSsidBlacklists:I

.field private mMinDnsResponses:I

.field private mNetEventCounter:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNumCheckFailures:I

.field private mNumDnsPings:I

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mShowDisabledNotification:Z

.field private mWalledGardenIntervalMs:J

.field private mWalledGardenNotificationShown:Z

.field private mWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

.field private mWalledGardenTestEnabled:Z

.field private mWalledGardenUrl:Ljava/lang/String;

.field private mWalletGardenNotification:Landroid/app/Notification;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 212
    const-string v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 150
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 151
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 152
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 153
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 154
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    .line 155
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 156
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 157
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckFailureState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    .line 158
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDelayWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    .line 159
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    .line 160
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistedApState:Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    .line 179
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    .line 185
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;

    .line 193
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    .line 197
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHasConnectedWifiManager:Z

    .line 213
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 215
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 216
    new-instance v0, Landroid/net/DnsPinger;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "WifiWatchdogStateMachine.DnsPinger"

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    .line 220
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 223
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 224
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 225
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 226
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 227
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 228
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 229
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 230
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 231
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckFailureState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 232
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDelayWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 233
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 234
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistedApState:Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 235
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 236
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 238
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 239
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setDisabledNetworkNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->wifiInfoToStr(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateBssids()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateResources()V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDelayWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    return v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    return v0
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    return v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckFailureState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    return v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$4002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$4100(JLjava/lang/Long;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->waitTime(JLjava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->rssiStrengthAboveCutoff(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckShortIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckLongIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    return v0
.end method

.method static synthetic access$5108(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    return v0
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxSsidBlacklists:I

    return v0
.end method

.method static synthetic access$5400()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mShowDisabledNotification:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistedApState:Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistFollowupIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->resetWatchdogState()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private static getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1178
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1159
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #v:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private isWalledGardenConnection()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 374
    const/4 v3, 0x0

    .line 376
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 379
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 380
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 381
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 382
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 384
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    .line 391
    :goto_0
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    .end local v2           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v4

    .restart local v2       #url:Ljava/net/URL;
    :cond_1
    move v4, v5

    .line 384
    goto :goto_0

    .line 385
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v4, v5

    .line 389
    goto :goto_1

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 391
    :cond_3
    throw v4
.end method

.method private isWatchdogEnabled()Z
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1199
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1203
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 250
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v3, :cond_0

    .line 254
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 256
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 257
    .local v2, wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    .line 258
    const v3, 0x21001

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 259
    return-object v2

    .end local v2           #wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    :cond_1
    move v3, v4

    .line 247
    goto :goto_0
.end method

.method private static putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1195
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 328
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_dns_check_short_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_dns_check_long_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 335
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_max_ssid_blacklists"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 341
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_num_dns_pings"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_min_dns_responses"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_dns_ping_timeout_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_blacklist_followup_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 354
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_url"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_show_disabled_network_popup"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 363
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 305
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 312
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    return-void
.end method

.method private resetWatchdogState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 504
    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 505
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    .line 506
    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;

    .line 507
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    .line 508
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 509
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setDisabledNetworkNotificationVisible(Z)V

    .line 510
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    .line 511
    return-void
.end method

.method private rssiStrengthAboveCutoff(I)Z
    .locals 1
    .parameter "rssi"

    .prologue
    .line 398
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDisabledNetworkNotificationVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 560
    if-nez p1, :cond_0

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisabledNotificationShown:Z

    if-nez v3, :cond_0

    .line 601
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 565
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 569
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v3, "info_type"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisabledNotificationShown:Z

    goto :goto_0
.end method

.method private setWalledGardenNotificationVisible(Z)V
    .locals 12
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x1080644

    const/4 v9, 0x0

    .line 515
    if-nez p1, :cond_0

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    if-nez v6, :cond_0

    .line 550
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 520
    .local v4, r:Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 523
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 524
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 525
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    .line 526
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 527
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iput v10, v6, Landroid/app/Notification;->icon:I

    .line 528
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 530
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 531
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x1040

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string/jumbo v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 539
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const v6, 0x10404a6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x10404a7

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 543
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v5, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 545
    const-string v6, "WifiWatchdog.walledgarden"

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    invoke-virtual {v3, v6, v10, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 549
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    goto/16 :goto_0

    .line 547
    :cond_2
    const-string v6, "WifiWatchdog.walledgarden"

    invoke-virtual {v3, v6, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private setupNetworkReceiver()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 293
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private updateBssids()V
    .locals 7

    .prologue
    .line 477
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, curSsid:Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 479
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 481
    .local v2, oldNumBssids:I
    if-nez v4, :cond_1

    .line 498
    :cond_0
    return-void

    .line 488
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 489
    .local v3, result:Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 495
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateResources()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    if-eqz v0, :cond_0

    .line 554
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    .line 556
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 415
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_dns_check_short_interval_ms"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckShortIntervalMs:J

    .line 418
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_dns_check_long_interval_ms"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckLongIntervalMs:J

    .line 421
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_max_ssid_blacklists"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxSsidBlacklists:I

    .line 424
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_num_dns_pings"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    .line 427
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_min_dns_responses"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    .line 430
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_dns_ping_timeout_ms"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    .line 433
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_blacklist_followup_interval_ms"

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistFollowupIntervalMs:J

    .line 438
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 440
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    .line 442
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_url"

    const-string/jumbo v2, "http://clients3.google.com/generate_204"

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_interval_ms"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    .line 448
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_show_disabled_network_popup"

    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mShowDisabledNotification:Z

    .line 450
    return-void
.end method

.method private static waitTime(JLjava/lang/Long;)J
    .locals 8
    .parameter "interval"
    .parameter "lastTime"

    .prologue
    const-wide/16 v2, 0x0

    .line 461
    if-nez p2, :cond_0

    .line 464
    :goto_0
    return-wide v2

    .line 463
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 464
    .local v0, wait:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .end local v0           #wait:J
    :goto_1
    move-wide v2, v0

    goto :goto_0

    .restart local v0       #wait:J
    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private static wifiInfoToStr(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 2
    .parameter "wifiInfo"

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 469
    const-string/jumbo v0, "null"

    .line 470
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 402
    const-string v0, "WatchdogStatus: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", network ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFailures   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", bssids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lastSingleCheck: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    return-void
.end method

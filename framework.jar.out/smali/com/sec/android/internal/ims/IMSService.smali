.class public Lcom/sec/android/internal/ims/IMSService;
.super Ljava/lang/Object;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IMSService$19;,
        Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;,
        Lcom/sec/android/internal/ims/IMSService$NetworkType;
    }
.end annotation


# static fields
.field public static final CDMA:Ljava/lang/String; = "CDMA"

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final EVDO_0:Ljava/lang/String; = "CDMA - EvDo rev. 0"

.field public static final EVDO_A:Ljava/lang/String; = "CDMA - EvDo rev. A"

.field public static final EVDO_B:Ljava/lang/String; = "CDMA - EvDo rev. B"

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_IMSVT_DISABLED_ON_WIFI:I = 0x66

.field private static final EVENT_REG_FORBIDDEN:I = 0x65

.field public static final HSDPA:Ljava/lang/String; = "HSDPA"

.field public static final HSPA:Ljava/lang/String; = "HSPA"

.field public static final HSPAP:Ljava/lang/String; = "HSPA+"

.field public static final HSUPA:Ljava/lang/String; = "HSUPA"

.field public static final IS3G:Ljava/lang/String; = "IS3G"

.field private static final LOG_TAG:Ljava/lang/String; = "IMS/IMSService"

.field public static final LTE:Ljava/lang/String; = "LTE"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final NWK_TYPE:I = 0x1

.field public static final P_ACCESS_NWK_INFO:I = 0x0

.field public static final REG_AVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_available"

.field public static final REG_UNAVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_unavailable"

.field public static final SERVICE_KEY:Ljava/lang/String; = "sIMSManager"

.field private static SISOTest:Z = false

.field public static final UMTS:Ljava/lang/String; = "UMTS"

.field private static final VT_BATTERY_WARNING_LEVEL:I = 0xa

.field public static final WIFI:Ljava/lang/String; = "WIFI"

.field private static final defaultRetryTime:I = 0x2bf20

.field public static final eHRPD:Ljava/lang/String; = "CDMA - eHRPD"

.field private static glocalIp:Ljava/lang/String; = null

.field private static imsService:Lcom/sec/android/internal/ims/IMSService; = null

.field private static isDNSQueryInProgss:Z = false

.field private static isDNSQuerySuccess:Z = false

.field private static isImsInited:Z = false

.field private static isImsRegistered:Z = false

.field private static isRegAvailRecvd:Z = false

.field private static isRegisterRetryInProgress:Z = false

.field public static mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType; = null

.field private static mbgn:Ljava/lang/String; = null

.field public static publicUserIdentityimpu:Ljava/lang/String; = null

.field private static retryCount:I = 0x0

.field private static retryTime:I = 0x0

.field private static startUsingHiPri:Z = false

.field public static final svcNotification:Ljava/lang/String; = "notification"


# instance fields
.field public AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

.field public HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

.field private VT_ICON_SLOT:Ljava/lang/String;

.field private final batteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final flightModeReceiver:Landroid/content/BroadcastReceiver;

.field private hiddenMenu_filter:Landroid/content/IntentFilter;

.field public imsCallId:I

.field imsListener:Lcom/sec/android/ims/IMSEventListener;

.field info:Landroid/net/NetworkInfo;

.field private isDNSRetryInProgress:Z

.field public isImsForbidden:Z

.field public isWifiEnabled:Z

.field private mCallId:I

.field public mCallType:I

.field private mContext:Landroid/content/Context;

.field public mDisconnectDueToTransition:Z

.field private mHandler:Landroid/os/Handler;

.field mMediaShareHandler:Landroid/os/Handler;

.field private mNearSurface:Landroid/view/Surface;

.field mNetwkTypeConnected:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSurface:Landroid/view/Surface;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimer:Ljava/util/Timer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mdn_number:Ljava/lang/String;

.field min_number:Ljava/lang/String;

.field private myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

.field notificationManager:Landroid/app/NotificationManager;

.field notificationRef:I

.field private regEventReceiver:Landroid/content/BroadcastReceiver;

.field private regIconReceiver:Landroid/content/BroadcastReceiver;

.field private final roamingAreaReceiver:Landroid/content/BroadcastReceiver;

.field private simEventReceiver:Landroid/content/BroadcastReceiver;

.field public vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

.field vtNotification:Landroid/app/Notification;

.field private wifiEventReceiver:Landroid/content/BroadcastReceiver;

.field wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    .line 117
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 133
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 134
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    .line 135
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z

    .line 136
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isRegisterRetryInProgress:Z

    .line 138
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z

    .line 139
    sput-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z

    .line 140
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 141
    sput-boolean v4, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    .line 145
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z

    .line 170
    const-string v0, "N/A"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    .line 191
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->publicUserIdentityimpu:Ljava/lang/String;

    .line 194
    sput v2, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    .line 196
    const v0, 0x2bf20

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    .line 216
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->vtNotification:Landroid/app/Notification;

    .line 122
    const/16 v3, 0x6f

    iput v3, p0, Lcom/sec/android/internal/ims/IMSService;->notificationRef:I

    .line 127
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 142
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 151
    iput-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 152
    iput-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 155
    iput-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->mDisconnectDueToTransition:Z

    .line 156
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 162
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;-><init>(Lcom/sec/android/internal/ims/IMSService;Lcom/sec/android/internal/ims/IMSService$1;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    .line 165
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 171
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/internal/ims/IMSService;->mCallType:I

    .line 173
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 174
    iput-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 198
    iput-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z

    .line 200
    iput v5, p0, Lcom/sec/android/internal/ims/IMSService;->mNetwkTypeConnected:I

    .line 222
    const-string/jumbo v3, "imsvt_icon"

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    .line 373
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$1;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$1;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->simEventReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$2;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$2;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$3;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$3;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1037
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$4;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$4;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$5;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$5;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1284
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$6;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$6;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1837
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$7;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$7;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1899
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$8;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$8;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->regIconReceiver:Landroid/content/BroadcastReceiver;

    .line 2952
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$11;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$11;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    .line 3230
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$13;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$13;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    .line 3469
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$15;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$15;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3755
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$17;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$17;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    .line 3820
    new-instance v3, Lcom/sec/android/internal/ims/IMSService$18;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$18;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    .line 227
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 228
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->SetNativeContex(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->setHiddenMenuDataAlwaysOnTrue()V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 232
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 236
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->initVTErrorTableUpdateListener(Landroid/content/Context;)V

    .line 237
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V

    .line 242
    const-string v3, "0"

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 245
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 246
    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 247
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-direct {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->getTargetBuildInfo(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 248
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v3, v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->notificationManager:Landroid/app/NotificationManager;

    .line 252
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 253
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 254
    const-string/jumbo v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 258
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcNwkEvtInit(Landroid/content/Context;)V

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, newFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 264
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForBatteryLowEvent()V

    .line 269
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForFlightModeEvent()V

    .line 272
    const-string v3, "IMS/IMSService"

    const-string v4, "Inside registerForRoamingArea"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForRoamingArea()V

    .line 279
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v2, simEventFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->simEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v1, regIconIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.sec.android.internal.ims.vt_status"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->regIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const-string v3, "IMSService init done"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private ImsSvcEvdoInit(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2843
    const-string v3, "IMS/IMSService"

    const-string v4, "ImsSvcEvdoInit called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2851
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2852
    .local v1, intentConnectivity:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.status.sip_reg_available"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2853
    const-string v3, "com.android.server.status.sip_reg_unavailable"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2854
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2856
    const-string v3, "Registered for radio events with ConnectivityManager"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    .end local v1           #intentConnectivity:Landroid/content/IntentFilter;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    const-string v3, "IMS/IMSService"

    const-string v4, "ImsSvcEvdoInit exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    return-void

    .line 2857
    :catch_0
    move-exception v0

    .line 2858
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1821
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1823
    .local v0, wifi_filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1825
    const-string v1, "IMS/IMSService"

    const-string v2, "WIFI ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :goto_0
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1832
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1834
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1835
    return-void

    .line 1827
    :cond_0
    const-string v1, "IMS/IMSService"

    const-string v2, "WIFI DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ReadSimDetails()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 396
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 397
    .local v2, simDetails:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, PUBLIC_USER_IDENTITY_INDEX:I
    const/4 v0, 0x1

    .line 404
    .local v0, PRIVATE_USER_IDENTITY_INDEX:I
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 412
    aget-object v3, v2, v1

    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 413
    aput-object v5, v2, v1

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 417
    aget-object v3, v2, v0

    const-string v4, ""

    if-ne v3, v4, :cond_2

    .line 418
    aput-object v5, v2, v0

    .line 420
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside ReadSimDetails : mPublicUserIdentity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mPrivateUserIdentity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 425
    .end local v0           #PRIVATE_USER_IDENTITY_INDEX:I
    .end local v1           #PUBLIC_USER_IDENTITY_INDEX:I
    :goto_0
    return-object v2

    .line 423
    :cond_3
    const-string v3, "IMS/IMSService"

    const-string/jumbo v4, "inside ReadSimDetails : SIM_STATE is NOT READY!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/internal/ims/IMSService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->ReadSimDetails()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/internal/ims/IMSService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V

    return-void
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    return v0
.end method

.method static synthetic access$1408()I
    .locals 2

    .prologue
    .line 106
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    sput p0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    return p0
.end method

.method static synthetic access$1600(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->doDNSQueryRetry()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/internal/ims/IMSService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleConnectivityMgrEvt(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    sput-boolean p0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/internal/ims/IMSService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/IMSService;->handleTelephonyMgrEvt(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/internal/ims/IMSService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V

    return-void
.end method

.method private declared-synchronized doDNSQueryRetry()V
    .locals 3

    .prologue
    .line 3007
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNSQueryRetry: Starting..mCurrentConnectedNtwrk..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 3009
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v0, v1, :cond_0

    .line 3010
    const-string v0, "WIFI"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3023
    :goto_0
    monitor-exit p0

    return-void

    .line 3012
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_1

    .line 3013
    const-string/jumbo v0, "mobile"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3007
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3016
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private doNetworkConnectOp(Ljava/lang/String;)V
    .locals 10
    .parameter "nwkType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2099
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNetworkConnectOp nwkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isImsRegistered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v5, :cond_1

    .line 2103
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNetworkConnectOp return! isImsForbidden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2180
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNetworkConnectOp set Connected Network to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2117
    const-string v5, "IMS/IMSService"

    const-string v6, "doNetworkConnectOp:Start IMS Register"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v4

    .line 2119
    .local v4, pAccessNwkInfo:Ljava/lang/String;
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v5, v4, v8}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$NetworkType;Ljava/lang/String;I)V

    .line 2120
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2122
    .local v3, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2123
    :cond_2
    const/4 v1, 0x0

    .line 2126
    .local v1, domName:Ljava/lang/String;
    const-string v5, "WIFI"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2127
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2128
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2133
    .local v0, dnsFlag:I
    :goto_1
    if-ne v0, v8, :cond_3

    .line 2134
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->performDNSOperation(Ljava/lang/String;)Z

    move-result v2

    .line 2135
    .local v2, isDNSValidated:Z
    if-eqz v2, :cond_0

    .line 2138
    const-string v5, "WIFI"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2139
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2149
    .end local v2           #isDNSValidated:Z
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v5

    if-ne v5, v8, :cond_8

    .line 2151
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v5, :cond_4

    .line 2152
    const-string v5, "IMS/IMSService"

    const-string v6, "doNetworkConnectOp:== Init IMS as INIT Flag is False...."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2154
    sput-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2155
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2157
    :cond_4
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2158
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2159
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2178
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2130
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    .restart local v4       #pAccessNwkInfo:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2131
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #dnsFlag:I
    goto :goto_1

    .line 2142
    .restart local v2       #isDNSValidated:Z
    :cond_7
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    goto :goto_2

    .line 2163
    .end local v2           #isDNSValidated:Z
    :cond_8
    const-string v5, "IMS/IMSService"

    const-string v6, "doNetworkConnectOp :Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v8, :cond_9

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v5, v6, :cond_9

    .line 2165
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2166
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2168
    :cond_9
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 2169
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    goto :goto_3

    .line 2175
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_a
    const-string v5, "IMS/IMSService"

    const-string v6, "doNetworkConnectOp: AlwaysOn is off.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getChannel(I)I
    .locals 8
    .parameter "frequency"

    .prologue
    const/16 v7, 0x25

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 977
    new-array v0, v7, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v0, v2

    const/16 v2, 0x20

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v0, v2

    const/16 v2, 0x21

    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v0, v2

    const/16 v2, 0x22

    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v0, v2

    const/16 v2, 0x23

    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v0, v2

    const/16 v2, 0x24

    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v0, v2

    .line 991
    .local v0, channel:[[I
    const/4 v1, 0x1

    .local v1, j:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 992
    aget-object v2, v0, v1

    aget v2, v2, v6

    if-ne p1, v2, :cond_1

    .line 996
    :cond_0
    aget-object v2, v0, v1

    aget v2, v2, v5

    return v2

    .line 991
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 977
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6ct 0x9t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x71t 0x9t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x76t 0x9t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7bt 0x9t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x80t 0x9t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x85t 0x9t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8at 0x9t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8ft 0x9t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x94t 0x9t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x99t 0x9t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x9et 0x9t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xa3t 0x9t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xa8t 0x9t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x22t 0x0t 0x0t 0x0t
        0x32t 0x14t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x3ct 0x14t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x26t 0x0t 0x0t 0x0t
        0x46t 0x14t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x50t 0x14t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x2at 0x0t 0x0t 0x0t
        0x5at 0x14t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x64t 0x14t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0x6et 0x14t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x78t 0x14t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0x8ct 0x14t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0xa0t 0x14t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x14t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0xc8t 0x14t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x7ct 0x15t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x68t 0x0t 0x0t 0x0t
        0x90t 0x15t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x6ct 0x0t 0x0t 0x0t
        0xa4t 0x15t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0xb8t 0x15t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0xcct 0x15t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x7ct 0x0t 0x0t 0x0t
        0xf4t 0x15t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x95t 0x0t 0x0t 0x0t
        0x71t 0x16t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x99t 0x0t 0x0t 0x0t
        0x85t 0x16t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x9dt 0x0t 0x0t 0x0t
        0x99t 0x16t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x0t
        0xadt 0x16t 0x0t 0x0t
    .end array-data
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;
    .locals 2
    .parameter "context"

    .prologue
    .line 1679
    const-class v1, Lcom/sec/android/internal/ims/IMSService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    if-nez v0, :cond_0

    .line 1680
    new-instance v0, Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IMSService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 1682
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPAccessInfoValFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    const-string v1, ""

    .line 739
    .local v1, pAccessNwkInfoVal:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v0

    .line 740
    .local v0, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 744
    :cond_0
    return-object v1
.end method

.method private getTargetBuildInfo(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 3
    .parameter "myObject"

    .prologue
    .line 464
    const-string v1, "IMS/IMSService"

    const-string v2, "getTargetBuildInfo: Get Target Build Info...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :try_start_0
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mProductName:Ljava/lang/String;

    .line 468
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildRelVersion:Ljava/lang/String;

    .line 469
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildIncrmntal:Ljava/lang/String;

    .line 471
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildType:Ljava/lang/String;

    .line 472
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildSdk:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 1106
    const-string v3, "handleBatteryChanged"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1109
    .local v2, battStatus:I
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1110
    .local v1, battScale:I
    const-string/jumbo v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1112
    .local v0, battLevel:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  WARNING LEVEL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1115
    if-gt v0, v6, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1117
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    .line 1139
    :goto_0
    return-void

    .line 1119
    :cond_0
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    goto :goto_0
.end method

.method private handleConnectivityMgrEvt(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "nwInfo"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x64

    .line 3328
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 3329
    .local v3, networkState:Landroid/net/NetworkInfo$State;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 3330
    .local v5, networkType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 3332
    .local v4, networkSubType:Ljava/lang/String;
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleConnectivityMgrEvt API... State= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; NetworkType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; NetworkSubType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; mCurrentConnectedNtwrk = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3335
    .local v6, ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    const-string/jumbo v7, "mobile"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3336
    const-string v7, "LTE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3337
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3356
    :cond_0
    :goto_0
    sget-object v7, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v6, v7, :cond_a

    .line 3357
    const-string v7, "IMS/IMSService"

    const-string v8, "handleConnectivityMgrEvt API.. : NetworkType is NONE, returning... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_1
    :goto_1
    return-void

    .line 3338
    :cond_2
    const-string v7, "UMTS"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HSPA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HSDPA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HSUPA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HSPA+"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3339
    :cond_3
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3340
    :cond_4
    const-string v7, "CDMA - EvDo rev. 0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3341
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_0:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3342
    :cond_5
    const-string v7, "CDMA - EvDo rev. A"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3343
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_A:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3344
    :cond_6
    const-string v7, "CDMA - EvDo rev. B"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3345
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_B:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3346
    :cond_7
    const-string v7, "CDMA - eHRPD"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3347
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->eHRPD:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3350
    :cond_8
    const-string v7, "CDMA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3351
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->CDMA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3352
    :cond_9
    const-string v7, "WIFI"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3353
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 3360
    :cond_a
    sget-object v7, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v6, v7, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isIMSEnabledOnWiFI()Z

    move-result v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v7, v8, :cond_b

    .line 3361
    const-string v7, "IMS/IMSService"

    const-string v8, "handleConnectivityMgrEvt API.. : NetworkType is WiFi, and is disabled in HiddenMenu so returning... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v7, :cond_1

    .line 3365
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3367
    const-string v7, "IMS/IMSService"

    const-string v8, ">>>>>>>>>> IMS REGISTERED!!!! Showing Toast...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3375
    :cond_b
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v7, :cond_12

    .line 3377
    const-string/jumbo v7, "mobile_hipri"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3378
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->handleHiPriNWConnect()V

    goto/16 :goto_1

    .line 3380
    :cond_c
    const-string/jumbo v7, "mobile"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "WIFI"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3381
    :cond_d
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3382
    const-string v7, "IMS/IMSService"

    const-string v8, "handleConnectivityMgrEvt -> CONNECTED case : Removing Previous Posted Disconnect Events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3385
    :cond_e
    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v7, v11, :cond_f

    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    if-ne v7, v11, :cond_f

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v7, v8, :cond_f

    .line 3386
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleConnectivityMgrEvt -> CONNECTED case : mCurrentConnectedNtwrk = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    const-string/jumbo v7, "mobile"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    .line 3430
    :cond_f
    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v7, v8, :cond_1

    .line 3431
    const-string v7, "IMS/IMSService"

    const-string v8, "handleConnectivityMgrEvt -> CONNECTED case : ims not Registered, calling handleNetworkConnected()..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    const-string v7, "WIFI"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3433
    sget-object v7, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3441
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V

    goto/16 :goto_1

    .line 3435
    :cond_10
    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 3436
    sget-object v7, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_2

    .line 3438
    :cond_11
    sput-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_2

    .line 3449
    :cond_12
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v7, :cond_1

    .line 3450
    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3452
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3454
    :cond_13
    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v6, v7, :cond_1

    .line 3455
    const-string v7, "IMS/IMSService"

    const-string v8, "Posting EVENT_DISCONNECT......"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    const-wide/16 v0, 0x0

    .line 3460
    .local v0, delay:J
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-static {v7, v10, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3461
    .local v2, m:Landroid/os/Message;
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method

.method private handleEVDONetworkConneted(Ljava/lang/String;)V
    .locals 10
    .parameter "nwkType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1994
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEVDONetworkConneted nwkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isImsRegistered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v5, :cond_0

    .line 1998
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEVDONetworkConneted return! isImsForbidden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2091
    :goto_0
    return-void

    .line 2003
    :cond_0
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2005
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v5, :cond_1

    .line 2007
    const-string v5, "IMS/IMSService"

    const-string v6, "===== Init IMS as INIT Flag is False...."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2009
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2010
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2013
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-direct {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->getTargetBuildInfo(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2014
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v5, v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2017
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2019
    .local v3, localIP:Ljava/lang/String;
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2021
    :cond_3
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2022
    .local v1, domName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2023
    .local v0, dnsFlag:I
    if-ne v0, v9, :cond_4

    .line 2025
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v5

    if-eq v5, v9, :cond_6

    .line 2039
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 2040
    .local v4, pcscfAddr:Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ip address string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2041
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 2043
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2044
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    .end local v4           #pcscfAddr:Ljava/net/InetAddress;
    :cond_4
    const-string v5, "IMS/IMSService"

    const-string v6, "Start IMS Register"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2069
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2070
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2090
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2046
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2048
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2049
    const-string v5, "IMS/IMSService"

    const-string v6, "DNS Query failed!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2051
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    goto/16 :goto_0

    .line 2059
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_6
    const-string v5, "IMS/IMSService"

    const-string v6, "Invalid DNS name!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2088
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_7
    const-string v5, "IMS/IMSService"

    const-string v6, "handleEVDONetworkConneted: AlwaysOn is off.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleNetworkConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2898
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNetworkConnected CurrentnwkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isImsRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2902
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2903
    .local v1, localIP:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v2, v3, :cond_2

    .line 2904
    const-string v2, "WIFI"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2914
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2916
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2918
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/internal/ims/IMSService$10;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$10;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    :goto_1
    return-void

    .line 2905
    :cond_2
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->is3GConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2906
    :cond_3
    const-string/jumbo v2, "mobile"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2942
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_1

    .line 2946
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    const-string v2, "IMS/IMSService"

    const-string v3, "handleNetworkConnected:LTE Case  DNS Query is in progress "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2185
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 2186
    .local v5, nwkType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 2187
    .local v4, nwkSubType:Ljava/lang/String;
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2380
    :cond_0
    :goto_0
    return-void

    .line 2192
    :pswitch_0
    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v8, v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v8

    if-ne v8, v11, :cond_1

    sget-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v9, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v8, v9, :cond_1

    .line 2194
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleNetworkStateChanged: Already Connected in some other Network"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2196
    :cond_1
    const-string v8, "WIFI"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2236
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 2237
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI CONNECTED..setiing Connected Network to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v8, "0"

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2240
    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v8, :cond_2

    .line 2243
    const-string v8, "IMS/IMSService"

    const-string v9, "handleNetworkStateChanged for WiFi== Init IMS as INIT Flag is False...."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2245
    sput-boolean v11, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2246
    invoke-virtual {p0, v12}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2249
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-direct {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->getTargetBuildInfo(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2250
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v8, v9}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2252
    :cond_2
    const-string v8, "IMS/IMSService"

    const-string v9, "handleNetworkStateChanged for WiFi:Start IMS Register"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    sget-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v6

    .line 2254
    .local v6, pAccessNwkInfo:Ljava/lang/String;
    sget-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v8, v6, v11}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$NetworkType;Ljava/lang/String;I)V

    .line 2255
    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2257
    .local v3, localIP:Ljava/lang/String;
    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2259
    :cond_4
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2260
    .local v1, domName:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v8, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2261
    .local v0, dnsFlag:I
    if-ne v0, v11, :cond_5

    .line 2263
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    .line 2277
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 2278
    .local v7, pcscfAddr:Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNetworkStateChanged for WiFi:Ip address string = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2279
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 2281
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v9, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2282
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    .end local v7           #pcscfAddr:Ljava/net/InetAddress;
    :cond_5
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 2312
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2313
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2314
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2334
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v6           #pAccessNwkInfo:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {p0, v12}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2284
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    .restart local v6       #pAccessNwkInfo:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2286
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2287
    const-string v8, "IMS/IMSService"

    const-string v9, "handleNetworkStateChanged for WiFi:DNS Query failed!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-virtual {p0, v12}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2289
    invoke-virtual {p0, v12}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    goto/16 :goto_0

    .line 2298
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_7
    const-string v8, "IMS/IMSService"

    const-string v9, "handleNetworkStateChanged for WiFi:Invalid DNS name!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-virtual {p0, v12}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2332
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v6           #pAccessNwkInfo:Ljava/lang/String;
    :cond_8
    const-string v8, "IMS/IMSService"

    const-string v9, "handleLTENetworkConneted: AlwaysOn is off.."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2336
    :cond_9
    const-string/jumbo v8, "mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2338
    invoke-direct {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2345
    :pswitch_1
    const-string/jumbo v8, "mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2348
    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v8, v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v8

    if-ne v8, v11, :cond_0

    .line 2350
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2351
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2352
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto/16 :goto_0

    .line 2187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleRegAvailEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2866
    const-string v2, "IMS/IMSService"

    const-string v3, "handleRegAvailEvent: Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2869
    const-string/jumbo v2, "mobile"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2871
    .local v1, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2873
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2875
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/internal/ims/IMSService$9;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$9;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2892
    :goto_0
    return-void

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2884
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_0

    .line 2890
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "IMS/IMSService"

    const-string v3, "handleRegAvailEvent:  DNS Query is in progress "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTelephonyMgrEvt(II)V
    .locals 13
    .parameter "state"
    .parameter "nwType"

    .prologue
    .line 3093
    const/4 v12, 0x0

    .line 3094
    .local v12, sNwState:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3097
    :pswitch_0
    const-string v12, "OTHER"

    .line 3099
    :goto_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTelephonyMgrEvt API... State= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; NetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->hasService()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_1

    .line 3104
    const-string v0, "IMS/IMSService"

    const-string v1, "handleTelephonyMgrEvt : No Service...Posting EVENT_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    const-wide/16 v6, 0x0

    .line 3110
    .local v6, delay:J
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 3111
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3228
    .end local v6           #delay:J
    .end local v9           #m:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 3095
    :pswitch_1
    const-string v12, "DATA_DISCONNECTED"

    goto :goto_0

    .line 3096
    :pswitch_2
    const-string v12, "DATA_CONNECTED"

    goto :goto_0

    .line 3116
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 3129
    :pswitch_3
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3132
    .local v10, ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :goto_2
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v10, v0, :cond_2

    .line 3133
    const-string v0, "IMS/IMSService"

    const-string v1, "handleTelephonyMgrEvt API.. : NetworkType is NONE, returning... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3117
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_4
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3118
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_5
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3119
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_6
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3120
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_7
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3121
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_8
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3122
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_9
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3123
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_a
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_0:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3124
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_b
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_A:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3125
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_c
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_B:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3126
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_d
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->eHRPD:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3128
    .end local v10           #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    :pswitch_e
    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->CDMA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .restart local v10       #ntwrkSbType:Lcom/sec/android/internal/ims/IMSService$NetworkType;
    goto :goto_2

    .line 3137
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    .line 3138
    :cond_3
    const-string v0, "IMS/IMSService"

    const-string v1, "handleTelephonyMgrEvt ->  case entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-direct {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v0, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->is3GConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3144
    :cond_5
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_0

    .line 3145
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTelephonyMgrEvt ->mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    const-string/jumbo v0, "mobile"

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3147
    .local v8, localIP:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3149
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3150
    const-string v0, "IMS/IMSService"

    const-string v1, "handleTelephonyMgrEvt -> IP Address Changed Case: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->performDisconnectOperation()V

    .line 3152
    invoke-direct {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3154
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3160
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V

    goto/16 :goto_1

    .line 3158
    :cond_6
    sput-object v10, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_3

    .line 3165
    :cond_7
    invoke-direct {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3167
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 3171
    :goto_4
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTelephonyMgrEvt -> mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v11

    .line 3173
    .local v11, pAccessNwkInfo:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v11, v1}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$NetworkType;Ljava/lang/String;I)V

    .line 3174
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 3175
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 3178
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    if-eqz v0, :cond_0

    .line 3179
    invoke-direct {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    const/16 v1, 0x8

    const/16 v2, 0x146

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 3169
    .end local v11           #pAccessNwkInfo:Ljava/lang/String;
    :cond_8
    sput-object v10, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_4

    .line 3094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3116
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 524
    :pswitch_0
    const/4 v0, 0x1

    .line 528
    :cond_0
    :pswitch_1
    return v0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init1()V
    .locals 2

    .prologue
    .line 1779
    new-instance v0, Lcom/sec/android/internal/ims/IMSDaemonThread;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IMSDaemonThread;-><init>()V

    .line 1780
    .local v0, th:Ljava/lang/Thread;
    const-string v1, "com.sec.android.ims.IMSDaemonThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1782
    return-void
.end method

.method public static init2()V
    .locals 1

    .prologue
    .line 1785
    const-string v0, "Enter init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1790
    const-string v0, "Exit init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1791
    return-void
.end method

.method private initContext()V
    .locals 3

    .prologue
    .line 1795
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1796
    .local v0, at:Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1799
    return-void
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ipAddr"

    .prologue
    .line 1977
    move-object v1, p1

    .line 1978
    .local v1, sIpAddr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1979
    .local v2, sNewIpAddr:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1980
    .local v0, index:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIpObtainedOk() : Index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1982
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1984
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1985
    move-object v1, v2

    .line 1987
    :cond_0
    return-object v1
.end method

.method private isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z
    .locals 3
    .parameter "nwType"

    .prologue
    .line 3532
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside isThisNetworkType3G() : nwType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    invoke-virtual {p1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3542
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3541
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3533
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2827
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2828
    const-string v0, "IMS/IMSService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 2834
    const-string v0, "Enter main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2835
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->initProc()V

    .line 2836
    const-string v0, "Exit main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2837
    return-void
.end method

.method private performDNSOperation(Ljava/lang/String;)Z
    .locals 9
    .parameter "domName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inside performDNSOperation() :  domName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v5, :cond_0

    .line 1229
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 1230
    .local v2, pcscfAddress:Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ip address string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1231
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 1232
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 1233
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1277
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1278
    .local v3, r1:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4

    .line 1279
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1280
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v2           #pcscfAddress:Ljava/net/InetAddress;
    .end local v3           #r1:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return v5

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "IMS/IMSService"

    const-string v7, "DNS Query Failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1263
    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1264
    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 1265
    const-string v5, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DNS Query Failed...retryTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    sget v5, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    int-to-long v7, v5

    invoke-direct {p0, v7, v8}, Lcom/sec/android/internal/ims/IMSService;->scheduleDNSRetryTimer(J)V

    move v5, v6

    .line 1267
    goto :goto_0

    .line 1271
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "IMS/IMSService"

    const-string v7, "Invalid DNS name!!!!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    move v5, v6

    .line 1274
    goto :goto_0
.end method

.method private performDisconnectOperation()V
    .locals 3

    .prologue
    .line 559
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDisconnectOperation Connected to Network..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 562
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    .line 563
    return-void
.end method

.method private performNetworkTransitionOp(Lcom/sec/android/internal/ims/IMSService$NetworkType;)V
    .locals 7
    .parameter "ntwrkSbType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performNetworkTransitionOp : mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ntwrkSbType..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 350
    :goto_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performNetworkTransitionOp : done switching.Now mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, pAccessNwkInfo:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v0, v6, v4}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$NetworkType;Ljava/lang/String;I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 357
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->isThis3GNetwork(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/16 v1, 0x8

    const/16 v2, 0x146

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V

    .line 371
    .end local v6           #pAccessNwkInfo:Ljava/lang/String;
    :cond_0
    return-void

    .line 348
    :cond_1
    sput-object p1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0
.end method

.method private readDataFromISIM(Lcom/sec/android/internal/ims/external/HiddenMenuData;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 11
    .parameter "myObject"

    .prologue
    .line 912
    const-string v9, "IMS/IMSService"

    const-string/jumbo v10, "readDataFromISIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isIMSEnabledOnWiFI()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v9, v10, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-object p1

    .line 917
    :cond_1
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    .line 918
    .local v1, arrayPublicUserIdentity:[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    .line 919
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .line 920
    .local v0, arrayDomainName:[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v0

    .line 922
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 927
    :cond_2
    const-string v9, "IMS/IMSService"

    const-string/jumbo v10, "readDataFromISIM.. PublicUserIdentity or domain name is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 968
    .end local v0           #arrayDomainName:[Ljava/lang/String;
    .end local v1           #arrayPublicUserIdentity:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 969
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "IMS/IMSService"

    const-string/jumbo v10, "readDataFromISIM..Exception occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 932
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #arrayDomainName:[Ljava/lang/String;
    .restart local v1       #arrayPublicUserIdentity:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x1

    :try_start_1
    aget-object v6, v1, v9

    .line 933
    .local v6, publicUserIdentity:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v1, v9

    sput-object v9, Lcom/sec/android/internal/ims/IMSService;->publicUserIdentityimpu:Ljava/lang/String;

    .line 934
    const/4 v9, 0x1

    aget-object v2, v0, v9

    .line 935
    .local v2, domainName:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, privateUserIdentity:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, mCscfDomainVal:Ljava/lang/String;
    if-eqz v5, :cond_4

    if-nez v4, :cond_5

    .line 943
    :cond_4
    const-string v9, "IMS/IMSService"

    const-string/jumbo v10, "readDataFromISIM.. PrivateUserIdentity or Cscf domain name is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 952
    .local v7, temp1:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 953
    iput-object v5, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 954
    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 955
    .local v8, temp2:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 956
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 958
    :cond_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 959
    const-string v9, "\\+82"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 962
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 963
    iput-object v2, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 964
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 965
    iput-object v4, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private registerForBatteryLowEvent()V
    .locals 3

    .prologue
    .line 1143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1144
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1147
    return-void
.end method

.method private registerForFlightModeEvent()V
    .locals 3

    .prologue
    .line 1151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1152
    .local v0, intentFilterFlight:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1154
    return-void
.end method

.method private registerForRoamingArea()V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v0, intentFilterRoaming:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 433
    return-void
.end method

.method private scheduleDNSRetryTimer(J)V
    .locals 5
    .parameter "time"

    .prologue
    .line 3026
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleDNSRetryTimer: .. after time.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "retry count.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    sget v2, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    if-nez v2, :cond_0

    .line 3028
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    .line 3031
    :cond_0
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v2, v3, :cond_1

    .line 3032
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryRetryState(Z)V

    .line 3033
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$12;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$12;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    .line 3062
    .local v1, mTimerTask:Ljava/util/TimerTask;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3070
    .end local v1           #mTimerTask:Ljava/util/TimerTask;
    :goto_0
    return-void

    .line 3063
    .restart local v1       #mTimerTask:Ljava/util/TimerTask;
    :catch_0
    move-exception v0

    .line 3064
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3068
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mTimerTask:Ljava/util/TimerTask;
    :cond_1
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleDNSRetryTimer: networkType is NONE: Dont do DNS Retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRegisterIcon(ILjava/lang/String;)V
    .locals 3
    .parameter "iconId"
    .parameter "text"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1972
    :goto_0
    return-void

    .line 1970
    :cond_0
    const-string v0, "IMS/IMSService"

    const-string/jumbo v1, "showRegisterIcon failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRegisterIcon(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showRegisterIcon; enable value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1934
    if-eqz p1, :cond_0

    .line 1936
    const/4 v0, -0x1

    .line 1943
    .local v0, iconId:I
    const v0, 0x108097e

    .line 1945
    const-string v1, "IMS Registered"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(ILjava/lang/String;)V

    .line 1961
    .end local v0           #iconId:I
    :goto_0
    return-void

    .line 1955
    :cond_0
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    .line 1956
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1958
    :cond_1
    const-string v1, "IMS/IMSService"

    const-string/jumbo v2, "showRegisterIcon failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopDNSQueryRetry()V
    .locals 2

    .prologue
    .line 2984
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    const-string/jumbo v1, "stopDNSQueryRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryRetryState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2988
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2989
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryRetryState(Z)V

    .line 2991
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    .line 2992
    const v0, 0x2bf20

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3004
    :cond_0
    monitor-exit p0

    return-void

    .line 2984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateIpWithRegExp(Ljava/lang/String;)Z
    .locals 2
    .parameter "iPaddress"

    .prologue
    .line 1671
    const-string v1, "b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1674
    .local v0, IP_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public DisableWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1805
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1809
    const-string v0, "IMS/IMSService"

    const-string/jumbo v1, "makeCall : Disable Wifi Forcefully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1811
    iput-boolean v2, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 1814
    :cond_0
    return-void
.end method

.method public ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3807
    const-string v0, "ImsInitAlwaysOnSMSRecvListener"

    .line 3808
    .local v0, FN_TAG:Ljava/lang/String;
    const-string v2, "FN_TAG Entering ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3810
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3811
    .local v1, sms_recv_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 3813
    const-string v2, "com.android.receiver.action.ALWAYS_ON_STATUS_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3814
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3816
    :cond_0
    const-string v2, "FN_TAG Exiting ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3817
    return-void
.end method

.method public ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1212
    const-string v0, "Inside ImsInitHiddenMenuChangeListener"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    .line 1215
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    if-eqz p1, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1219
    :cond_0
    const-string v0, "Broadcast Reciever registered"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method public ImsSvcNwkEvtInit(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V

    .line 1165
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcEvdoInit(Landroid/content/Context;)V

    .line 1173
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1180
    return-void
.end method

.method public ResetCameraId()V
    .locals 2

    .prologue
    .line 2476
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside ResetCameraId :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->resetCameraId()V

    .line 2478
    return-void
.end method

.method public ResetPreviewDisplay()V
    .locals 2

    .prologue
    .line 2471
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside ResetPreviewDisplay :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->resetPreviewDisplay()V

    .line 2473
    return-void
.end method

.method public SetCameraParams(II)V
    .locals 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 2714
    sget-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2716
    move v0, p1

    .line 2717
    .local v0, mParam:I
    move v1, p2

    .line 2726
    .local v1, mValue:I
    const-string v2, "IMS/IMSService"

    const-string v3, "This is inside SetCameraParams : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setCameraParam(II)V

    .line 2729
    .end local v0           #mParam:I
    .end local v1           #mValue:I
    :cond_0
    return-void
.end method

.method public SetIMSOrientationValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2697
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2699
    move v0, p1

    .line 2708
    .local v0, mValue:I
    const-string v1, "IMS/IMSService"

    const-string v2, "This is inside SetIMSOrientationValue : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setIMSOrientation(I)V

    .line 2711
    .end local v0           #mValue:I
    :cond_0
    return-void
.end method

.method public StartVTCall(Z)V
    .locals 0
    .parameter "callType"

    .prologue
    .line 2676
    return-void
.end method

.method public StopVTCall()V
    .locals 0

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->ResetPreviewDisplay()V

    .line 2680
    return-void
.end method

.method public acceptCall(III)V
    .locals 2
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 2658
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2660
    iput p1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 2661
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside acceptCall : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->acceptVoipCall(III)Z

    .line 2664
    :cond_0
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;I)I
    .locals 7
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    const/4 v3, 0x1

    .line 2505
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside addUserToCalll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v0, v1, :cond_1

    .line 2509
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQuerySuccessState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2511
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2528
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 2529
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v5, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->addToConferenceCall(Ljava/lang/String;IIII)I

    move-result v6

    .line 2530
    .local v6, success:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inside imsservice addUserToCalll() : for add user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2538
    .end local v6           #success:I
    :goto_1
    return v6

    .line 2519
    :pswitch_1
    const-string/jumbo v0, "mobile"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :pswitch_2
    const-string v0, "WIFI"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_0

    .line 2538
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 2511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public addVTNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1914
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "videocall_indicator"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1915
    .local v0, val:I
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVTNotification API: VT Icon enable value in settings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    if-ne v0, v4, :cond_0

    .line 1917
    invoke-direct {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(Z)V

    .line 1918
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1919
    return-void
.end method

.method public addVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 4007
    invoke-static {p1}, Lcom/android/internal/telephony/ims/IMSInterface;->registerVideoEventListener(Landroid/os/Handler;)V

    .line 4008
    return-void
.end method

.method public broadcastEvent(IIIILjava/lang/String;)V
    .locals 6
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 1749
    const-string v0, "Entry broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    .line 1764
    const-string v0, "Exit broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1765
    return-void
.end method

.method public cancelVTNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1923
    const-string v0, "IMS/IMSService"

    const-string v1, "cancelVTNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-direct {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(Z)V

    .line 1928
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1929
    return-void
.end method

.method public captureImage(Ljava/lang/String;II)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "frameType"

    .prologue
    .line 2743
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2745
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureImage : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->captureImage(Ljava/lang/String;II)V

    .line 2749
    :cond_0
    return-void
.end method

.method public captureIncomingVideoFrame(Ljava/lang/String;I)V
    .locals 2
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 2732
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureIncomingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    return-void
.end method

.method public captureOutgoingVideoFrame(Ljava/lang/String;I)V
    .locals 2
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 2737
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureOutgoingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    return-void
.end method

.method public deRegisterImsOnFlightModeEnabled()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2447
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2449
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2450
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2451
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 2452
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterImsOnFlightModeEnabled..setting Connected Network to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    return-void
.end method

.method public endCall(I)V
    .locals 2
    .parameter "callId"

    .prologue
    .line 2647
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2649
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2650
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    .line 2655
    :cond_0
    :goto_0
    return-void

    .line 2652
    :cond_1
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    goto :goto_0
.end method

.method public getAccessTyefromLinkSpeed(I)V
    .locals 1
    .parameter "LinkSpeed"

    .prologue
    .line 2386
    sparse-switch p1, :sswitch_data_0

    .line 2421
    const-string v0, "N/A"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    .line 2425
    :goto_0
    return-void

    .line 2393
    :sswitch_0
    const-string v0, "IEEE-802.11b"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    goto :goto_0

    .line 2405
    :sswitch_1
    const-string v0, "IEEE-802.11g"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    goto :goto_0

    .line 2417
    :sswitch_2
    const-string v0, "IEEE-802.11n"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    goto :goto_0

    .line 2386
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_2
        0x30 -> :sswitch_1
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
        0x3a -> :sswitch_2
        0x41 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized getCallType()I
    .locals 3

    .prologue
    .line 3087
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallType.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/internal/ims/IMSService;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3087
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentConnectedNetwrk()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3574
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside getCurrentConnectedNetwrk() : mCurrentConnectedNtwrk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    const/4 v0, 0x0

    .line 3576
    .local v0, mConnectdNtwrk:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3586
    const-string v0, "NONE"

    .line 3589
    :goto_0
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside getCurrentConnectedNetwrk() : mConnectdNtwrk....."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    return-object v0

    .line 3577
    :pswitch_0
    const-string v0, "LTE"

    goto :goto_0

    .line 3578
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 3579
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 3580
    :pswitch_3
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 3581
    :pswitch_4
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 3582
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 3583
    :pswitch_6
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 3584
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 3585
    :pswitch_8
    const-string v0, "IS3G"

    goto :goto_0

    .line 3576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getDNSQueryInProgessState()Z
    .locals 1

    .prologue
    .line 3955
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDNSQueryRetryState()Z
    .locals 3

    .prologue
    .line 3995
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDNSRetryInProgress..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    iget-boolean v0, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3995
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDNSQuerySuccessState()Z
    .locals 1

    .prologue
    .line 3985
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIMSRegisterState()Z
    .locals 1

    .prologue
    .line 3944
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3661
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3662
    const-string v0, "IMS/IMSService"

    const-string v1, "getLocalIP()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "nwkType"

    .prologue
    .line 3706
    const/4 v5, 0x0

    .line 3707
    .local v5, nwkIntfName:Ljava/lang/String;
    const-string v6, "WIFI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3708
    const-string/jumbo v5, "wlan0"

    .line 3721
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3722
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 3723
    .local v4, intf:Ljava/net/NetworkInterface;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++++++++++++NetworkInterface :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3725
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 3726
    .local v3, inetAddress:Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++++++++++inetAddress :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3729
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++++++++++inetAddress IP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3731
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3738
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_1
    return-object v6

    .line 3709
    :cond_3
    const-string/jumbo v6, "mobile"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "MOBILE_HIPRI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3715
    :cond_4
    const-string/jumbo v5, "rmnet0"

    goto/16 :goto_0

    .line 3735
    :catch_0
    move-exception v2

    .line 3736
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "IMS/IMSService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getPAccessVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_0

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPAccessVal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3669
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 3671
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;
    .locals 26
    .parameter "networkType"

    .prologue
    .line 574
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Inside getPaccessNwkInfo() : networkType = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/internal/ims/IMSService;->getPAccessVal()Ljava/lang/String;

    move-result-object v15

    .line 576
    .local v15, pAccessNwkInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 577
    const-string/jumbo v23, "mContext is null returning"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    move-object/from16 v16, v15

    .line 733
    .end local v15           #pAccessNwkInfo:Ljava/lang/String;
    .local v16, pAccessNwkInfo:Ljava/lang/String;
    :goto_0
    return-object v16

    .line 581
    .end local v16           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v15       #pAccessNwkInfo:Ljava/lang/String;
    :cond_0
    const-string v23, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 582
    const-string v23, "IMS/IMSService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "pAccessNwkInfo from HiddenMenu Data"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    .line 583
    .end local v15           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v16       #pAccessNwkInfo:Ljava/lang/String;
    goto :goto_0

    .line 587
    .end local v16           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v15       #pAccessNwkInfo:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "phone"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 589
    .local v17, phone:Landroid/telephony/TelephonyManager;
    if-nez v17, :cond_2

    .line 590
    const-string v23, "Phone is null returning"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    move-object/from16 v16, v15

    .line 591
    .end local v15           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v16       #pAccessNwkInfo:Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v16           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v15       #pAccessNwkInfo:Ljava/lang/String;
    :cond_2
    const-string v23, "IMS/IMSService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Phone getphonetype:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v10, 0x0

    .line 597
    .local v10, cellid:I
    const/4 v14, 0x0

    .line 611
    .local v14, lac:I
    sget-object v23, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v22

    .line 614
    .local v22, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v23, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 615
    const-string v15, "3GPP-E-UTRAN;utran-cell-id-3gpp=4500527089c403"

    .line 730
    .end local v22           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/internal/ims/IMSService;->getPAccessVal()Ljava/lang/String;

    move-result-object v15

    :cond_4
    move-object/from16 v16, v15

    .line 733
    .end local v15           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v16       #pAccessNwkInfo:Ljava/lang/String;
    goto/16 :goto_0

    .line 617
    .end local v16           #pAccessNwkInfo:Ljava/lang/String;
    .restart local v15       #pAccessNwkInfo:Ljava/lang/String;
    .restart local v22       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "3GPP-WLAN;i-wlan-node-id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 630
    .end local v22           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 631
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v12

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    .line 633
    .local v12, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v12, :cond_3

    .line 635
    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v14

    .line 636
    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    .line 639
    sget-object v23, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    goto :goto_1

    .line 641
    :pswitch_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 642
    goto :goto_1

    .line 645
    :pswitch_1
    const/4 v6, 0x0

    .line 646
    .local v6, cell_id_msc:I
    const/4 v8, 0x0

    .line 647
    .local v8, cell_id_rnc:I
    const/4 v7, 0x0

    .line 648
    .local v7, cell_id_nodeb:I
    const/4 v9, 0x0

    .line 649
    .local v9, cell_id_sector:I
    const/high16 v23, 0xfe0

    and-int v23, v23, v10

    shr-int/lit8 v6, v23, 0x15

    .line 650
    const/high16 v23, 0x1f

    and-int v23, v23, v10

    shr-int/lit8 v8, v23, 0x10

    .line 651
    const v23, 0xff00

    and-int v23, v23, v10

    shr-int/lit8 v7, v23, 0x8

    .line 652
    and-int/lit16 v0, v10, 0xf0

    move/from16 v23, v0

    shr-int/lit8 v9, v23, 0x4

    .line 653
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "3GPP-UTRAN;utran-cell-id-3gpp="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 655
    goto/16 :goto_1

    .line 661
    .end local v6           #cell_id_msc:I
    .end local v7           #cell_id_nodeb:I
    .end local v8           #cell_id_rnc:I
    .end local v9           #cell_id_sector:I
    :pswitch_2
    const-string v15, "3GPP2-1X-HRPD;ci-3gpp2=008005800000001C040AF8C08101090164"

    .line 662
    goto/16 :goto_1

    .line 668
    .end local v12           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 670
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 671
    .local v5, cdma_cell:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_3

    .line 672
    sget-object v23, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_1

    .line 674
    :pswitch_4
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v14

    .line 675
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v10

    .line 676
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LAC value = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";Cell-Id value = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": getSimOperator() = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 677
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 678
    goto/16 :goto_1

    .line 687
    :pswitch_5
    :try_start_0
    const-string/jumbo v23, "phoneext"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v21

    .line 688
    .local v21, telephony:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v21, :cond_b

    .line 689
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephonyExt;->getCurrentUATI()[B

    move-result-object v3

    .line 690
    .local v3, bArrSectorIdSubLen:[B
    if-eqz v3, :cond_a

    .line 691
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ByteArray (SectorId+SubnetLen) len= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v3

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 692
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    .line 693
    .local v19, sSectorIdSubLen:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SectorId + SubnetLen = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 695
    array-length v0, v3

    move/from16 v23, v0

    const/16 v24, 0x11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 696
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 697
    .local v4, bArrSubLen:[B
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v2, v0, [B

    .line 698
    .local v2, bArrSectorId:[B
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-byte v24, v3, v24

    aput-byte v24, v4, v23

    .line 700
    const/4 v13, 0x1

    .local v13, index:I
    :goto_2
    const/16 v23, 0x11

    move/from16 v0, v23

    if-ge v13, v0, :cond_8

    .line 701
    add-int/lit8 v23, v13, -0x1

    aget-byte v24, v3, v13

    aput-byte v24, v2, v23

    .line 700
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 703
    :cond_8
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 704
    .local v18, sSectorId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    .line 705
    .local v20, sSubnetLen:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 707
    .end local v2           #bArrSectorId:[B
    .end local v4           #bArrSubLen:[B
    .end local v13           #index:I
    .end local v18           #sSectorId:Ljava/lang/String;
    .end local v20           #sSubnetLen:Ljava/lang/String;
    :cond_9
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "3GPP2-1X-HRPD;ci-3gpp2="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 719
    .end local v3           #bArrSectorIdSubLen:[B
    .end local v19           #sSectorIdSubLen:Ljava/lang/String;
    :goto_3
    if-nez v15, :cond_3

    .line 720
    const-string v15, "3GPP2-1X-HRPD;ci-3gpp2=008005800000001C040AF8C08101090164"

    goto/16 :goto_1

    .line 710
    .restart local v3       #bArrSectorIdSubLen:[B
    :cond_a
    :try_start_1
    const-string v23, "IMS/IMSService"

    const-string v24, "Got NULL Sector Id & SubnetLen from RIL!!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 715
    .end local v3           #bArrSectorIdSubLen:[B
    .end local v21           #telephony:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v11

    .line 716
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v23, "IMS/IMSService"

    const-string v24, "EXCEPTION caught!! : "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    if-nez v15, :cond_3

    .line 720
    const-string v15, "3GPP2-1X-HRPD;ci-3gpp2=008005800000001C040AF8C08101090164"

    goto/16 :goto_1

    .line 713
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v21       #telephony:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_b
    :try_start_3
    const-string v23, "IMS/IMSService"

    const-string v24, "Got NULL TelephonyExt!!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 719
    .end local v21           #telephony:Lcom/android/internal/telephony/ITelephonyExt;
    :catchall_0
    move-exception v23

    if-nez v15, :cond_c

    .line 720
    const-string v15, "3GPP2-1X-HRPD;ci-3gpp2=008005800000001C040AF8C08101090164"

    :cond_c
    throw v23

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getPrefCscfDnsVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_0

    .line 3681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrefCscfDnsVal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 3684
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefCscfDomainVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_0

    .line 3697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrefCscfDomainVal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3698
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    .line 3700
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivateUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_0

    .line 3689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrivateUserID()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3690
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 3692
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublicUserID()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->publicUserIdentityimpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3676
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->publicUserIdentityimpu:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUserIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRegAvailRecvdState()Z
    .locals 1

    .prologue
    .line 3975
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRegisterRetryState()Z
    .locals 3

    .prologue
    .line 3283
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegisterRetryState..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isRegisterRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResetNwkInfoVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v1, "0"

    iput-object v1, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    .line 568
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$NetworkType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getStartUsingHiPriState()Z
    .locals 1

    .prologue
    .line 3970
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSvcState()I
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public handleAlwaysOnChangefromSMS(Z)Z
    .locals 7
    .parameter "isAlwaysOn"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3859
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 3860
    .local v0, hOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    if-nez v0, :cond_0

    .line 3935
    :goto_0
    return v3

    .line 3863
    :cond_0
    if-ne p1, v4, :cond_4

    .line 3865
    const-string v3, "0"

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3870
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3872
    const-string v3, "Initing IMS after change from Cancel to Setup"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3874
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 3875
    sput-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3876
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 3878
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 3880
    .local v2, nwkTypeName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telephony Manager Network Type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3881
    const-string v3, "CDMA - EvDo rev. A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3884
    const-string/jumbo v3, "registering after enabling in hidden app"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3885
    const-string/jumbo v3, "mobile"

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3886
    .local v1, localIP:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3888
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 3889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "local IP = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3900
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v5, "1"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 3903
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    :cond_2
    :goto_2
    move v3, v4

    .line 3935
    goto/16 :goto_0

    .line 3893
    .restart local v1       #localIP:Ljava/lang/String;
    .restart local v2       #nwkTypeName:Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "local IP = null"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3913
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_4
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3920
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v4, :cond_5

    .line 3922
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 3923
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 3924
    sput-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3928
    :cond_5
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v5, "0"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 3931
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public handleHiPriNWConnect()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3494
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3495
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 3496
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 3497
    .local v5, vtIP:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===== startUsingHiPri : vtIP==>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->ipToInt(Ljava/net/InetAddress;)I

    move-result v3

    .line 3500
    .local v3, inetAddr:I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v6

    if-ne v8, v6, :cond_1

    .line 3502
    const-string v6, "IMS/IMSService"

    const-string v7, "===== handleHiPriNWConnect : requestRouteToHost SUCCESS...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3510
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #vtIP:Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-ne v8, v6, :cond_0

    .line 3512
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 3513
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 3514
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3518
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 3519
    .local v2, h:Landroid/os/Handler;
    new-instance v6, Lcom/sec/android/internal/ims/IMSService$16;

    invoke-direct {v6, p0}, Lcom/sec/android/internal/ims/IMSService$16;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    const-wide/16 v7, 0x7d0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3528
    .end local v2           #h:Landroid/os/Handler;
    :cond_0
    return-void

    .line 3504
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #inetAddr:I
    .restart local v4       #inetAddress:Ljava/net/InetAddress;
    .restart local v5       #vtIP:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "IMS/IMSService"

    const-string v7, "===== handleHiPriNWConnect : requestRouteToHost FAILED...."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3506
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #vtIP:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3507
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleIPChangeEvent()V
    .locals 2

    .prologue
    .line 2430
    const-string v0, "IMS/IMSService"

    const-string v1, "handleIPChangeEvent: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V

    .line 2433
    return-void
.end method

.method public handleRegistrationFailed()V
    .locals 5

    .prologue
    .line 3294
    const-string v2, "IMS/IMSService"

    const-string v3, "handleRegistrationFailed API..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 3297
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3298
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    .line 3299
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v2, v3, :cond_0

    .line 3301
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setRegisterRetryState(Z)V

    .line 3302
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$14;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$14;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    .line 3315
    .local v1, mTimerTask:Ljava/util/TimerTask;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3322
    .end local v1           #mTimerTask:Ljava/util/TimerTask;
    :cond_0
    :goto_0
    return-void

    .line 3317
    .restart local v1       #mTimerTask:Ljava/util/TimerTask;
    :catch_0
    move-exception v0

    .line 3319
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initVTErrorTableUpdateListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3743
    const-string/jumbo v0, "initVTErrorTableUpdateListener"

    .line 3744
    .local v0, FN_TAG:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Entering ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3746
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3747
    .local v1, vt_error_update_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 3749
    const-string v2, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3750
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3752
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exiting ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3753
    return-void
.end method

.method public insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "item"
    .parameter "value"

    .prologue
    .line 898
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 899
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 900
    .local v1, r1:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I

    goto :goto_0
.end method

.method public ipToInt(Ljava/net/InetAddress;)I
    .locals 4
    .parameter "inetAddress"

    .prologue
    .line 3597
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 3598
    .local v1, addrBytes:[B
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 3602
    .local v0, addr:I
    return v0
.end method

.method public is3GConnected()Z
    .locals 3

    .prologue
    .line 3551
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside is3GConnected() : mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3560
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3559
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3552
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public isIMSEnabledOnWiFI()Z
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuData;->isIMSEnabledOnWiFI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2976
    const/4 v0, 0x1

    .line 2978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIMSRegisterred()Z
    .locals 1

    .prologue
    .line 3939
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    return v0
.end method

.method public isLTEConnected()Z
    .locals 3

    .prologue
    .line 3565
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside isLTEConnected() : mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3569
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3568
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized isLocalIpChanged(Ljava/lang/String;)Z
    .locals 3
    .parameter "newLocalIp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4017
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 4031
    :goto_0
    monitor-exit p0

    return v0

    .line 4020
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 4021
    goto :goto_0

    .line 4023
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4025
    const-string/jumbo v1, "isLocalIpChanged: IPs are Diffrent.. Try Re-Register"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4017
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4029
    :cond_2
    :try_start_2
    const-string/jumbo v0, "isLocalIpChanged: IP is not changed from previous one"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 4031
    goto :goto_0
.end method

.method public isRoamingAreaLGT()Z
    .locals 6

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, isRoamingArea:Z
    const-string v3, "1"

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v4, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    :try_start_0
    const-string/jumbo v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, currentplmn:Ljava/lang/String;
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoamingAreaLGT: currentplmn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string/jumbo v3, "oversea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    const/4 v2, 0x1

    .line 505
    .end local v0           #currentplmn:Ljava/lang/String;
    :goto_0
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoamingAreaLGT: isRoamingArea :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EnableIMSOnRoamingVal value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v2

    .line 493
    .restart local v0       #currentplmn:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 495
    .end local v0           #currentplmn:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 497
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVideoCallActive()Z
    .locals 5

    .prologue
    .line 3074
    const/4 v1, 0x0

    .line 3075
    .local v1, mIsVideoCallActive:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3076
    .local v0, imsPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 3077
    const/4 v1, 0x1

    .line 3078
    :cond_0
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVideoCallActive..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    return v1
.end method

.method public makeCall(Ljava/lang/String;I)I
    .locals 5
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 2546
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside makeCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v1, v4, :cond_0

    .line 2551
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2552
    const-string v1, "IMS/IMSService"

    const-string v2, "IMS Not Registered: MakeCall Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_0
    :goto_0
    return v0

    .line 2559
    :cond_1
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isIMSEnabledOnWiFI()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v1, v2, :cond_0

    .line 2563
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQuerySuccessState()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2565
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2582
    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is inside makeVoipCall : remoteNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2585
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->makeVoipCall(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 2587
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 2588
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    goto :goto_0

    .line 2573
    :pswitch_1
    const-string/jumbo v0, "mobile"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_1

    .line 2576
    :pswitch_2
    const-string v0, "WIFI"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_1

    .line 2565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeConferenceCall(Ljava/lang/String;I)I
    .locals 5
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 2598
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is inside makeCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v1, v4, :cond_1

    .line 2603
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isIMSEnabledOnWiFI()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v1, v2, :cond_2

    .line 2635
    :cond_1
    :goto_0
    return v0

    .line 2607
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQuerySuccessState()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2609
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2624
    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is inside makeVoipConferenceCall : remoteNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2628
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->makeVoipConferenceCall(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 2629
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 2630
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    goto :goto_0

    .line 2617
    :pswitch_1
    const-string/jumbo v0, "mobile"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_1

    .line 2619
    :pswitch_2
    const-string v0, "WIFI"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V

    goto :goto_1

    .line 2609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPowerOff()V
    .locals 3

    .prologue
    .line 2817
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2820
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 2821
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside onPowerOff : Setting Current Connected Network to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 2824
    :cond_0
    return-void
.end method

.method public printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 2
    .parameter "myObject"

    .prologue
    .line 1611
    if-eqz p1, :cond_0

    .line 1613
    const-string v0, "================================================="

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfDnsVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfDnsforWiFiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfIpVal2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfIpVal3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfIpCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpCnt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfDomainVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfPortVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfPortforLTEVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefCscfPortforWiFiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefXdmDnsVal= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefXdmIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefXdmIpforWiFiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mAccessNwInfoVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPublicUserIdentityVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrivateUserIdentityVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefAudioCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefVideoCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mLoopbackVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mAlwaysOnVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mEnableQosVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mVideoProfileVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT1Val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mSipTimerT2Val = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT2Val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mSipTimerFVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerFVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mVideoProfileVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mAudioFirstVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mQosAwareVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mVTDebuggingVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mAutoTestVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrefNwTypeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mCurrLatchedNwVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mWiFiSettingVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mWiFiSettingVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mCurrDispFormatVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mFrameRateVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mBitRateVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mDynamicBitRateVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mAudioCodecModeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPublicUserIdentityVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mPrivateUserIdentityVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mEnableIMSOnRoamingVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mProductName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mBuildType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mBuildRelVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildRelVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mBuildIncrmntal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildIncrmntal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "myObject.mBuildSdk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildSdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1665
    const-string v0, "================================================="

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1667
    :cond_0
    return-void
.end method

.method public reInitSurface(Landroid/view/Surface;)Z
    .locals 2
    .parameter "surface"

    .prologue
    .line 2689
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->reInitSurface(Landroid/view/Surface;Z)Z

    move-result v0

    return v0
.end method

.method public reInitSurface(Landroid/view/Surface;Z)Z
    .locals 1
    .parameter "surface"
    .parameter "isCallEstablished"

    .prologue
    .line 2692
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->reInitSurface(Landroid/view/Surface;Z)Z

    move-result v0

    return v0
.end method

.method public readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 4

    .prologue
    .line 1554
    const-string v3, "Inside readHiddenMenuDataFromDB"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1555
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1556
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 1558
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1559
    .local v2, r1:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 1560
    :cond_0
    const/4 v3, 0x0

    .line 1575
    :goto_0
    return-object v3

    .line 1562
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 1564
    if-nez v1, :cond_2

    .line 1566
    const-string v3, "The object is null this means that the DB does not have any default value"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1567
    const-string v3, "Database read failed"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1569
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 1573
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    move-object v3, v1

    .line 1575
    goto :goto_0
.end method

.method public register(Ljava/lang/String;)V
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1709
    const-string v0, "IMS/IMSService"

    const-string v1, "Inside IMSService -> REGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    if-eqz p1, :cond_0

    .line 1723
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkEvent(Ljava/lang/String;)Z

    .line 1725
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 2
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> registerCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method public removeVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 4012
    invoke-static {p1}, Lcom/android/internal/telephony/ims/IMSInterface;->unregisterVideoEventListener(Landroid/os/Handler;)V

    .line 4013
    return-void
.end method

.method public requestAuthForMediaShare([BLandroid/os/Handler;)V
    .locals 6
    .parameter "baChallenge"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 1689
    const-string v0, "Inside requestAuthForMediaShare"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1690
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1691
    .local v5, mChallenge:Ljava/lang/String;
    iput-object p2, p0, Lcom/sec/android/internal/ims/IMSService;->mMediaShareHandler:Landroid/os/Handler;

    .line 1692
    const/16 v1, 0x8

    const/16 v2, 0x159

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V

    .line 1693
    return-void
.end method

.method public resetRegAvailEvent()V
    .locals 1

    .prologue
    .line 1733
    const-string v0, "Inside IMSService -> resetRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1734
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->ResetRegAvailEvent()V

    .line 1735
    return-void
.end method

.method public sendDTMF(I)V
    .locals 2
    .parameter "dtmfChr"

    .prologue
    .line 2798
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2800
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendDTMF : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_0
    return-void
.end method

.method public sendDTMF(IZ)V
    .locals 3
    .parameter "dtmfChr"
    .parameter "isKeyPressed"

    .prologue
    .line 2807
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2809
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside sendDTMF : dtmfChr...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isKeyPressed..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendDTMF(IIZ)V

    .line 2812
    :cond_0
    return-void
.end method

.method public sendISIMRespToNative([B)V
    .locals 2
    .parameter "isimResponse"

    .prologue
    .line 2669
    const-string v0, "IMS/IMSService"

    const-string/jumbo v1, "sendISIMRespToNative: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendISIMResponse([B)I

    .line 2671
    return-void
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 2771
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2773
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendLiveVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendLiveVideo()V

    .line 2776
    :cond_0
    return-void
.end method

.method public sendRspToMediaShareApp([B)V
    .locals 4
    .parameter "isimResponse"

    .prologue
    const/4 v3, 0x0

    .line 1696
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mMediaShareHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1697
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mMediaShareHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1698
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mMediaShareHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1702
    :cond_0
    const-string v1, "Inside sendRspToMediaShareApp -> Error Scennario"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendStillImage(Ljava/lang/String;I)V
    .locals 3
    .parameter "filePath"
    .parameter "imageFormat"

    .prologue
    .line 2753
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2755
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside sendStillImage: filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "imageFormat ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendStillImage(Ljava/lang/String;I)V

    .line 2758
    :cond_0
    return-void
.end method

.method public sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "frameSize"

    .prologue
    .line 2762
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2764
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside sendStillImage: filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "imageFormat ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2767
    :cond_0
    return-void
.end method

.method public declared-synchronized setCallType(I)V
    .locals 1
    .parameter "callType"

    .prologue
    .line 3083
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3084
    monitor-exit p0

    return-void

    .line 3083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfigParams()V
    .locals 5

    .prologue
    .line 1195
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1196
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v1, 0x0

    .line 1198
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1199
    .local v3, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 1201
    if-nez v1, :cond_0

    .line 1202
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 1205
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_0
    const-string v4, "Obj not null-inside set SETCONFIGPARAMS "

    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1207
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    .line 1208
    .local v2, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v2, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1209
    return-void
.end method

.method public declared-synchronized setDNSQueryInProgessState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3960
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3961
    monitor-exit p0

    return-void

    .line 3960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDNSQueryRetryState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 4001
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4002
    monitor-exit p0

    return-void

    .line 4001
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDNSQuerySuccessState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3990
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3991
    monitor-exit p0

    return-void

    .line 3990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDummySurfacePreviewDisplay(Landroid/view/Surface;II)Z
    .locals 1
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2684
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->setDummySurfacePreviewDisplay(Landroid/view/Surface;II)Z

    move-result v0

    return v0
.end method

.method public setHiddenMenuDataAlwaysOnTrue()V
    .locals 6

    .prologue
    .line 1517
    const-string v5, "Inside setHiddenMenuDataAlwaysOnTrue"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1520
    :try_start_0
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1521
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v3, 0x0

    .line 1523
    .local v3, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1527
    .local v4, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v3

    .line 1528
    if-nez v3, :cond_0

    .line 1530
    const-string v5, "The object is null this means that the DB does not have any default value"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1531
    const-string v5, "Database read failed"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1550
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 1538
    .restart local v0       #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .restart local v3       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .restart local v4       #r1:Landroid/content/ContentResolver;
    :cond_0
    const-string v5, "1"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 1541
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v1

    .line 1544
    .local v1, del:I
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1546
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v1           #del:I
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 1547
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setIMSRegisterState(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3949
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    .line 3950
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ims_register_state"

    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3951
    monitor-exit p0

    return-void

    .line 3950
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsCallEstablished(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4037
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setIsCallEstablished(Z)V

    .line 4038
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;IIIZ)Z
    .locals 10
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"
    .parameter "isCallEstablished"

    .prologue
    .line 2482
    move-object v8, p1

    .line 2483
    .local v8, mSurface:Landroid/view/Surface;
    move v9, p2

    .line 2484
    .local v9, mWidth:I
    move v6, p3

    .line 2485
    .local v6, mHeight:I
    move v7, p4

    .line 2486
    .local v7, mIsNearEnd:I
    move v5, p5

    .line 2494
    .local v5, mIsCallEstablished:Z
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside setPreviewDisplay : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->setPreviewDisplay(Landroid/view/Surface;IIIZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setRegAvailRecvdState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3980
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3981
    monitor-exit p0

    return-void

    .line 3980
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegisterRetryState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3289
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isRegisterRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3290
    monitor-exit p0

    return-void

    .line 3289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartUsingHiPriState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3965
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3966
    monitor-exit p0

    return-void

    .line 3965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showPopUp()V
    .locals 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1897
    return-void
.end method

.method public startCamera(Landroid/view/Surface;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2500
    return-void
.end method

.method public startHiPriNetwork()I
    .locals 4

    .prologue
    .line 3607
    const/4 v0, -0x1

    .line 3608
    .local v0, retVal:I
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    const/4 v1, 0x0

    return v1
.end method

.method public stopCamera()V
    .locals 0

    .prologue
    .line 2443
    return-void
.end method

.method public stopHiPriNetwork()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3645
    const/4 v1, -0x1

    .line 3646
    .local v1, retVal:I
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3649
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3650
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v3, "enableHIPRI"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 3651
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUsingNetworkFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setStartUsingHiPriState(Z)V

    move v2, v1

    .line 3655
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    return v2
.end method

.method public stopRegAvailEvent()V
    .locals 1

    .prologue
    .line 1728
    const-string v0, "Inside IMSService -> stopRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1729
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->StopRegAvailEvent()V

    .line 1730
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 2781
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2791
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside switchCamera : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->switchCamera()V

    .line 2794
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 2
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> unregisterCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 1776
    return-void
.end method

.method public updateConfigParamItemToIMS(ILjava/lang/String;)V
    .locals 3
    .parameter "field"
    .parameter "value"

    .prologue
    .line 1602
    const-string v1, "Inside updateSingleConfigParamToIMS"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1604
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    .line 1605
    .local v0, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParamItem(ILjava/lang/String;)V

    .line 1606
    return-void
.end method

.method public updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 3
    .parameter "myObject"

    .prologue
    .line 1587
    const-string v2, "Inside updateConfigParamsToIMS"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getTargetBuildInfo(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1589
    sget-boolean v2, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-nez v2, :cond_0

    .line 1590
    iget-object v2, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1591
    .local v0, logLevel:I
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 1592
    const-string v2, "100"

    iput-object v2, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    .line 1594
    .end local v0           #logLevel:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1595
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    .line 1596
    .local v1, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v1, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1597
    return-void
.end method

.method public updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 1
    .parameter "myObject"

    .prologue
    .line 1581
    const-string v0, "Inside updateHiddenMenuLocalCopy"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1582
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 1583
    return-void
.end method

.method public updateMDNMIN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "mdn"
    .parameter "min"

    .prologue
    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside updateMDNMIN.....mdn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "...min..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1003
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1004
    const-string v5, "Inside updateMDNMIN....Read from SIM failed"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 1007
    :cond_0
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 1008
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v2, 0x0

    .line 1010
    .local v2, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1011
    .local v3, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v2

    .line 1012
    if-nez v2, :cond_1

    .line 1013
    new-instance v2, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v2           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v2}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 1015
    .restart local v2       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_1
    if-eqz p1, :cond_2

    .line 1017
    iput-object p1, v2, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 1020
    :cond_2
    if-eqz p2, :cond_3

    .line 1022
    iput-object p2, v2, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 1025
    :cond_3
    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v1

    .line 1026
    .local v1, del:I
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4

    .line 1027
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1028
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto :goto_0
.end method

.method public updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$NetworkType;Ljava/lang/String;I)V
    .locals 11
    .parameter "nwkType"
    .parameter "pAccessNwkInfo"
    .parameter "type"

    .prologue
    .line 749
    const-string v8, "Inside updateNwkStatus"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 751
    new-instance v2, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v2}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 752
    .local v2, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v4, 0x0

    .line 754
    .local v4, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 756
    .local v5, r1:Landroid/content/ContentResolver;
    invoke-virtual {v2, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v4

    .line 757
    if-nez v4, :cond_0

    .line 758
    new-instance v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v4           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v4}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 760
    .restart local v4       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_0
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "nwkType value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-nez p3, :cond_5

    .line 765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pAccessNwkInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 766
    iput-object p2, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 866
    :cond_1
    :goto_0
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 867
    :cond_2
    const-string v8, "IMS/IMSService"

    const-string/jumbo v9, "mPublicUserIdentityVal is NULL or mPrivateUserIdentityVal is NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v1, 0x0

    .line 869
    .local v1, PUBLIC_USER_IDENTITY_INDEX:I
    const/4 v0, 0x1

    .line 870
    .local v0, PRIVATE_USER_IDENTITY_INDEX:I
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->ReadSimDetails()[Ljava/lang/String;

    move-result-object v6

    .line 871
    .local v6, simDetails:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 872
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 873
    aget-object v8, v6, v1

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 874
    :cond_3
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 875
    aget-object v8, v6, v0

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 882
    .end local v0           #PRIVATE_USER_IDENTITY_INDEX:I
    .end local v1           #PUBLIC_USER_IDENTITY_INDEX:I
    .end local v6           #simDetails:[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 883
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 885
    invoke-virtual {v2, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v3

    .line 888
    .local v3, del:I
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v2, v8, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v7

    .line 895
    .local v7, uri:Landroid/net/Uri;
    return-void

    .line 767
    .end local v3           #del:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_5
    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    .line 768
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pAccessNwkInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 769
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CurrLatchedNwVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 770
    iput-object p2, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 772
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    invoke-virtual {p1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 856
    const-string v8, "IMS/IMSService"

    const-string v9, "Default Case NonExistant"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :pswitch_0
    const-string v8, "H264,H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 775
    const-string v8, "LTE"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 776
    const-string/jumbo v8, "vga"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 777
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 778
    const-string v8, "AMR-WB,AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 779
    const-string v8, "512000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 780
    const-string v8, "15"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 783
    :pswitch_1
    const-string v8, "H264,H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 784
    const-string v8, "WIFI"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 785
    const-string/jumbo v8, "vga"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 786
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 787
    const-string v8, "AMR-WB,AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 788
    const-string v8, "512000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 789
    const-string v8, "15"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 793
    :pswitch_2
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 794
    const-string v8, "UMTS"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 795
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 796
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 797
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 798
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 799
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 802
    :pswitch_3
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 803
    const-string v8, "CDMA - EvDo rev. 0"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 804
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 805
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 806
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 807
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 808
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 811
    :pswitch_4
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 812
    const-string v8, "CDMA - EvDo rev. A"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 813
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 814
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 815
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 816
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 817
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 820
    :pswitch_5
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 821
    const-string v8, "CDMA - EvDo rev. B"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 822
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 823
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 824
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 825
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 826
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 829
    :pswitch_6
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 830
    const-string v8, "CDMA - eHRPD"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 831
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 832
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 833
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 834
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 835
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 838
    :pswitch_7
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 839
    const-string v8, "CDMA"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 840
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 841
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 842
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 843
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 844
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 847
    :pswitch_8
    const-string v8, "H263"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 848
    const-string v8, "IS3G"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 849
    const-string/jumbo v8, "qcif"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 850
    iget-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 851
    const-string v8, "AMR-NB"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 852
    const-string v8, "32000"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 853
    const-string v8, "7"

    iput-object v8, v4, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

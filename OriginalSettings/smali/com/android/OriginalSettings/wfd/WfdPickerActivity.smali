.class public Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mIsWfdEnabledCalled:Z


# instance fields
.field private ALLSHARE_CAST_START:Ljava/lang/String;

.field private final KEY_LAST_CONNECTED_DEVICE_ADDR:Ljava/lang/String;

.field private final KEY_LAST_CONNECTED_DEVICE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TICKS_PER_SEC:I

.field private final TOT_CONNECT_TIME:I

.field private final TOT_CONNECT_TIME_MS:I

.field private final TOT_SCANNING_TIME:I

.field private final TOT_SCANNING_TIME_MS:I

.field private WFD_RESTART_ACTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private bIsConnectRequestedFlag:Z

.field private bStartConnectingFlag:Z

.field private bTerminatedFlag:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mCastScanStopMenu:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEndConnectionFlag:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIsStartedByAllShare:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTickCount:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdRestartTrigger:Z

.field private mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsWfdEnabledCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 102
    const-string v0, "wlan.wfd.lastdevicename"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->KEY_LAST_CONNECTED_DEVICE_NAME:Ljava/lang/String;

    .line 103
    const-string v0, "wlan.wfd.lastdeviceaddr"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->KEY_LAST_CONNECTED_DEVICE_ADDR:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 119
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 120
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 125
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 128
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    .line 129
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 131
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 132
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 134
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 135
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 136
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 138
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 139
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 140
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 141
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    .line 143
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 144
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 145
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 146
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 148
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 150
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pTrigger:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdRestartTrigger:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 168
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 169
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 171
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 172
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 174
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:I

    .line 176
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 177
    const v0, 0xea60

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:I

    .line 179
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_SCANNING_TIME:I

    .line 180
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_SCANNING_TIME_MS:I

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 198
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ALLSHARE_CAST_START:Ljava/lang/String;

    .line 199
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->WFD_RESTART_ACTION:Ljava/lang/String;

    .line 201
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 207
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 5
    .parameter "dev"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    const/4 v1, 0x1

    .line 331
    .local v1, wfd_sink_bit:I
    const/4 v0, 0x0

    .line 333
    .local v0, bit_result:I
    iget v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    if-eqz v4, :cond_1

    .line 334
    iget v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    and-int v0, v4, v1

    .line 336
    if-ne v0, v2, :cond_0

    .line 343
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 339
    goto :goto_0

    :cond_1
    move v2, v3

    .line 343
    goto :goto_0
.end method

.method private CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 2
    .parameter "dev"

    .prologue
    .line 347
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const-string v0, "WfdPickerActivity"

    const-string v1, "CheckItemWifiBusy >> can not connect!!! busy device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "CheckItemWifiBusy >> can connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$2310(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDeviceResultRoutine(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 1467
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1469
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1472
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1474
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    :cond_1
    return-void
.end method

.method private cancelWfdConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 751
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 755
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if( isWfdConnected() == true )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 761
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if( isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 779
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect After removeGroup..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 785
    :cond_2
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    goto :goto_0

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 800
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect After cancelConnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    .line 803
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 806
    :cond_4
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-ne v0, v4, :cond_5

    .line 807
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 809
    :cond_5
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 810
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 1394
    const-string v0, "WfdPickerActivity"

    const-string v1, "changeActionBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1398
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1402
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1403
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 380
    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 873
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 876
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 877
    const v0, 0x7f0400cd

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 878
    const v0, 0x7f0a025d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 879
    const v3, 0x7f0d032c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 880
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 882
    const v0, 0x7f0400c9

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 885
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 891
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 893
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 912
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 915
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    .line 918
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 935
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 951
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04ef

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 966
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 1020
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 1022
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1024
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1030
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0d04ee

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1043
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04a6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1066
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1026
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0330

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 971
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 974
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 976
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0d04ee

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1006
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04ef

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 5

    .prologue
    .line 358
    const-string v2, "wlan.wfd.lastdevicename"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, mLastDeviceName:Ljava/lang/String;
    const-string v2, "wlan.wfd.lastdeviceaddr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, mLastDeviceAddr:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 362
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 365
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 366
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 369
    :cond_1
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1533
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 1536
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    const/4 v0, 0x1

    .line 1545
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1539
    goto :goto_0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1545
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1480
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1481
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    const/4 v0, 0x1

    .line 1493
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1487
    goto :goto_0

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1493
    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1517
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected - getWfdState true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/4 v0, 0x1

    .line 1526
    :goto_0
    return v0

    .line 1520
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 4
    .parameter "mP2pDevice"

    .prologue
    const/4 v3, 0x0

    .line 724
    const-string v0, "WfdPickerActivity"

    const-string v1, "makeConnConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 728
    if-nez p1, :cond_0

    .line 729
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to connect with last connected info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 737
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 747
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0

    .line 733
    :cond_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 741
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1
.end method

.method private printWfdSettingState()V
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    packed-switch v0, :pswitch_data_0

    .line 619
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is Unknown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :pswitch_3
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_SCANNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :pswitch_4
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :pswitch_5
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_ESTABLISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :pswitch_6
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_SCANSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    .line 1070
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1073
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1077
    :cond_0
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1079
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1082
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1083
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1084
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 1104
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1106
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1128
    :cond_1
    :goto_0
    return-void

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private scanDeviceResultRoutine(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1132
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDeviceResultRoutine << reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1136
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1137
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1155
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1160
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1162
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1143
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1147
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1151
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v4, :cond_0

    if-nez p1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 1178
    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    :cond_3
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1187
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 1188
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCastMenu(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 1411
    const-string v0, "WfdPickerActivity"

    const-string v2, "setCastMenu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1414
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1464
    :goto_1
    :pswitch_0
    return-void

    .line 1412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1419
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f020060

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1422
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1427
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1428
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0303

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1430
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 1424
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1425
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1434
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 1436
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f020063

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1437
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1442
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1443
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0522

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1445
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 1439
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1440
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1449
    :pswitch_3
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_ENDCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    .line 1451
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f02005c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1452
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1457
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1458
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f0d02fc

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1454
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1455
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter "mP2pDevice"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 385
    if-eqz p1, :cond_2

    .line 386
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 388
    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo DeviceName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 394
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 395
    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo DeviceAddr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 402
    :cond_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 407
    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private terminateWfdActivity(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 816
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 822
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    if-nez v0, :cond_2

    .line 833
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 840
    :cond_3
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 842
    if-ne p1, v2, :cond_4

    .line 843
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 846
    :cond_4
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 852
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_6

    .line 853
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 854
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_6
    if-ne p1, v2, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 537
    const-string v5, "WfdPickerActivity"

    const-string v6, "onActivityCreated"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 541
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    .line 543
    instance-of v5, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 544
    check-cast v3, Lmiui/preference/BasePreferenceActivity;

    .line 545
    .local v3, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v3}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 548
    .local v2, padding:I
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 550
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 552
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 558
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0d032c

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 561
    .end local v2           #padding:I
    :cond_1
    invoke-virtual {v3}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 562
    new-instance v5, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v5, v0, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 563
    iput-boolean v9, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 570
    .end local v3           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 571
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 572
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 574
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 577
    .local v4, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v6, 0x7f0d02f5

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 578
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v5, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setEnabled(Z)V

    .line 579
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 584
    .end local v4           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_1
    iget-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v5, :cond_3

    .line 585
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 588
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 590
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 591
    return-void

    .line 565
    .restart local v3       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_4
    new-instance v5, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v0, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    goto :goto_0

    .line 581
    .end local v3           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_5
    const v5, 0x7f0d0333

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1376
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->changeActionBar()V

    .line 1380
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1382
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1384
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1387
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1390
    :cond_1
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 429
    const-string v3, "WfdPickerActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 433
    const v3, 0x7f07005b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 436
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 438
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ALLSHARE_CAST_START:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->WFD_RESTART_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    :cond_0
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    .line 442
    :cond_1
    const-string v3, "allsharecast_available"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 443
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 444
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 445
    const-string v3, "allsharecast_connected"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 447
    const-string v3, "allsharecast_switch"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 449
    const-string v3, "wlan.wfd.autoconnect"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 450
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pTrigger:Z

    .line 455
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cause"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 457
    .local v2, option:I
    packed-switch v2, :pswitch_data_0

    .line 469
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 471
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 472
    iput v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 473
    iput-boolean v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    .line 475
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 477
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_4

    .line 478
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 480
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_2

    .line 481
    const-string v3, "WfdPickerActivity"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iput-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 489
    :cond_2
    :goto_1
    const-string v3, "wfd"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wfd/WfdManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 491
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_7

    .line 492
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/wfd/WfdManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    .line 493
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    if-nez v3, :cond_5

    .line 494
    const-string v3, "WfdPickerActivity"

    const-string v4, "Failed to set up connection with wifi display service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 514
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 533
    return-void

    .line 464
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    goto/16 :goto_0

    .line 486
    :cond_4
    const-string v3, "WfdPickerActivity"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 497
    :cond_5
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-eqz v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_2

    .line 501
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 503
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 504
    const-string v3, "WfdPickerActivity"

    const-string v4, "onCreate setWfdEnabledDialog(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 509
    :cond_7
    const-string v3, "WfdPickerActivity"

    const-string v4, "mWfdManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter

    .prologue
    .line 1197
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1202
    packed-switch p1, :pswitch_data_0

    .line 1215
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return-object v0

    .line 1204
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1218
    :goto_1
    if-eqz v0, :cond_0

    .line 1219
    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1234
    :cond_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1207
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1211
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1202
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02005f

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 1550
    const-string v0, "WfdPickerActivity"

    const-string v3, "onCreateOptionsMenu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_1

    move v0, v1

    .line 1553
    :goto_0
    const v3, 0x7f0d0303

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    .line 1557
    const v1, 0x7f0d02fc

    invoke-interface {p1, v2, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 1561
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 1562
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1564
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1580
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1551
    goto :goto_0

    .line 1568
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1569
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1572
    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1575
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 414
    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const v1, 0x7f0400e6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 417
    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 418
    const v1, 0x7f0a02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 420
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0d0a9e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0333

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 424
    return-object v0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 702
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDetach()V

    .line 715
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->terminateWfdActivity(Z)V

    .line 721
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1592
    const-string v1, "WfdPickerActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1632
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1596
    :pswitch_0
    const-string v1, "WfdPickerActivity"

    const-string v2, "MENU_ID_SCAN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0303

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1599
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1606
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 1610
    :cond_1
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1611
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 1612
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1614
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_2

    .line 1615
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1618
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1620
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDeviceResultRoutine(I)V

    goto :goto_0

    .line 1625
    :pswitch_1
    const-string v1, "WfdPickerActivity"

    const-string v2, "MENU_ID_ENDCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_0

    .line 1593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 650
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 652
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 654
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->pause()V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 662
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    if-ne v1, v3, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 665
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 671
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 673
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 674
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause requestP2pListen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1241
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1245
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    if-ne v0, v6, :cond_2

    .line 1249
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_1
    :goto_0
    return-void

    .line 1254
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1256
    const/4 v2, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1259
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1261
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1262
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1264
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1266
    const-string v1, "WfdPickerActivity"

    const-string v3, "===================================================================================="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v3, 0x7f0d02f5

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1269
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setEnabled(Z)V

    .line 1270
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1271
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1273
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1276
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1277
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1279
    const-string v1, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " peer.wfdDevInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    .line 1282
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1285
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v4, v1}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1287
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1290
    const-string v2, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last n:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?? curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v2, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?? curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 1293
    goto/16 :goto_1

    .line 1297
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "===================================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_4
    if-eqz v2, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    :cond_5
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1341
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_6

    .line 1342
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1345
    :cond_6
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 1346
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1301
    :cond_7
    const-string v1, "WfdPickerActivity"

    const-string v3, "show connected devices"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1304
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1305
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0d02f6

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1308
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1309
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1311
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v7, v7}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1312
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1314
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1315
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1317
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1318
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_8

    .line 1319
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1320
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 1321
    iput v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1322
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1324
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1357
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    instance-of v0, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1361
    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 1363
    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    .line 1366
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1370
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    .line 1584
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1587
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 689
    const-string v0, "WfdPickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 691
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 693
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->resume()V

    .line 697
    :cond_0
    return-void
.end method

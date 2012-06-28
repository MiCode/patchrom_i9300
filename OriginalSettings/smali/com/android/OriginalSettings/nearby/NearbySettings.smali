.class public Lcom/android/OriginalSettings/nearby/NearbySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAccessControl;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;
    }
.end annotation


# static fields
.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private final SHARE_VALUE_MUSIC:Ljava/lang/String;

.field private final SHARE_VALUE_PHOTOS:Ljava/lang/String;

.field private final SHARE_VALUE_VIDEOS:Ljava/lang/String;

.field private bFunctionState:Z

.field private bInitPreference:Z

.field private bRegisterReceiver:Z

.field private bWifiPopupShown:Z

.field private mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

.field private mAccessControl:Landroid/preference/ListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

.field private mFunctionOnoff:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSharedContentsValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    .line 86
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_VIDEOS:Ljava/lang/String;

    .line 87
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_PHOTOS:Ljava/lang/String;

    .line 88
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_MUSIC:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bInitPreference:Z

    .line 122
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 123
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 140
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    .line 141
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$1;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    .line 713
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$4;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$5;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    .line 1523
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/IMediaServer;)Lcom/android/OriginalSettings/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/AcceptListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/RejectListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bInitPreference:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bInitPreference:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 875
    .line 879
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 881
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 884
    :try_start_1
    invoke-interface {v0}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const-string v0, "[Mobile]"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 898
    :goto_0
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 921
    :goto_1
    return-object v0

    .line 890
    :cond_0
    :try_start_3
    const-string v0, "[Tablet]"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 895
    :try_start_4
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: exception on wm.canStatusBarHide(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 905
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 911
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d093f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    .line 915
    :catch_1
    move-exception v0

    .line 917
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: checkDeviceName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_1
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 264
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initChangePreferenceHandler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_onoff"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_access_control"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAccessControl;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAccessControl;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initChangePreferenceHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 4

    .prologue
    .line 531
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initPreferences()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initPreferences() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 658
    .local v0, value:Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 659
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 658
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshPreferenceValues()V
    .locals 4

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 574
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 611
    :cond_1
    :goto_1
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 600
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 606
    :catch_1
    move-exception v0

    .line 608
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() Storages :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 9
    .parameter "preferenceGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: registerPreferenceChangeListener"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 182
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 184
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 186
    .local v3, preference:Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    invoke-virtual {v3}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 196
    .local v5, value:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    .line 198
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Preference Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 200
    const/4 v5, 0x0

    .line 250
    .end local v5           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 251
    invoke-virtual {p0, v3, v5}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 254
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    .line 256
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3           #preference:Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .restart local v3       #preference:Landroid/preference/Preference;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 207
    :try_start_0
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 209
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Function Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 213
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 217
    .local v5, value:Ljava/lang/Object;
    :cond_4
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v8}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 226
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v5, :cond_7

    .line 228
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 230
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: Set Default Device Name :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 232
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 236
    .local v5, value:Ljava/lang/Object;
    :cond_6
    const v6, 0x7f0d093f

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    .local v5, value:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_shared_contents"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v5, :cond_0

    .line 242
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Share Contents Init"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 244
    .local v4, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    move-object v5, v4

    .local v5, value:Ljava/util/HashSet;
    goto/16 :goto_1

    .line 260
    .end local v3           #preference:Landroid/preference/Preference;
    .end local v4           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/util/HashSet;
    :cond_8
    return-void
.end method

.method private requestWifiSettingPopup()V
    .locals 4

    .prologue
    .line 615
    iget-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    if-nez v1, :cond_0

    .line 617
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: requestWifiSettingPopup()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 622
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 623
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d093f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0937

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0935

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$3;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/nearby/NearbySettings$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$2;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestWifiSettingPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 4

    .prologue
    .line 664
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: setBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 671
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 673
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 674
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.UPDATE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.SERVER_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 680
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 692
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 698
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: unregisterBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 709
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 5

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 557
    .local v1, value:Z
    :try_start_0
    sget-object v2, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 565
    :goto_0
    return v1

    .line 559
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: isExternalStorageSdMounted() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 518
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .parameter "savedInstanceState"

    .prologue
    .line 286
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    const-string v13, "AllshareSetting"

    const-string v14, "AllshareSetting: onCreate"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v13

    const-string v14, "pref_allshare"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 293
    const v13, 0x7f070008

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 300
    :try_start_0
    const-string v13, "allshare_onoff"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    const-string v13, "allshare_shared_contents"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 306
    const-string v13, "allshare_device_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setWidgetLayoutResource(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    const/16 v14, 0x2001

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    const v14, 0x7f0d093c

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 311
    new-instance v13, Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    invoke-direct {v13}, Lcom/android/OriginalSettings/nearby/EditTextWatcher;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    .line 314
    .local v7, edit:Landroid/widget/EditText;
    if-eqz v7, :cond_2

    .line 316
    const/16 v13, 0x4000

    invoke-virtual {v7, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    invoke-virtual {v7, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    .line 319
    .local v4, dialog:Landroid/app/Dialog;
    instance-of v13, v4, Landroid/app/AlertDialog;

    if-eqz v13, :cond_2

    .line 321
    const/4 v12, 0x0

    .line 322
    .local v12, spaceNum:I
    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v10

    .line 323
    .local v10, length:I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, deviceName:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 327
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_0

    .line 329
    add-int/lit8 v12, v12, 0x1

    .line 325
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    :cond_1
    check-cast v4, Landroid/app/AlertDialog;

    .end local v4           #dialog:Landroid/app/Dialog;
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 334
    .local v2, btn:Landroid/widget/Button;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-lez v13, :cond_5

    if-eq v10, v12, :cond_5

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    .end local v2           #btn:Landroid/widget/Button;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #length:I
    .end local v12           #spaceNum:I
    :cond_2
    const-string v13, "allshare_access_control"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 341
    const-string v13, "allshare_download_to"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    .line 344
    const-string v13, "allshare_download_from"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 350
    const-string v13, "allshare_accept_device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    const v14, 0x7f0d093d

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 355
    const-string v13, "allshare_reject_device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    const v14, 0x7f0d093d

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v7           #edit:Landroid/widget/EditText;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->initChangePreferenceHandler()V

    .line 373
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v15, 0x0

    invoke-virtual {v13, v9, v14, v15}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    .end local v9           #intent:Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 389
    :try_start_2
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "Preference Change Worker"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v13, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 400
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 405
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v14, "storage"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    sput-object v13, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 406
    sget-object v13, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    sput-object v13, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 417
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 418
    .local v1, activity:Landroid/app/Activity;
    instance-of v13, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v13, :cond_4

    .line 420
    move-object v0, v1

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    move-object v11, v0

    .line 421
    .local v11, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v11}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v11}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v13

    if-nez v13, :cond_4

    .line 423
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    const v14, 0x7f0d093f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 432
    .end local v1           #activity:Landroid/app/Activity;
    .end local v11           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_4
    :goto_6
    return-void

    .line 334
    .restart local v2       #btn:Landroid/widget/Button;
    .restart local v3       #deviceName:Ljava/lang/String;
    .restart local v7       #edit:Landroid/widget/EditText;
    .restart local v8       #i:I
    .restart local v10       #length:I
    .restart local v12       #spaceNum:I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 361
    .end local v2           #btn:Landroid/widget/Button;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v7           #edit:Landroid/widget/EditText;
    .end local v8           #i:I
    .end local v10           #length:I
    .end local v12           #spaceNum:I
    :catch_0
    move-exception v5

    .line 363
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 377
    .end local v5           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 379
    .local v6, e1:Ljava/lang/Exception;
    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() bind service:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 393
    .end local v6           #e1:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 395
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() Thread :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 408
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 410
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() storage :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 427
    .end local v5           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 429
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() Title :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 437
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: onDestroy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.mediaserver.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 452
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 453
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 462
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: onDestroy() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1032
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1034
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Preference Changed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v1, "allshare_onoff"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, p2

    .line 1039
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1040
    iget-boolean v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    if-ne v2, v1, :cond_0

    .line 1042
    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: Duplicated on/off message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1273
    :goto_0
    return v1

    .line 1045
    :cond_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 1047
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1048
    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1051
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    .line 1053
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1055
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1056
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v1, p2

    .line 1059
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_a

    .line 1062
    if-eqz v2, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1065
    if-eqz v6, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    const-string v1, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Wifi State : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1074
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1075
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    .line 1076
    goto/16 :goto_0

    .line 1079
    :cond_2
    if-nez v6, :cond_a

    .line 1081
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1084
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1086
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1088
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1089
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    .line 1090
    goto/16 :goto_0

    .line 1094
    :cond_4
    if-nez v2, :cond_a

    .line 1096
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-eqz v6, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1100
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting:  WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1103
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1105
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1107
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1108
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    .line 1109
    goto/16 :goto_0

    .line 1112
    :cond_6
    if-nez v6, :cond_a

    .line 1114
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1117
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1119
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1121
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1122
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    .line 1123
    goto/16 :goto_0

    .line 1131
    :cond_8
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Check Wi-Fi State or Function state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1134
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Set Enable Function"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_9
    move v1, v4

    .line 1137
    goto/16 :goto_0

    .line 1143
    :cond_a
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "pref_allshare"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1144
    const-string v2, "allshare_welcome_popup"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1146
    if-nez v1, :cond_b

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_b

    .line 1148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1149
    const v2, 0x7f070009

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1150
    const v1, 0x7f0a030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1152
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d093f

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d0935

    new-instance v8, Lcom/android/OriginalSettings/nearby/NearbySettings$7;

    invoke-direct {v8, p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings$7;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v6, Lcom/android/OriginalSettings/nearby/NearbySettings$6;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$6;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1247
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1251
    if-eqz v1, :cond_14

    .line 1253
    :try_start_1
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v5, Lcom/android/OriginalSettings/nearby/NearbySettings$8;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/android/OriginalSettings/nearby/NearbySettings$8;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.OriginalSettings.allshare.REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v1, v3

    .line 1264
    goto/16 :goto_0

    .line 1179
    :catch_0
    move-exception v1

    .line 1181
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onCreate() Popup Start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1189
    :cond_d
    const-string v1, "allshare_device_name"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    .line 1191
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1192
    if-lez v1, :cond_e

    const/16 v2, 0x37

    if-le v1, v2, :cond_f

    .line 1194
    :cond_e
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name length error "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0938

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 1196
    goto/16 :goto_0

    .line 1201
    :cond_f
    :try_start_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/OriginalSettings/nearby/IMediaServer;->getMediaServerName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Samsung Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1203
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name is same. return"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v1, v4

    .line 1204
    goto/16 :goto_0

    .line 1207
    :catch_1
    move-exception v1

    .line 1209
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1215
    :cond_10
    const-string v1, "allshare_shared_contents"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p2, :cond_11

    .line 1218
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1219
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1223
    :cond_11
    const-string v1, "allshare_access_control"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 1225
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1227
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Disable lists"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setEnabled(Z)V

    .line 1229
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1231
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1233
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Enable lists"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setEnabled(Z)V

    .line 1235
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1239
    :cond_13
    const-string v1, "allshare_download_to"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_c

    .line 1241
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v1, "1"

    if-ne p2, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v4

    .line 1244
    goto/16 :goto_0

    .line 1267
    :catch_2
    move-exception v1

    .line 1269
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: OnPreference run: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    move v1, v4

    .line 1273
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 955
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_device_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 961
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;)V

    :cond_0
    :goto_0
    move v1, v2

    .line 1025
    :goto_1
    return v1

    .line 963
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_onoff"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 965
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    :catch_0
    move-exception v1

    .line 1020
    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    .line 1022
    goto :goto_1

    .line 968
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 973
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ACCEPTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 976
    if-eqz v1, :cond_4

    .line 978
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 979
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 981
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 983
    if-eqz v5, :cond_4

    .line 985
    new-instance v6, Lcom/android/OriginalSettings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 986
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 988
    new-instance v5, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 989
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_REJECTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 998
    if-eqz v1, :cond_0

    .line 1000
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 1001
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1003
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1005
    if-eqz v5, :cond_0

    .line 1007
    new-instance v6, Lcom/android/OriginalSettings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1008
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1010
    new-instance v5, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1011
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 467
    const-string v4, "AllshareSetting"

    const-string v5, "AllshareSetting: onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 470
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->initPreferences()V

    .line 474
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v4}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v0

    .line 477
    .local v0, bState:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eq v0, v4, :cond_0

    .line 479
    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Change State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 481
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xbb9

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0           #bState:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    if-nez v4, :cond_1

    .line 496
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 498
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 485
    :catch_0
    move-exception v2

    .line 487
    .local v2, e1:Landroid/os/RemoteException;
    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: onResume() change state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 500
    .end local v2           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 502
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: onResume() bind service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 511
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    return-void
.end method

.class public Lcom/android/server/enterprise/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field private static final MESSAGE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_MODE_NONE:I = 0x5

.field private static final UsbProperty:Ljava/lang/String; = "persist.service.usb.setting"

.field private static mHomekeyPolicySet:I


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsbMassStorageAvailable:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private preAdminRemoval_SDCardWrite:Z

.field private statusBar:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 113
    iput-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 121
    iput-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 142
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 152
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 303
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 1534
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 126
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 127
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, filterBoot:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/RestrictionPolicy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceStatusBarExpansion(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/RestrictionPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method private applySdCardWriteAccessPolicy()V
    .locals 3

    .prologue
    .line 1512
    const-string v1, "sdCardWriteAccessBlocked"

    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1513
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isExternalSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 1515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->unmountSdCard(Z)Z

    .line 1517
    :cond_0
    return-void

    .line 1512
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method private disableNFC()V
    .locals 4

    .prologue
    .line 836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 838
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 839
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enforceHwPermission()I
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceLocationPermission()I
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceRestrictionPermission()I
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceStatusBarExpansion(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_1

    .line 1771
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to get StatusBar Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :goto_0
    return-void

    .line 1773
    :cond_1
    if-nez p1, :cond_2

    .line 1774
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1776
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private enforceTetheringPermission()I
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1588
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 5

    .prologue
    .line 1520
    monitor-enter p0

    const/4 v1, 0x0

    .line 1522
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1523
    .local v2, service:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1524
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1531
    .end local v2           #service:Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1526
    .restart local v2       #service:Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string v4, "Can\'t get mount service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1528
    .end local v2           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1520
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private isExternalSdCardPresent()Z
    .locals 3

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1580
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1581
    const/4 v1, 0x1

    .line 1583
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "tetherableRegexs"
    .parameter "iface"

    .prologue
    .line 346
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 347
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    const/4 v4, 0x1

    .line 350
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 346
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private mountSdCard()Z
    .locals 7

    .prologue
    .line 1592
    const/4 v3, 0x0

    .line 1593
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1594
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1596
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v2

    .line 1597
    .local v2, result:I
    if-nez v2, :cond_1

    .line 1598
    const/4 v3, 0x1

    .line 1607
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    .line 1600
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    .restart local v2       #result:I
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oops!!! Unable to mount media - error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1603
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1604
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unmountSdCard(Z)Z
    .locals 5
    .parameter "force"

    .prologue
    .line 1561
    const/4 v3, 0x0

    .line 1562
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1563
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1564
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    const/4 v3, 0x1

    .line 1575
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v3

    .line 1569
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 1571
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCameraState()V
    .locals 6

    .prologue
    .line 1661
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1663
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1665
    .local v2, token:J
    :try_start_0
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "1"

    :goto_0
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1673
    return-void

    .line 1665
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v1

    .line 1670
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RestrictionPolicy"

    const-string v5, "updateCameraState error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateHomeKeyPolicySet()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1310
    const/4 v1, 0x0

    .line 1312
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "homeKeyEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1314
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1315
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1316
    const/4 v1, 0x1

    .line 1320
    .end local v2           #value:Z
    :cond_1
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_0
    sput v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1321
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHomeKeyPolicySet():mHomekeyPolicySet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return-void

    .line 1320
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateUSBMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    :cond_0
    return-void
.end method


# virtual methods
.method public allowFactoryReset(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1282
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1284
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "factoryresetallowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1286
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowFactoryReset():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return v1
.end method

.method public allowGoogleCrashReport(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1446
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1448
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "googleCrashReportEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1451
    .local v1, result:Z
    return v1
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 7
    .parameter "allow"

    .prologue
    .line 1404
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 1405
    .local v1, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    .line 1406
    .local v3, oldState:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "OTAUpgradeEnabled"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v2

    .line 1410
    .local v2, newState:Z
    if-eq v2, v3, :cond_0

    .line 1411
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    .line 1413
    .local v0, ap:Lcom/android/server/enterprise/ApplicationPolicy;
    const-string v4, "com.sec.android.fotaclient"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1414
    const-string v4, "com.wssyncmldm"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1415
    const-string v4, "com.samsung.sdm"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1416
    const-string v4, "com.samsung.syncmlservice"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1418
    .end local v0           #ap:Lcom/android/server/enterprise/ApplicationPolicy;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public allowPowerOff(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1782
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 1784
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "powerOffAllowed"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowSDCardWrite(Z)Z
    .locals 8
    .parameter "allow"

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1484
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1485
    .local v3, token:J
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v2

    .line 1486
    .local v2, oldState:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "sdCardWriteEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v1

    .line 1490
    .local v1, newState:Z
    if-eq v1, v2, :cond_0

    .line 1491
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 1493
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1494
    const/4 v5, 0x1

    return v5
.end method

.method public allowSettingsChanges(Z)Z
    .locals 16
    .parameter "allow"

    .prologue
    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v2

    .line 924
    .local v2, callingUid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "allowSettingsChanges"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 926
    .local v8, ret:Z
    if-eqz v8, :cond_2

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 928
    .local v11, token:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 930
    .local v1, am:Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 931
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v9, "com.android.settings"

    .line 932
    .local v9, settingsPkg:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 933
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 934
    .local v10, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 935
    .local v5, origInt:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 936
    .local v3, cmp:Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 937
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 938
    .local v6, packageName:Ljava/lang/String;
    const-string v13, "RestrictionPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    if-eqz v6, :cond_0

    const-string v13, "com.android.settings"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 941
    const-string v13, "com.android.settings"

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 947
    .end local v3           #cmp:Landroid/content/ComponentName;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #origInt:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "edm.intent.action.allow.settings"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v9           #settingsPkg:Ljava/lang/String;
    .end local v11           #token:J
    :cond_2
    return v8
.end method

.method public allowStatusBarExpansion(Z)Z
    .locals 8
    .parameter "allow"

    .prologue
    const/4 v5, 0x0

    .line 1705
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1706
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1707
    .local v2, token:J
    const/4 v1, 0x1

    .line 1709
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "statusBarExpansionEnabled"

    invoke-virtual {v4, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1712
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v4, :cond_0

    .line 1713
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    .line 1716
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v4, :cond_1

    .line 1717
    const-string v4, "RestrictionPolicy"

    const-string v6, "Failed to get StatusBar Manager"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 1726
    .end local v1           #ret:Z
    :goto_0
    return v1

    .line 1720
    .restart local v1       #ret:Z
    :cond_1
    if-nez p1, :cond_2

    .line 1721
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/high16 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1725
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method public allowVpn(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1368
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1370
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "nativeVpnAllowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1372
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1373
    const-string v2, "vpn_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    .line 1376
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowVpn():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return v1
.end method

.method public allowWallpaperChange(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1677
    const/4 v1, 0x1

    .line 1678
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1679
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "wallpaperEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1681
    return v1
.end method

.method public getPowerOffAllowed(Z)Z
    .locals 9
    .parameter "allAdmins"

    .prologue
    .line 1789
    const/4 v2, 0x1

    .line 1790
    .local v2, ret:Z
    if-nez p1, :cond_1

    .line 1792
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 1793
    .local v0, callingUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "powerOffAllowed"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1808
    .end local v0           #callingUid:I
    :cond_0
    :goto_0
    return v2

    .line 1795
    :catch_0
    move-exception v3

    .line 1796
    .local v3, snfe:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "getPowerOffAllowed() -> Settings Not Found - default true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1799
    .end local v3           #snfe:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "powerOffAllowed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1801
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1802
    .local v4, value:Z
    if-nez v4, :cond_2

    .line 1803
    move v2, v4

    .line 1804
    goto :goto_0
.end method

.method public getSDCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarExpansionAllowed(Z)Z
    .locals 7
    .parameter "allAdmins"

    .prologue
    .line 1730
    const/4 v2, 0x1

    .line 1731
    .local v2, ret:Z
    if-eqz p1, :cond_0

    .line 1732
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v2

    :goto_0
    move v3, v2

    .line 1743
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_1
    return v3

    .line 1734
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1736
    .local v0, callingUid:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "statusBarExpansionEnabled"

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v1

    .line 1739
    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v4, "RestrictionPolicy"

    const-string v5, "Admin not found on database "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1740
    .restart local v3       #ret:I
    goto :goto_1
.end method

.method getStorageManager()Landroid/os/storage/StorageManager;
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 7

    .prologue
    .line 1256
    const/4 v1, 0x1

    .line 1262
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "backgroundDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1264
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1265
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1266
    move v1, v2

    .line 1270
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBackupAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 802
    const/4 v2, 0x1

    .line 803
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backupEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 805
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 806
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 807
    move v2, v3

    .line 811
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 7

    .prologue
    .line 497
    const/4 v1, 0x1

    .line 498
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 501
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 502
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 503
    move v1, v2

    .line 507
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isCameraEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 263
    const/4 v2, 0x1

    .line 264
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "cameraEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 266
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 267
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 268
    move v2, v3

    .line 272
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isCellularDataAllowed()Z
    .locals 7

    .prologue
    .line 904
    const/4 v1, 0x1

    .line 905
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cellularDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 907
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 908
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 909
    move v1, v2

    .line 913
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isClipboardAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1061
    const/4 v2, 0x1

    .line 1062
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "clipboardEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1064
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1065
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1066
    move v2, v3

    .line 1070
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1076
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isFactoryResetAllowed()Z
    .locals 7

    .prologue
    .line 1296
    const/4 v1, 0x1

    .line 1297
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "factoryresetallowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1299
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1300
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1301
    move v1, v2

    .line 1305
    .end local v2           #value:Z
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFactoryResetAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return v1
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 7

    .prologue
    .line 1460
    const/4 v1, 0x1

    .line 1462
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "googleCrashReportEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1466
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1467
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1468
    move v1, v2

    .line 1472
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isHomeKeyEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1351
    const/4 v0, 0x1

    .line 1353
    .local v0, ret:Z
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1356
    :cond_0
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    .line 1358
    :goto_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeKeyEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return v0

    :cond_1
    move v0, v1

    .line 1356
    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 9
    .parameter "showMsg"

    .prologue
    .line 323
    const/4 v2, 0x1

    .line 324
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "microphoneEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 326
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 327
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 328
    move v2, v3

    .line 332
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 340
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isMockLocationEnabled()Z
    .locals 7

    .prologue
    .line 750
    const/4 v1, 0x1

    .line 751
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "mockLocationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 753
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 754
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 755
    move v1, v2

    .line 759
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNFCEnabled()Z
    .locals 7

    .prologue
    .line 852
    const/4 v1, 0x1

    .line 853
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nfcEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 855
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 856
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 857
    move v1, v2

    .line 861
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNonMarketAppAllowed()Z
    .locals 7

    .prologue
    .line 1204
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.isNonMarketAppAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1207
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    .line 1208
    .local v2, ret:Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1210
    .local v3, value:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1211
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1216
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Boolean;
    :cond_1
    return v2
.end method

.method public isOTAUpgradeAllowed()Z
    .locals 7

    .prologue
    .line 1426
    const/4 v1, 0x1

    .line 1427
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "OTAUpgradeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1430
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1431
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1432
    move v1, v2

    .line 1436
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 5
    .parameter "showMsg"

    .prologue
    .line 1813
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->getPowerOffAllowed(Z)Z

    move-result v0

    .line 1815
    .local v0, allowed:Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1816
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1817
    .local v1, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1822
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return v0
.end method

.method public isSDCardWriteAllowed()Z
    .locals 7

    .prologue
    .line 1498
    const/4 v1, 0x1

    .line 1499
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardWriteEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1502
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1503
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1504
    move v1, v2

    .line 1508
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 591
    const/4 v2, 0x1

    .line 592
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "screenCaptureEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 594
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 595
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 596
    move v2, v3

    .line 600
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 601
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isSdCardEnabled()Z
    .locals 7

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1029
    const/4 v1, 0x0

    .line 1040
    :cond_0
    :goto_0
    return v1

    .line 1031
    :cond_1
    const/4 v1, 0x1

    .line 1032
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1034
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1035
    .local v2, value:Z
    if-nez v2, :cond_2

    .line 1036
    move v1, v2

    .line 1037
    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 961
    const/4 v2, 0x1

    .line 967
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSettingsChanges"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 969
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 970
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 971
    move v2, v3

    .line 975
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 976
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 981
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 7
    .parameter "showMsg"

    .prologue
    .line 1747
    const/4 v1, 0x1

    .line 1748
    .local v1, allowed:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "statusBarExpansionEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1750
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1751
    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1752
    const/4 v1, 0x0

    goto :goto_0

    .line 1763
    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public isTetheringEnabled()Z
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v0

    .line 372
    .local v0, ret1:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    .line 373
    .local v1, ret2:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v2

    .line 374
    .local v2, ret3:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 7

    .prologue
    .line 640
    const/4 v1, 0x1

    .line 641
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 643
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 644
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 645
    move v1, v2

    .line 649
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 696
    iget-boolean v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    if-nez v5, :cond_1

    .line 697
    const-string v5, "RestrictionPolicy"

    const-string v6, "Usb mass storage not available on device "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x0

    .line 715
    :cond_0
    :goto_0
    return v2

    .line 700
    :cond_1
    const/4 v2, 0x1

    .line 701
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "massStorageEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 703
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 704
    .local v3, value:Z
    if-nez v3, :cond_2

    .line 705
    move v2, v3

    .line 709
    .end local v3           #value:Z
    :cond_3
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1150
    const/4 v2, 0x1

    .line 1151
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbMediaPlayerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1153
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1154
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1155
    move v2, v3

    .line 1159
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isUsbTetheringEnabled()Z
    .locals 7

    .prologue
    .line 409
    const/4 v1, 0x1

    .line 410
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 412
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 413
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 414
    move v1, v2

    .line 418
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isVpnAllowed()Z
    .locals 7

    .prologue
    .line 1384
    const/4 v1, 0x1

    .line 1385
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nativeVpnAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1387
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1388
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1389
    move v1, v2

    .line 1393
    .end local v2           #value:Z
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVpnAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return v1
.end method

.method public isWallpaperChangeAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1685
    const/4 v1, 0x1

    .line 1686
    .local v1, allowed:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "wallpaperEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1688
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1689
    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1690
    const/4 v1, 0x0

    goto :goto_0

    .line 1693
    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 1694
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1695
    .local v2, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401be

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1699
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .locals 7

    .prologue
    .line 455
    const/4 v1, 0x1

    .line 456
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 458
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 459
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 460
    move v1, v2

    .line 464
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1613
    return-void
.end method

.method onAdminRemoved()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 135
    const/4 v1, -0x1

    sput v1, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 136
    const-string v1, "screenCaptureEnabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1617
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1618
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V

    .line 1619
    const-string v3, "microphoneEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1622
    const-string v0, "screenCaptureEnabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/system/enterprise.conf"

    invoke-static {v0, v1, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    if-eq v0, v1, :cond_0

    .line 1626
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 1627
    iput-boolean v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 1631
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceStatusBarExpansion(Z)V

    .line 1634
    return-void

    :cond_1
    move v0, v2

    .line 1619
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1622
    goto :goto_1
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 1658
    return-void
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 7
    .parameter "allow"

    .prologue
    .line 1084
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1086
    .local v0, callingUid:I
    const/4 v1, 0x1

    .line 1087
    .local v1, ret:Z
    if-nez p1, :cond_0

    .line 1088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1089
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 1091
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1093
    .end local v2           #token:J
    :cond_0
    if-eqz v1, :cond_1

    .line 1094
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1097
    :cond_1
    return v1
.end method

.method public setBackgroundData(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1227
    .local v0, callingUid:I
    const/4 v3, 0x0

    .line 1228
    .local v3, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1230
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "backgroundDataEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 1232
    if-nez p1, :cond_0

    .line 1233
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "background_data"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1235
    const-string v6, "netpolicy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    .line 1237
    .local v2, networkPolicyService:Landroid/net/INetworkPolicyManager;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v2           #networkPolicyService:Landroid/net/INetworkPolicyManager;
    :cond_0
    const/4 v3, 0x1

    .line 1244
    :goto_0
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackgroundData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1246
    return v3

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 769
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 770
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 771
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 774
    .local v4, token:J
    if-nez p1, :cond_1

    .line 775
    :try_start_0
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 777
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_0

    .line 778
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get BackupManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :goto_0
    return v6

    .line 781
    .restart local v0       #backupManager:Landroid/app/backup/IBackupManager;
    :cond_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 782
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v3, 0x1

    .line 789
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 791
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 793
    goto :goto_0

    .line 785
    :catch_0
    move-exception v2

    .line 786
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 787
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetoothTethering(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v0

    .line 474
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 475
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 478
    .local v3, token:J
    if-nez p1, :cond_0

    .line 479
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 481
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "bluetoothTetheringEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 483
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetoothTethering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    return v2

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string v6, "is EDMStorageProvider running?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCamera(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 243
    .local v0, callingUid:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "cameraEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 246
    .local v2, ret:Z
    if-eqz v2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v2           #ret:Z
    :cond_0
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "is EDMStorageProvider running?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 871
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 872
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 873
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 876
    .local v4, token:J
    if-nez p1, :cond_1

    .line 877
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 879
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 880
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get Connectivity Manager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    .line 883
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 884
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v3, 0x1

    .line 891
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 893
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCellularData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 895
    goto :goto_0

    .line 887
    :catch_0
    move-exception v2

    .line 888
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 889
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setClipboardEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1051
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setEnableNFC(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 828
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->disableNFC()V

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "nfcEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setHomeKeyState(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1336
    const/4 v1, 0x1

    .line 1337
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1338
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "homeKeyEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1340
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1341
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHomeKeyState:ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mHomekeyPolicySet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v1
.end method

.method public setMicrophoneState(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 288
    .local v0, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "microphoneEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 291
    .local v1, ret:Z
    if-eqz v1, :cond_1

    .line 292
    const-string v3, "microphoneEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    :cond_1
    return v1
.end method

.method public setMockLocation(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceLocationPermission()I

    move-result v0

    .line 726
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 727
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 729
    .local v3, token:J
    if-nez p1, :cond_0

    .line 730
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mock_location"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    const/4 v2, 0x1

    .line 737
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "mockLocationEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 739
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMockLocationState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    return v2

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 735
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 517
    .local v0, callingUid:I
    const/4 v5, 0x0

    .line 518
    .local v5, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 522
    .local v6, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v12, "RESTRICTION"

    const-string v13, "screenCaptureEnabled"

    invoke-virtual {v11, v0, v12, v13, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 524
    const-string v11, "RestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenCapture : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-eqz v5, :cond_1

    .line 528
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v2

    .line 530
    .local v2, current:Z
    const-string v11, "screenCaptureEnabled"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_0

    move v10, v8

    :cond_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "/data/system/enterprise.conf"

    invoke-static {v11, v10, v12}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 535
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.screencapture"

    const-string v11, "com.sec.android.app.screencapture.ScreenCaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .local v1, comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    move v10, v8

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_1
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture"

    const-string v11, "com.diotek.screen_capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    move v10, v8

    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_3
    :try_start_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture2"

    const-string v11, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    move v10, v8

    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 567
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_5
    :try_start_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.systemui"

    const-string v11, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_5

    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 581
    .end local v1           #comName:Landroid/content/ComponentName;
    .end local v2           #current:Z
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    return v5

    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v10, v9

    .line 537
    goto :goto_0

    .line 540
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 541
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 578
    .end local v2           #current:Z
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 579
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "setScreenCapture error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    move v10, v9

    .line 548
    goto :goto_2

    .line 551
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 552
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_4
    move v10, v9

    .line 559
    goto :goto_4

    .line 562
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_3
    move-exception v3

    .line 563
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_5
    move v8, v9

    .line 570
    goto :goto_6

    .line 573
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_4
    move-exception v3

    .line 574
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "is component enabled?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7
.end method

.method public setSdCardState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 989
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 990
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1013
    :goto_0
    return v3

    .line 993
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 994
    .local v4, token:J
    const/4 v3, 0x1

    .line 995
    .local v3, ret:Z
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 998
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "sdCardEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 1000
    if-nez p1, :cond_1

    .line 1001
    const-string v6, "/mnt/extSdCard"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1005
    :cond_1
    :try_start_1
    const-string v6, "/mnt/extSdCard"

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1009
    :catch_0
    move-exception v1

    .line 1010
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTethering(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setUsbTethering(Z)Z

    move-result v0

    .line 360
    .local v0, ret1:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setWifiTethering(Z)Z

    move-result v1

    .line 361
    .local v1, ret2:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setBluetoothTethering(Z)Z

    move-result v2

    .line 362
    .local v2, ret3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 617
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 618
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 620
    .local v3, token:J
    if-nez p1, :cond_0

    .line 621
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_0
    const/4 v2, 0x1

    .line 627
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbDebuggingEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 629
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUSBDebugging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    return v2

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 2
    .parameter "allow"

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1104
    .local v0, callingUid:I
    const/4 v1, 0x0

    return v1
.end method

.method public setUsbMassStorage(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 659
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 660
    .local v0, callingUid:I
    iget-boolean v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    if-nez v7, :cond_0

    .line 661
    const-string v7, "RestrictionPolicy"

    const-string v8, "Usb mass storage not available on device "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 687
    :goto_0
    return v2

    .line 664
    :cond_0
    const/4 v2, 0x1

    .line 665
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 666
    .local v4, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "massStorageEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v2, v7

    .line 669
    if-nez p1, :cond_3

    .line 670
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 672
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    .line 673
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get StorageManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 674
    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 678
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 679
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :cond_3
    const/4 v2, 0x1

    .line 686
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 684
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 10
    .parameter "allow"

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1120
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 1121
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1122
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "usbMediaPlayerEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v4, v7

    .line 1125
    if-nez p1, :cond_0

    .line 1127
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.disable.mtp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v2, intent1:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1129
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1131
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v3, intent2:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1133
    const-string v7, "mtp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1134
    const-string v7, "ptp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1135
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    return v4

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 13
    .parameter "enable"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v1

    .line 384
    .local v1, callingUid:I
    const/4 v6, 0x1

    .local v6, ret1:Z
    const/4 v7, 0x1

    .line 385
    .local v7, ret2:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 386
    .local v8, token:J
    if-nez p1, :cond_1

    .line 388
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 390
    .local v5, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 391
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 392
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 393
    const/4 v6, 0x0

    .line 390
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #mConnManager:Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "RESTRICTION"

    const-string v12, "usbTetheringEnabled"

    invoke-virtual {v10, v1, v11, v12, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 399
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public setWifiTethering(Z)Z
    .locals 16
    .parameter "enable"

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v2

    .line 428
    .local v2, callingUid:I
    const/4 v8, 0x1

    .local v8, ret1:Z
    const/4 v9, 0x1

    .local v9, ret2:Z
    const/4 v10, 0x1

    .line 429
    .local v10, ret3:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 430
    .local v11, token:J
    if-nez p1, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 433
    .local v6, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v1, v3

    .line 434
    .local v4, iface:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 435
    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 436
    const/4 v8, 0x0

    .line 433
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    .end local v4           #iface:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 441
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    .line 443
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #mConnManager:Landroid/net/ConnectivityManager;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "wifiTetheringEnabled"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 445
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    const/4 v13, 0x1

    :goto_1
    return v13

    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 9

    .prologue
    .line 1639
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1641
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    if-eqz v6, :cond_0

    .line 1642
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    .line 1643
    .local v4, paths:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1644
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1645
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1646
    .local v5, storage:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1647
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 1653
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:[Ljava/lang/String;
    .end local v5           #storage:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void

    .line 1644
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #paths:[Ljava/lang/String;
    .restart local v5       #storage:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

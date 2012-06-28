.class public Lcom/android/OriginalSettings/deviceinfo/Memory;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "Memory.java"


# instance fields
.field private mClickedMountPoint:Ljava/lang/String;

.field private mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

.field private mLastClickedMountToggle:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 72
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 77
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 149
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 253
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const v3, 0x7f0d0402

    const/4 v4, 0x0

    .line 318
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d090f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 331
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 332
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_2

    .line 333
    const-string v2, "MemorySettings"

    const-string v3, "doUnmount() : Unable to getMountService()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_1
    return-void

    .line 323
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0403

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 211
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 212
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 213
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 218
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 215
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 353
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 354
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-nez v0, :cond_1

    .line 355
    const-string v2, "MemorySettings"

    const-string v3, "hasAppsAccessingStorage() : Unable to getMountService()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return v4

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 359
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 395
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->removeDialog(I)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialog(I)V

    .line 350
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public initMountedStorageVolume()V
    .locals 13

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .line 413
    .local v11, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v8, v11

    .line 414
    .local v8, length:I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storageVolumes.length :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    array-length v9, v11

    .line 417
    .local v9, mountVolume:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 418
    aget-object v3, v11, v6

    .line 419
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, subsystem:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, state:Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v1, "usb"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "removed"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bad_removal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 417
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 424
    :cond_2
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is mounted, state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v10           #state:Ljava/lang/String;
    .end local v12           #subsystem:Ljava/lang/String;
    :cond_3
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mountVolume :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-array v1, v9, [Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 430
    const/4 v6, 0x0

    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v6, v8, :cond_7

    .line 431
    aget-object v3, v11, v6

    .line 432
    .restart local v3       #storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v12

    .line 433
    .restart local v12       #subsystem:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 435
    .restart local v10       #state:Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v1, "usb"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "removed"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bad_removal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 436
    :cond_4
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumeState["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    .line 440
    .local v0, storagePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aput-object v0, v1, v7

    .line 441
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 443
    add-int/lit8 v7, v7, 0x1

    .line 430
    .end local v0           #storagePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 437
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 446
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v10           #state:Ljava/lang/String;
    .end local v12           #subsystem:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 89
    :cond_0
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 93
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 98
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->initMountedStorageVolume()V

    .line 118
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v2, 0x7f0d010e

    const/4 v0, 0x0

    const v3, 0x7f0d04ee

    .line 266
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_0
    return-object v0

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d090b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$4;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$3;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d090c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d03fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/Memory$6;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$6;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/Memory$5;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$5;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountToggleClickedCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getIsUSBOTGStorage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d090d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d090e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 306
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0400

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0401

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v0, 0x1

    const v1, 0x7f0d0405

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d0406

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 204
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 224
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v6, v0

    .line 229
    .local v4, svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v4, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v1

    .line 230
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 250
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :goto_1
    return v5

    .line 235
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-virtual {v4, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    .line 237
    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 238
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    .line 239
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->unmount()V

    goto :goto_1

    .line 244
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->mount()V

    goto :goto_1

    .line 227
    .end local v2           #state:Ljava/lang/String;
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 123
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 137
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 139
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    const-string v4, "MemorySettings"

    const-string v5, "Sd-Card Disabled!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 142
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    return-void
.end method

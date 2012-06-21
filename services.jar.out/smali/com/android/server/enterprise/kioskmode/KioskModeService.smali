.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "kioskmode/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static volatile packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static volatile terminateIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private preAdminRemoval_SystemBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 93
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    .line 126
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 130
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 138
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method private _disableKioskMode(II)V
    .locals 6
    .parameter "adminUid"
    .parameter "operation"

    .prologue
    .line 412
    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    const-string v2, "KioskModeService"

    const-string v4, "_disableKioskMode"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 420
    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode enabled by different admin"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v2, -0x2

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 422
    monitor-exit v3

    .line 457
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode already disabled"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 427
    monitor-exit v3

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 431
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver()V

    .line 434
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeKioskPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, kioskPackage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeDefaultPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, newHomePackage:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    .line 446
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    .line 452
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    .line 455
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 456
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private _enableKioskMode(ILjava/lang/String;)V
    .locals 12
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    .line 335
    sget-object v10, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 336
    :try_start_0
    const-string v9, "KioskModeService"

    const-string v11, "_enableKioskMode"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 341
    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode already enabled"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 343
    monitor-exit v10

    .line 402
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, currentHomePackage:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(ILjava/lang/String;)I

    move-result v6

    .line 353
    .local v6, result:I
    if-eqz v6, :cond_1

    .line 354
    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode App not validated"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v9, 0x1

    invoke-direct {p0, v9, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 356
    monitor-exit v10

    goto :goto_0

    .line 401
    .end local v1           #currentHomePackage:Ljava/lang/String;
    .end local v6           #result:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 360
    .restart local v1       #currentHomePackage:Ljava/lang/String;
    .restart local v6       #result:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 361
    const-string v9, "KioskModeService"

    const-string v11, "Cannot find HOME activity"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    .line 363
    const/4 v9, 0x1

    const/16 v11, -0x7d0

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 364
    monitor-exit v10

    goto :goto_0

    .line 368
    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V

    .line 376
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V

    .line 381
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 382
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 383
    .local v2, flag:Z
    const/16 v7, 0x64

    .local v7, timeoutCount:I
    move v8, v7

    .line 384
    .end local v7           #timeoutCount:I
    .local v8, timeoutCount:I
    :goto_1
    if-eqz v2, :cond_6

    add-int/lit8 v7, v8, -0x1

    .end local v8           #timeoutCount:I
    .restart local v7       #timeoutCount:I
    if-lez v8, :cond_5

    .line 385
    :goto_2
    const/16 v9, 0xa

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    .line 386
    .local v5, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 387
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 390
    const/4 v2, 0x1

    .end local v4           #packageName:Ljava/lang/String;
    :cond_3
    move v8, v7

    .line 394
    .end local v7           #timeoutCount:I
    .restart local v8       #timeoutCount:I
    goto :goto_1

    .line 386
    .end local v8           #timeoutCount:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v7       #timeoutCount:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 397
    .end local v3           #i:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    .line 400
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    .line 401
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v7           #timeoutCount:I
    .restart local v8       #timeoutCount:I
    :cond_6
    move v7, v8

    .end local v8           #timeoutCount:I
    .restart local v7       #timeoutCount:I
    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/kioskmode/KioskModeService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "callingUid"
    .parameter "hwKey"

    .prologue
    .line 961
    const/4 v1, 0x1

    .line 962
    .local v1, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 964
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 968
    :cond_0
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .locals 4

    .prologue
    .line 911
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 913
    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v1           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "applyEDMPolicy failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastKioskResult(II)V
    .locals 5
    .parameter "operation"
    .parameter "result"

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v1

    .line 578
    .local v1, adminUid:I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, adminPackage:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 604
    :goto_0
    return-void

    .line 582
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUpKioskMode(ILjava/lang/String;)V
    .locals 3
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 686
    const-string v0, "com.sec.android.kiosk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    const-string v1, "com.sec.android.kiosk"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 691
    :cond_0
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .locals 12
    .parameter "apkPath"

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 698
    const/4 v3, 0x0

    .line 699
    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 701
    .local v5, out:Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 702
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v9, "kioskmode/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 703
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 704
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 706
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-eq v7, v10, :cond_2

    .line 707
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 712
    .end local v1           #buffer:[B
    .end local v7           #read:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 713
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v6           #out:Ljava/io/OutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #out:Ljava/io/OutputStream;
    :goto_1
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    if-eqz v3, :cond_0

    .line 716
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 721
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 722
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 730
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return v8

    .line 709
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v1       #buffer:[B
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v7       #read:I
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 710
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 711
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 729
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 730
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 717
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v1           #buffer:[B
    .end local v7           #read:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 718
    .local v4, ioe:Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 723
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 724
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 712
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private enforceKioskModePermission()I
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private forceTerminateKiosk()V
    .locals 2

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .line 467
    .local v0, kioskAdminUid:I
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    .line 468
    return-void
.end method

.method private getActiveKioskAdmin()I
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "blockedHwKeyList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1000
    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1002
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1003
    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1006
    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1013
    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 1014
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1016
    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getDefaultHomeScreen()Ljava/lang/String;
    .locals 5

    .prologue
    .line 739
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 744
    .local v0, cName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 746
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    :cond_0
    const/4 v3, 0x0

    .line 755
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "homePackage"

    .prologue
    .line 829
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 836
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 837
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 838
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 842
    .end local v3           #pkgName:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 836
    .restart local v3       #pkgName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 613
    const/4 v2, 0x0

    .line 615
    :goto_0
    return-object v2

    .line 614
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 615
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initKioskMode(ILjava/lang/String;)I
    .locals 9
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x7d0

    .line 638
    const-string v6, "com.sec.android.kiosk"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "system/kioskdefault.apk"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 641
    .local v1, apkPath:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->copyAssets(Ljava/io/File;)Z

    .line 643
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->installApplicationBySystem(ILjava/lang/String;Z)Z

    move-result v3

    .line 645
    .local v3, isAppInstalled:Z
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 647
    if-nez v3, :cond_4

    .line 670
    .end local v0           #apkFile:Ljava/io/File;
    .end local v1           #apkPath:Ljava/io/File;
    .end local v3           #isAppInstalled:Z
    :cond_0
    :goto_0
    return v4

    .line 652
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 654
    :cond_2
    const/4 v4, -0x3

    goto :goto_0

    .line 657
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, homeActivity:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 664
    .end local v2           #homeActivity:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v8}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 667
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v8}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    move v4, v5

    .line 670
    goto :goto_0
.end method

.method private initializeKeyCodeLists()V
    .locals 7

    .prologue
    .line 1059
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .line 1061
    .local v2, maxKeycode:I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .line 1062
    .local v1, keyCodes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1063
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1066
    .local v3, ret:[Z
    if-eqz v3, :cond_3

    .line 1067
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1068
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1069
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_1

    .line 1070
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1073
    :cond_2
    monitor-exit v5

    .line 1075
    :cond_3
    return-void

    .line 1073
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isHardwareKeyValid(I)Z
    .locals 2
    .parameter "hwKeyId"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchHomeActivity()V
    .locals 2

    .prologue
    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 867
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

.method private registerPackageRemoveReceiver()V
    .locals 6

    .prologue
    .line 477
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 478
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 482
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerTerminationReceiver()V
    .locals 6

    .prologue
    .line 525
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 526
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    .local v1, intentFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 547
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register terminateIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "callingUid"
    .parameter "hwKey"

    .prologue
    .line 972
    const/4 v1, 0x1

    .line 973
    .local v1, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 974
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 976
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 978
    :cond_0
    return v1
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 8
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 982
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 983
    .local v1, ret:Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 984
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 994
    :goto_0
    return v1

    .line 987
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 989
    .local v2, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 991
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "oldHomePackage"
    .parameter "newHomePackage"

    .prologue
    .line 768
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const/4 v4, 0x0

    .line 776
    .local v4, flag:Z
    if-eqz p1, :cond_1

    .line 777
    const-string v11, "com.sec.android.kiosk"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 778
    const/4 v4, 0x1

    .line 780
    :cond_0
    iget-object v11, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 784
    :cond_1
    if-eqz p2, :cond_6

    .line 785
    iget-object v11, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v12, 0x1

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 788
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    .line 791
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v10, v11, -0x1

    .line 795
    .local v10, size:I
    :goto_0
    new-array v2, v10, [Landroid/content/ComponentName;

    .line 796
    .local v2, components:[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_4

    .line 797
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 798
    .local v9, pkgName:Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 799
    .local v0, activity:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v11, "com.sec.android.kiosk"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 796
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 793
    .end local v0           #activity:Ljava/lang/String;
    .end local v2           #components:[Landroid/content/ComponentName;
    .end local v6           #i:I
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v10           #size:I
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .restart local v10       #size:I
    goto :goto_0

    .line 802
    .restart local v0       #activity:Ljava/lang/String;
    .restart local v2       #components:[Landroid/content/ComponentName;
    .restart local v6       #i:I
    .restart local v9       #pkgName:Ljava/lang/String;
    :cond_3
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v2, v6

    goto :goto_2

    .line 805
    .end local v0           #activity:Ljava/lang/String;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, homeActivity:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 807
    const/4 v11, 0x0

    .line 820
    .end local v2           #components:[Landroid/content/ComponentName;
    .end local v5           #homeActivity:Ljava/lang/String;
    .end local v6           #i:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #size:I
    :goto_3
    return v11

    .line 810
    .restart local v2       #components:[Landroid/content/ComponentName;
    .restart local v5       #homeActivity:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #size:I
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v1, component:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 813
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 814
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 816
    iget-object v11, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v12, 0x10

    invoke-virtual {v11, v3, v12, v2, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 820
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #components:[Landroid/content/ComponentName;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v5           #homeActivity:Ljava/lang/String;
    .end local v6           #i:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #size:I
    :cond_6
    const/4 v11, 0x1

    goto :goto_3
.end method

.method private unregisterPackageRemoveReceiver()V
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_0
    return-void
.end method

.method private unregisterTerminationReceiver()V
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 561
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    :cond_0
    return-void
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callingUid"
    .parameter "enabled"
    .parameter "kioskPackage"
    .parameter "defaultPackage"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 853
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 857
    return-void
.end method


# virtual methods
.method public allowHardwareKeys([IZ)[I
    .locals 9
    .parameter "hwKeyId"
    .parameter "allow"

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 937
    .local v0, callingUid:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v7, successList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v1, hwKeyIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_0

    .line 940
    aget v8, p1, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 943
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 944
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 945
    .local v5, keycode:I
    if-nez p2, :cond_2

    .line 946
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 947
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 949
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 950
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 953
    .end local v5           #keycode:I
    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 954
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 955
    .local v6, ret:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_4

    .line 956
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v2

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 957
    :cond_4
    return-object v6
.end method

.method public allowTaskManager(Z)Z
    .locals 9
    .parameter "allow"

    .prologue
    .line 1078
    const/4 v3, 0x1

    .line 1079
    .local v3, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 1080
    .local v1, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1081
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1082
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 1083
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1084
    .local v0, am:Landroid/app/ActivityManager;
    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1085
    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1087
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string v8, "taskManagerEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1090
    return v3
.end method

.method public disableKioskMode()V
    .locals 5

    .prologue
    .line 278
    const-string v3, "KioskModeService"

    const-string v4, "disableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 282
    .local v1, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 283
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 286
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .locals 5
    .parameter "kioskPackage"

    .prologue
    .line 260
    const-string v3, "KioskModeService"

    const-string v4, "enableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 264
    .local v1, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 265
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "package"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 269
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, blockedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1029
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v2

    .line 1031
    if-eqz v2, :cond_0

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1034
    .restart local v0       #blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1035
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v1, blockedListInt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1037
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1038
    .local v4, next:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1039
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1041
    .end local v4           #next:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    .line 930
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .line 320
    .local v0, kioskAdmin:I
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "KIOSKMODE"

    const-string v3, "kioskModeKioskPackage"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .end local v0           #kioskAdmin:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSystemBar(Z)Z
    .locals 9
    .parameter "hide"

    .prologue
    .line 876
    const/4 v3, 0x1

    .line 877
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 879
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v2

    .line 880
    .local v2, oldState:Z
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string v8, "systemBarEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 882
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v1

    .line 883
    .local v1, newState:Z
    if-eq v1, v2, :cond_0

    .line 884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 885
    .local v4, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 886
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    .end local v4           #token:J
    :cond_0
    return v3
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 5
    .parameter "hwKeyId"
    .parameter "showMsg"

    .prologue
    .line 1045
    const/4 v0, 0x1

    .line 1046
    .local v0, allowed:Z
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    #getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    #getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    const/4 v0, 0x0

    .line 1049
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1050
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v1, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v4, 0x10401bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1055
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    return v0
.end method

.method public isKioskModeEnabled()Z
    .locals 7

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "kioskModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 302
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

    .line 303
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    .line 304
    move v1, v2

    .line 308
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isSystemBarHidden()Z
    .locals 7

    .prologue
    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 900
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

    .line 901
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 902
    move v1, v2

    .line 906
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1094
    const/4 v1, 0x1

    .line 1095
    .local v1, allowed:Z
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "taskManagerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1097
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

    .line 1098
    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1099
    const/4 v1, 0x0

    goto :goto_0

    .line 1102
    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 1103
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v2, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v7, 0x10401bf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1108
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 212
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    if-eq v0, v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 242
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    .line 228
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, kioskPackage:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, currentHomePackage:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .end local v0           #currentHomePackage:Ljava/lang/String;
    .end local v1           #kioskPackage:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 206
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 207
    return-void
.end method

.method public wipeRecentTasks()Z
    .locals 4

    .prologue
    .line 920
    const/4 v1, 0x1

    .line 921
    .local v1, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 922
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 923
    .local v2, token:J
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks()Z

    .line 924
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 925
    return v1
.end method

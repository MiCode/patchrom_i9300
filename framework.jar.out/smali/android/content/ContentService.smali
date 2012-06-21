.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 54
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 143
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 144
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 145
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .locals 5

    .prologue
    .line 62
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v2

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 520
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 521
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 522
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 327
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 331
    .local v6, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 496
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 499
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 505
    return-void

    .line 503
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 266
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 269
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 276
    return-void

    .line 274
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v11

    .line 82
    .local v11, identityToken:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_0

    .line 83
    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 88
    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v2, 0x2

    :try_start_2
    new-array v8, v2, [I

    .line 91
    .local v8, counts:[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 92
    .local v9, pidCounts:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 94
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v14, sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 96
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 85
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    .end local v11           #identityToken:J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 98
    .restart local v8       #counts:[I
    .restart local v9       #pidCounts:Landroid/util/SparseIntArray;
    .restart local v10       #i:I
    .restart local v11       #identityToken:J
    .restart local v14       #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    new-instance v2, Landroid/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Landroid/content/ContentService$1;-><init>(Landroid/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 113
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 114
    .local v13, pid:I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 117
    .end local v13           #pid:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 118
    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 120
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    :try_start_6
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    monitor-exit p0

    return-void

    .line 120
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v4, "no permission to read the sync stats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getCurrentSyncs()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 460
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 6
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 362
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 367
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 372
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 374
    :goto_0
    return v3

    .line 372
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 374
    const/4 v3, -0x1

    goto :goto_0

    .line 372
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .locals 6

    .prologue
    .line 393
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 397
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 398
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 402
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 404
    :goto_0
    return v3

    .line 402
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 404
    const/4 v3, 0x0

    goto :goto_0

    .line 402
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to read the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 357
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 288
    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 290
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 295
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 299
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 300
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 305
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 307
    :goto_0
    return v3

    .line 305
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 307
    const/4 v3, 0x0

    goto :goto_0

    .line 305
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 465
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 469
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 470
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 475
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 477
    :goto_0
    return-object v3

    .line 475
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 477
    const/4 v3, 0x0

    goto :goto_0

    .line 475
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 438
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 443
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 448
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 450
    :goto_0
    return v3

    .line 448
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 450
    const/4 v3, 0x0

    goto :goto_0

    .line 448
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 481
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 486
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 490
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 492
    :goto_0
    return v3

    .line 490
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 492
    const/4 v3, 0x0

    goto :goto_0

    .line 490
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 20
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 172
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", syncToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v10

    .line 180
    .local v10, identityToken:J
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v6, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 184
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 186
    .local v14, numCalls:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v14, :cond_4

    .line 187
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentService$ObserverCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .local v16, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_3
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    invoke-interface {v1, v2}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 190
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "update at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 184
    .end local v9           #i:I
    .end local v14           #numCalls:I
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    .end local v6           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1

    .line 193
    .restart local v6       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v9       #i:I
    .restart local v14       #numCalls:I
    .restart local v16       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_0
    move-exception v8

    .line 194
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 195
    :try_start_7
    const-string v1, "ContentService"

    const-string v3, "Found dead observer, removing"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 197
    .local v7, binder:Landroid/os/IBinder;
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v13

    .line 199
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 200
    .local v15, numList:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    if-ge v12, v15, :cond_3

    .line 201
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 202
    .local v17, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, v7, :cond_2

    .line 203
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    add-int/lit8 v12, v12, -0x1

    .line 205
    add-int/lit8 v15, v15, -0x1

    .line 200
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 208
    .end local v17           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    monitor-exit v2

    goto :goto_1

    .end local v7           #binder:Landroid/os/IBinder;
    .end local v12           #j:I
    .end local v13           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v15           #numList:I
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 211
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_4
    if-eqz p4, :cond_5

    .line 212
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v18

    .line 213
    .local v18, syncManager:Landroid/content/SyncManager;
    if-eqz v18, :cond_5

    .line 214
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 218
    .end local v18           #syncManager:Landroid/content/SyncManager;
    :cond_5
    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 220
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 135
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 8
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 149
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v7, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v7

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v4, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V

    .line 157
    monitor-exit v7

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 339
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 343
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 347
    return-void

    .line 345
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 508
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 511
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 517
    return-void

    .line 515
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 242
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 245
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 247
    .local v7, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 248
    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_0

    .line 249
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 255
    return-void

    .line 253
    .end local v0           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    .line 378
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 382
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 383
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 390
    return-void

    .line 388
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 10
    .parameter "flag"

    .prologue
    .line 408
    iget-object v7, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v9, "no permission to write the sync settings"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 412
    .local v0, edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    iget-object v7, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 413
    .local v6, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 414
    if-eqz v6, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v4

    .line 416
    .local v4, rp:Landroid/sec/enterprise/RoamingPolicy;
    if-eqz v4, :cond_0

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 417
    const/4 p1, 0x0

    .line 420
    .end local v4           #rp:Landroid/sec/enterprise/RoamingPolicy;
    :cond_0
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 421
    .local v3, restPol:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 435
    .end local v3           #restPol:Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 428
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v5

    .line 429
    .local v5, syncManager:Landroid/content/SyncManager;
    if-eqz v5, :cond_2

    .line 430
    invoke-virtual {v5}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_2
    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v5           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v7

    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 311
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 316
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 323
    return-void

    .line 321
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$1;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;,
        Landroid/widget/ActivityChooserModel$HistoryPersister;,
        Landroid/widget/ActivityChooserModel$HistoryLoader;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 364
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 256
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 276
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 281
    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 291
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 310
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 372
    :goto_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 373
    return-void

    .line 370
    :cond_0
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ActivityChooserModel;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    return-void
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 3
    .parameter "historicalRecord"

    .prologue
    .line 694
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 696
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 697
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 698
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 699
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalData()V

    .line 700
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 702
    :cond_0
    monitor-exit v2

    return v0

    .line 703
    .end local v0           #added:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .locals 3
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    .line 347
    sget-object v2, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel;

    .line 349
    .local v0, dataModel:Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/widget/ActivityChooserModel;

    .end local v0           #dataModel:Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    .restart local v0       #dataModel:Landroid/widget/ActivityChooserModel;
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    invoke-direct {v0}, Landroid/widget/ActivityChooserModel;->readHistoricalData()V

    .line 354
    monitor-exit v2

    return-object v0

    .line 355
    .end local v0           #dataModel:Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadActivitiesLocked()V
    .locals 13

    .prologue
    .line 728
    iget-object v10, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 729
    iget-object v10, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v10, :cond_5

    .line 730
    iget-object v10, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 732
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 733
    .local v6, resolveInfoCount:I
    const/4 v9, 0x0

    .line 735
    .local v9, strFilters:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_FilterExtraPackage"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 736
    iget-object v10, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const-string v11, "FILTEREXTRAPACKAGE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 739
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 740
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 742
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_FilterExtraPackage"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 743
    if-eqz v9, :cond_3

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, bFiltering:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v8, v0, v3

    .line 746
    .local v8, str:Ljava/lang/String;
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 747
    const/4 v1, 0x1

    .line 751
    .end local v8           #str:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 739
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bFiltering:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #bFiltering:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v8       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 756
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bFiltering:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v11, p0, v5}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 758
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 762
    .end local v2           #i:I
    .end local v6           #resolveInfoCount:I
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #strFilters:[Ljava/lang/String;
    :goto_3
    return-void

    .line 760
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    goto :goto_3
.end method

.method private persistHistoricalData()V
    .locals 4

    .prologue
    .line 587
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 591
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 592
    monitor-exit v1

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 596
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/widget/ActivityChooserModel$HistoryPersister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActivityChooserModel$HistoryPersister;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 599
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsLocked()V
    .locals 5

    .prologue
    .line 710
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 711
    .local v0, choiceRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v2, v3, v4

    .line 712
    .local v2, pruneCount:I
    if-gtz v2, :cond_1

    .line 722
    :cond_0
    return-void

    .line 715
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 716
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 717
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 770
    const/4 v4, 0x0

    .line 772
    .local v4, recordsRemoved:Z
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 773
    .local v1, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 774
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 775
    .local v0, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v5, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, recordPackageName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 777
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 778
    const/4 v4, 0x1

    .line 773
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    .end local v0           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v3           #recordPackageName:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 783
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 784
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 786
    :cond_2
    return-void
.end method

.method private readHistoricalData()V
    .locals 4

    .prologue
    .line 565
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 567
    :cond_0
    monitor-exit v1

    .line 575
    :goto_0
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 571
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/widget/ActivityChooserModel$HistoryLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActivityChooserModel$HistoryLoader;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 574
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sortActivities()V
    .locals 5

    .prologue
    .line 626
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 630
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 632
    :cond_0
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 9
    .parameter "index"

    .prologue
    .line 469
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 471
    .local v2, chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v3, chosenName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    .local v0, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 478
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_0

    .line 480
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 481
    .local v1, choiceIntentCopy:Landroid/content/Intent;
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 483
    .local v4, handled:Z
    if-eqz v4, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 492
    .end local v0           #choiceIntent:Landroid/content/Intent;
    .end local v1           #choiceIntentCopy:Landroid/content/Intent;
    .end local v4           #handled:Z
    :goto_0
    return-object v0

    .line 488
    .restart local v0       #choiceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/high16 v8, 0x3f80

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 490
    .local v5, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 683
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 684
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 685
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 427
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 440
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 441
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 442
    .local v1, activityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 443
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 444
    .local v2, currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 448
    .end local v2           #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3           #i:I
    :goto_1
    return v3

    .line 442
    .restart local v2       #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    .end local v2           #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 514
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 519
    :goto_0
    return-object v0

    .line 518
    :cond_0
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 665
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 676
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .parameter "activitySorter"

    .prologue
    .line 610
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_0

    .line 612
    monitor-exit v1

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 615
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 616
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 533
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 534
    .local v2, newDefaultActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 537
    .local v3, oldDefaultActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    .line 539
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a0

    add-float v4, v5, v6

    .line 545
    .local v4, weight:F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v0, defaultName:Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 550
    .local v1, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 551
    return-void

    .line 542
    .end local v0           #defaultName:Landroid/content/ComponentName;
    .end local v1           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4           #weight:F
    :cond_0
    const/high16 v4, 0x3f80

    .restart local v4       #weight:F
    goto :goto_0
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .parameter "historyMaxSize"

    .prologue
    .line 649
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    .line 651
    monitor-exit v1

    .line 657
    :goto_0
    return-void

    .line 653
    :cond_0
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 654
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 655
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 656
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 385
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 387
    monitor-exit v1

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 390
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V

    .line 391
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 501
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 502
    return-void
.end method

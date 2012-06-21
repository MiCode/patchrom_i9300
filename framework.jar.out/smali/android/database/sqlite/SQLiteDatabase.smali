.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_SQL:Ljava/lang/String; = "BEGIN;"

.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final DEFAULT_SQL_CACHE_SIZE:I = 0x19

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ENABLE_DB_SAMPLE:Z = false

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WAIT_PERIOD:J = 0x4L

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field private static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final bench_dbs:[Ljava/lang/String;

.field private static final bypass_dbs:[Ljava/lang/String;

.field private static mActiveDatabases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final preload_dbs:[Ljava/lang/String;

.field private static sBlockSize:I

.field private static sQueryLogTimeInMillis:I

.field private static final wal_dbs:[Ljava/lang/String;


# instance fields
.field private mCacheFullWarning:Z

.field private final mClosedStatementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompiledQueries:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectionNum:S

.field volatile mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

.field private final mCustomFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mFlags:I

.field private volatile mHasAttachedDbs:Z

.field private mInnerTransactionIsSuccessful:Z

.field private mIsPreloadDatabase:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field volatile mNativeHandle:I

.field mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private final mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mStackTrace:Ljava/lang/Throwable;

.field private mTransStartTime:J

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mTransactionUsingExecSql:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v2

    const-string v3, " OR ROLLBACK "

    aput-object v3, v0, v1

    const-string v3, " OR ABORT "

    aput-object v3, v0, v5

    const-string v3, " OR FAIL "

    aput-object v3, v0, v6

    const-string v3, " OR IGNORE "

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, " OR REPLACE "

    aput-object v4, v0, v3

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 217
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 230
    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 261
    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    .line 343
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "webview.db"

    aput-object v3, v0, v2

    const-string/jumbo v3, "webviewCache.db"

    aput-object v3, v0, v1

    const-string/jumbo v3, "internal.db"

    aput-object v3, v0, v5

    const-string v3, "external.db"

    aput-object v3, v0, v6

    const-string/jumbo v3, "settings.db"

    aput-object v3, v0, v7

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->wal_dbs:[Ljava/lang/String;

    .line 346
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "browser.db"

    aput-object v3, v0, v2

    const-string v3, "calendar.db"

    aput-object v3, v0, v1

    const-string/jumbo v3, "telephony.db"

    aput-object v3, v0, v5

    const-string/jumbo v3, "launcher.db"

    aput-object v3, v0, v6

    const-string/jumbo v3, "user_dict.db"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "downloads.db"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "mmssms.db"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "EmailProvider.db"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "EmailProviderBody.db"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "btopp.db"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "picasa.db"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "alarms.db"

    aput-object v4, v0, v3

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->preload_dbs:[Ljava/lang/String;

    .line 353
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "/data/data/com.aurorasoftworks.quadrant.ui.professional/databases/quadrant.db"

    aput-object v3, v0, v2

    const-string v3, "/data/data/com.aurorasoftworks.quadrant.ui.advanced/databases/quadrant.db"

    aput-object v3, v0, v1

    const-string v3, "/data/data/com.redlicense.benchmark.sqlite/databases/rlbencmark.db"

    aput-object v3, v0, v5

    const-string v3, "/data/data/com.samsung.spe.sqlitechecker/databases/quadrant.db"

    aput-object v3, v0, v6

    const-string v3, "/data/data/com.samsung.spe.sqlitechecker/databases/rlbencmark.db"

    aput-object v3, v0, v7

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->bench_dbs:[Ljava/lang/String;

    .line 360
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "contacts2.db"

    aput-object v3, v0, v2

    const-string/jumbo v2, "profile.db"

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->bypass_dbs:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 67
    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V
    .locals 7
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2057
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 200
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-direct {v1, v6}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;-><init>(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    .line 202
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 203
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 219
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 234
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 237
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 255
    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 267
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    .line 320
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 332
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 337
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 363
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsPreloadDatabase:Z

    .line 406
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 1348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    .line 2058
    if-nez p1, :cond_0

    .line 2059
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2061
    :cond_0
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 2062
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 2063
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 2064
    new-instance v1, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 2065
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2066
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 2069
    if-nez p4, :cond_1

    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    .end local p4
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    :cond_1
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2070
    iput-short p5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    .line 2077
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit8 v0, v1, 0x4

    .line 2079
    .local v0, limit:I
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->native_setSqliteSoftHeapLimit(I)V

    .line 2080
    return-void
.end method

.method public static backupDatabase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 2585
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->native_backup(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 5
    .parameter "transactionListener"
    .parameter "exclusive"

    .prologue
    const/4 v4, 0x1

    .line 662
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 663
    const-string v3, "BEGIN;"

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->lockForced(Ljava/lang/String;)V

    .line 664
    const/4 v2, 0x0

    .line 667
    .local v2, ok:Z
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 668
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_1

    .line 669
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 671
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "SQLiteDatabase"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_0

    .line 703
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    :cond_0
    throw v3

    .line 675
    :cond_1
    const/4 v2, 0x1

    .line 700
    if-nez v2, :cond_2

    .line 703
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 706
    :cond_2
    :goto_0
    return-void

    .line 681
    :cond_3
    if-eqz p2, :cond_5

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v3, :cond_5

    .line 682
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransStartTime:J

    .line 687
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 688
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 689
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    if-eqz p1, :cond_4

    .line 692
    :try_start_2
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 698
    :cond_4
    const/4 v2, 0x1

    .line 700
    if-nez v2, :cond_2

    .line 703
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_0

    .line 684
    :cond_5
    :try_start_3
    const-string v3, "BEGIN IMMEDIATE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private checkBenchmarkDB(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 1000
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->bench_dbs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1001
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1002
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsPreloadDatabase:Z

    .line 1006
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 1000
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkBypassDB(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 1010
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->bypass_dbs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1011
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1012
    const/4 v4, 0x1

    .line 1015
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 1010
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkLockHoldTime()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 530
    .local v0, elapsedTime:J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 531
    .local v2, lockedTime:J
    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    const-string v6, "SQLiteDatabase"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 537
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 539
    .local v5, threadTime:I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_2

    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 541
    :cond_2
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, msg:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_3

    .line 545
    const-string v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 547
    :cond_3
    const-string v6, "SQLiteDatabase"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPreloadDB(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 990
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->preload_dbs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 991
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 992
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsPreloadDatabase:Z

    .line 996
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 990
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkWalDB(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 980
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->wal_dbs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 981
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 982
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsPreloadDatabase:Z

    .line 986
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 980
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private closeClosable()V
    .locals 4

    .prologue
    .line 1247
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 1249
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1250
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1252
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 1253
    .local v2, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_0

    .line 1254
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0

    .line 1257
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2           #program:Landroid/database/sqlite/SQLiteClosable;
    :cond_1
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "factory"

    .prologue
    .line 1201
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method public static deleteDatabaseFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 2820
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2821
    .local v0, fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2823
    .local v1, ret:Z
    if-eqz v1, :cond_2

    .line 2824
    new-instance v0, Ljava/io/File;

    .end local v0           #fi:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2825
    .restart local v0       #fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2826
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2828
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #fi:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2829
    .restart local v0       #fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2830
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2832
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #fi:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2833
    .restart local v0       #fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2834
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2837
    :cond_2
    return v1
.end method

.method private native enableSqlProfiling(Ljava/lang/String;S)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;S)V
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2014
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2015
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 2016
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 2018
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    .local v1, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2025
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v2

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 2023
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tables"

    .prologue
    const/4 v3, 0x0

    .line 1457
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1459
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1460
    .local v1, spacepos:I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1462
    .local v0, commapos:I
    if-lez v1, :cond_2

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_2

    .line 1463
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1467
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 1464
    .restart local p0
    :cond_2
    if-lez v0, :cond_1

    if-lt v0, v1, :cond_3

    if-gez v1, :cond_1

    .line 1465
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1469
    .end local v0           #commapos:I
    .end local v1           #spacepos:I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getCacheHitNum()I
    .locals 1

    .prologue
    .line 2343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCacheMissNum()I
    .locals 1

    .prologue
    .line 2347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCachesize()I
    .locals 1

    .prologue
    .line 2351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2595
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v22, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2600
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 2601
    .local v32, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2602
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/ref/WeakReference;

    .line 2603
    .local v33, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/database/sqlite/SQLiteDatabase;

    .line 2604
    .local v21, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2610
    :try_start_1
    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v8

    .line 2613
    .local v8, lookasideUsed:I
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 2614
    .local v31, path:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 2615
    .local v27, indx:I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_3

    add-int/lit8 v27, v27, 0x1

    move/from16 v2, v27

    :goto_1
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 2618
    .local v28, lastnode:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v19

    .line 2619
    .local v19, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v19, :cond_0

    .line 2622
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_6

    .line 2623
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Pair;

    .line 2624
    .local v29, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".page_count;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 2630
    .local v4, pageCount:J
    if-nez v23, :cond_4

    .line 2631
    move-object/from16 v3, v28

    .line 2642
    .local v3, dbName:Ljava/lang/String;
    :cond_1
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 2643
    new-instance v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v6

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v9

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v10

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2622
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2601
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #i:I
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31           #path:Ljava/lang/String;
    .end local v32           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2615
    .restart local v8       #lookasideUsed:I
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27       #indx:I
    .restart local v31       #path:Ljava/lang/String;
    .restart local v32       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .restart local v33       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2634
    .restart local v4       #pageCount:J
    .restart local v19       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v23       #i:I
    .restart local v28       #lastnode:Ljava/lang/String;
    .restart local v29       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x0

    .line 2635
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (attached) "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2637
    .restart local v3       #dbName:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2638
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 2639
    .local v26, idx:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, -0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_5

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 2651
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v26           #idx:I
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    move-object/from16 v20, v0

    .line 2652
    .local v20, connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    if-eqz v20, :cond_0

    .line 2653
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/DatabaseConnectionPool;->getConnectionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/database/sqlite/SQLiteDatabase;

    .line 2654
    .local v30, pDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/sqlite/SQLiteDebug$DbStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(pooled # "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget-short v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v16

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v17

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v18

    invoke-direct/range {v9 .. v18}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 2659
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20           #connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    .end local v23           #i:I
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v30           #pDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v31           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 2664
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_7
    return-object v22
.end method

.method private declared-synchronized getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 2531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2182
    :goto_0
    return-object v0

    .line 2174
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2175
    const/4 v0, 0x0

    goto :goto_0

    .line 2177
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2178
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2182
    :goto_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 2180
    :cond_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private isPooledConnection()Z
    .locals 1

    .prologue
    .line 2535
    iget-short v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lock(Ljava/lang/String;Z)V
    .locals 7
    .parameter "sql"
    .parameter "forced"

    .prologue
    .line 433
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const-string v3, "SQLiteDatabase"

    const-string v4, "don\'t lock() while in a synchronized method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 437
    if-nez p2, :cond_2

    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v3, :cond_2

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    const/4 v0, 0x0

    .line 439
    .local v0, done:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 440
    .local v1, timeStart:J
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 443
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 444
    if-nez v0, :cond_3

    .line 447
    const-string v3, "SQLiteDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database lock has not been available for 4 sec. Current Owner of the lock is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getOwnerDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Continuing to wait in thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v3

    goto :goto_1

    .line 455
    :cond_4
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v3, :cond_5

    .line 456
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 459
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 462
    :cond_5
    if-eqz p1, :cond_1

    goto :goto_0
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 491
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 492
    return-void
.end method

.method private lockForced(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 496
    return-void
.end method

.method private logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .parameter "sql"
    .parameter "beginMillis"
    .parameter "prefix"

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 2122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 2123
    .local v1, durationMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2128
    :cond_0
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_1

    .line 2129
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2131
    :cond_1
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_6

    .line 2132
    const/16 v3, 0x64

    .line 2140
    .local v3, samplePercent:I
    :cond_2
    if-eqz p4, :cond_3

    .line 2141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2143
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2153
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, blockingPackage:Ljava/lang/String;
    if-nez v0, :cond_5

    const-string v0, ""

    .line 2156
    :cond_5
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 2134
    .end local v0           #blockingPackage:Ljava/lang/String;
    .end local v3           #samplePercent:I
    :cond_6
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 2135
    .restart local v3       #samplePercent:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2

    goto :goto_0
.end method

.method private native native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I
.end method

.method private static native native_backup(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_finalize(I)V
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_releaseCustomFunction(I)V
.end method

.method private native native_setLocale(Ljava/lang/String;I)V
.end method

.method private native native_setSqliteSoftHeapLimit(I)V
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    .line 1051
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"

    .prologue
    .line 1075
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1079
    .local v0, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    sget v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    if-nez v1, :cond_0

    .line 1082
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 1084
    :cond_0
    sget v1, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    .line 1086
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->checkWalDB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 1110
    :cond_1
    :goto_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1111
    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    return-object v0

    .line 1092
    :cond_2
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->checkPreloadDB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1094
    const-string v1, "TRUNCATE"

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_3
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->checkBenchmarkDB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_0

    .line 1102
    :cond_4
    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->checkBypassDB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    const-string v1, "TRUNCATE"

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    .line 1118
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V

    .line 1120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opening the db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    invoke-direct {v0, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 1126
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_1

    .line 1127
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;S)V

    .line 1129
    :cond_1
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_2

    .line 1130
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;S)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1135
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    return-object v0

    .line 1133
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 1134
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, v0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1135
    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 1136
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v6

    .line 1137
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    const-string v2, "Failed to open the database. closing it."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1139
    throw v6
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "file"
    .parameter "factory"

    .prologue
    .line 1147
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"

    .prologue
    .line 1154
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"
    .parameter "errorHandler"

    .prologue
    .line 1162
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private releaseCustomFunctions()V
    .locals 4

    .prologue
    .line 1338
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1339
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1340
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1341
    .local v0, function:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->native_releaseCustomFunction(I)V

    .line 1339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1343
    .end local v0           #function:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1344
    monitor-exit v3

    .line 1345
    return-void

    .line 1344
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2570
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_1

    .line 2580
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2574
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2575
    :cond_2
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2576
    :cond_3
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseDbConnection threadid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", releasing # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->release(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public static native releaseMemory()I
.end method

.method public static renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2807
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v0, fi:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2810
    new-instance v0, Ljava/io/File;

    .end local v0           #fi:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2811
    .restart local v0       #fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2812
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2814
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #fi:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2815
    .restart local v0       #fi:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2816
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2817
    :cond_1
    return-void
.end method

.method private setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "dbPath"
    .parameter "mode"

    .prologue
    .line 1168
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA journal_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting journal_mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed for db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (on pragma set journal_mode, sqlite returned:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSynchronousMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "dbPath"
    .parameter "mode"

    .prologue
    .line 1181
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA synchronous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1185
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private set_wal_checkpoint(Ljava/lang/String;I)V
    .locals 5
    .parameter "path"
    .parameter "value"

    .prologue
    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, cmp:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting wal_autocheckpoint to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed for db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (on pragma wal_autocheckpoint, sqlite returned:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    return-void
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 519
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 521
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    .line 525
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 10
    .parameter "checkFullyYielded"
    .parameter "sleepAfterYieldDelay"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 911
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 915
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 916
    const/4 v4, 0x0

    .line 946
    :goto_0
    return v4

    .line 918
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 919
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 920
    .local v3, transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 921
    if-eqz p1, :cond_1

    .line 922
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    :cond_1
    cmp-long v4, p2, v8

    if-lez v4, :cond_3

    .line 931
    move-wide v1, p2

    .line 932
    .local v1, remainingDelay:J
    :cond_2
    cmp-long v4, v1, v8

    if-lez v4, :cond_3

    .line 934
    cmp-long v4, v1, v6

    if-gez v4, :cond_4

    move-wide v4, v1

    :goto_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_2
    sub-long/2addr v1, v6

    .line 940
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_2

    .line 945
    .end local v1           #remainingDelay:J
    :cond_3
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 946
    const/4 v4, 0x1

    goto :goto_0

    .restart local v1       #remainingDelay:J
    :cond_4
    move-wide v4, v6

    .line 934
    goto :goto_1

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .parameter "name"
    .parameter "numArgs"
    .parameter "function"

    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1326
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1327
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I

    move-result v0

    .line 1328
    .local v0, ref:I
    if-eqz v0, :cond_0

    .line 1330
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    monitor-exit v2

    .line 1335
    return-void

    .line 1332
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to add custom function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    .end local v0           #ref:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 2
    .parameter "closable"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 7
    .parameter "sql"
    .parameter "compiledStatement"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2237
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2268
    :goto_0
    monitor-exit p0

    return-void

    .line 2241
    :cond_0
    :try_start_1
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    .line 2244
    .local v1, maxCacheSz:I
    :goto_1
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v5, :cond_6

    .line 2245
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 2249
    .local v2, printWarning:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_6

    .line 2254
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use setMaxSqlCacheSize() to increase cachesize. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    .line 2257
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Here are the SQL statements in Cache of database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2259
    .local v3, s:Ljava/lang/String;
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sql statement in Cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2237
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxCacheSz:I
    .end local v2           #printWarning:Z
    .end local v3           #s:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2241
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    goto/16 :goto_1

    .restart local v1       #maxCacheSz:I
    :cond_3
    move v2, v4

    .line 2245
    goto/16 :goto_2

    :cond_4
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-eq v5, v1, :cond_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    .line 2267
    :cond_6
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized amIInTransaction()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 839
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 840
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_3

    .line 842
    .local v0, b:Z
    :cond_0
    :goto_1
    const-string v2, "SQLiteDatabase"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amIinTransaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :cond_1
    monitor-exit p0

    return v0

    .end local v0           #b:Z
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    move-object v1, p0

    .line 839
    goto :goto_0

    .line 840
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_1
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 839
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 575
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 576
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    .prologue
    .line 599
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 600
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .parameter "transactionListener"

    .prologue
    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 629
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .parameter "transactionListener"

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 658
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 1208
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1211
    :cond_0
    const-string v0, "SQLiteDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (connection # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1218
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1235
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 1221
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1223
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1224
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V

    .line 1226
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    .line 1227
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_5

    .line 1228
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1229
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 1230
    :cond_3
    :try_start_2
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1235
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0
.end method

.method closeDatabase()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 1264
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteUnfinalizedObjectsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v1

    .line 1266
    .local v1, e:Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1267
    .local v5, msg:Ljava/lang/String;
    const-string v9, ","

    const/4 v10, 0x2

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1268
    .local v8, tokens:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1270
    .local v7, stmtId:I
    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1271
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1272
    .local v3, found:Z
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1273
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1274
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteClosable;

    .line 1275
    .local v6, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v6, :cond_1

    instance-of v9, v6, Landroid/database/sqlite/SQLiteProgram;

    if-eqz v9, :cond_1

    .line 1276
    check-cast v6, Landroid/database/sqlite/SQLiteProgram;

    .end local v6           #program:Landroid/database/sqlite/SQLiteClosable;
    iget-object v0, v6, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 1277
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    iget v9, v0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-ne v9, v7, :cond_1

    .line 1278
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1279
    const/4 v3, 0x1

    goto :goto_1

    .line 1283
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 1286
    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1287
    const-string v9, "SQLiteDatabase"

    const-string/jumbo v10, "this shouldn\'t happen. finalizing the statement now: "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1290
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    goto :goto_0

    .line 1294
    :cond_3
    new-instance v9, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close() on database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed due to un-close()d SQL statements: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method closePendingStatements()V
    .locals 5

    .prologue
    .line 2380
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2382
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2397
    :cond_0
    return-void

    .line 2385
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 2387
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2388
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2389
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2390
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2391
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2394
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2395
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->native_finalize(I)V

    .line 2394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2391
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1489
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "connectionNum"

    .prologue
    .line 2525
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2526
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iput-object p0, v0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 2527
    return-object v0
.end method

.method declared-synchronized deallocCachedSqlStatements()V
    .locals 3

    .prologue
    .line 2272
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2273
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2272
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2275
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2276
    monitor-exit p0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1859
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1862
    .local v1, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1867
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v2

    .line 1859
    .end local v1           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 1863
    .restart local v1       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v0

    .line 1864
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1865
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1867
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public disableWriteAheadLogging()V
    .locals 2

    .prologue
    .line 2489
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2491
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2498
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2500
    :goto_0
    return-void

    .line 2494
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V

    .line 2495
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, "TRUNCATE"

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2498
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public enableWriteAheadLogging()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2450
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2478
    :goto_0
    return v0

    .line 2454
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2456
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2478
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    goto :goto_0

    .line 2460
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v3, ":memory:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2461
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2478
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 2467
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-eqz v2, :cond_4

    .line 2468
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2469
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2478
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 2474
    :cond_4
    :try_start_3
    new-instance v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/DatabaseConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 2475
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, "WAL"

    invoke-direct {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2478
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public endTransaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 713
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 715
    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v2, :cond_0

    .line 716
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 720
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 768
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 769
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 775
    :goto_1
    return-void

    .line 718
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v2

    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 769
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    throw v2

    .line 723
    :cond_1
    const/4 v1, 0x0

    .line 724
    .local v1, savedException:Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 726
    :try_start_3
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_4

    .line 727
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 736
    :cond_2
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_5

    .line 737
    const-string v2, "COMMIT;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsPreloadDatabase:Z

    if-nez v2, :cond_3

    .line 745
    const-string v2, "PRAGMA wal_checkpoint;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 746
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v2, :cond_3

    .line 747
    const-string v2, "SQLiteDatabase"

    const-string v3, "PRAGMA wal_Checkpoint done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 768
    :cond_3
    :goto_3
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 769
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 729
    :cond_4
    :try_start_5
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 733
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 756
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5
    :try_start_7
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 757
    if-eqz v1, :cond_3

    .line 758
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 760
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1960
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1961
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2007
    if-nez p2, :cond_0

    .line 2008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2011
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2032
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2035
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 2036
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 2037
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2042
    return-void

    .line 2040
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finalizeStatementLater(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 2355
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2366
    :goto_0
    return-void

    .line 2359
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2360
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    monitor-exit v1

    goto :goto_0

    .line 2365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2364
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2675
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2709
    :cond_0
    :goto_0
    return-object v0

    .line 2678
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2679
    .local v0, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-nez v2, :cond_2

    .line 2689
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2693
    :cond_2
    const/4 v1, 0x0

    .line 2695
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2696
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2702
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2705
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 2706
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 2705
    :cond_4
    if-eqz v1, :cond_0

    .line 2706
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method declared-synchronized getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .locals 1
    .parameter "sql"

    .prologue
    .line 2283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "sql"

    .prologue
    .line 2503
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2520
    .end local p0
    :goto_0
    return-object p0

    .line 2516
    .restart local p0
    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0

    .line 2520
    :cond_1
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0
.end method

.method getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "sql"

    .prologue
    .line 2539
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2551
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_0

    .line 2555
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2556
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2557
    :cond_2
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0
.end method

.method declared-synchronized getLastSqlStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 4

    .prologue
    .line 1378
    const-string v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1379
    .local v0, pageCount:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .locals 2

    .prologue
    .line 1407
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getQueuedUpStmtList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2403
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 954
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 1360
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 1712
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1715
    :goto_0
    return-wide v1

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 11
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1810
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1811
    .local v7, sql:Ljava/lang/StringBuilder;
    const-string v9, "INSERT"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    const-string v9, " INTO "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1817
    const/4 v0, 0x0

    .line 1818
    .local v0, bindArgs:[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1819
    .local v6, size:I
    :goto_0
    if-lez v6, :cond_4

    .line 1820
    new-array v0, v6, [Ljava/lang/Object;

    .line 1821
    const/4 v3, 0x0

    .line 1822
    .local v3, i:I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1823
    .local v1, colName:Ljava/lang/String;
    if-lez v3, :cond_1

    const-string v9, ","

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 1818
    .end local v1           #colName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #size:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1823
    .restart local v1       #colName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #size:I
    :cond_1
    const-string v9, ""

    goto :goto_2

    .line 1827
    .end local v1           #colName:Ljava/lang/String;
    :cond_2
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1828
    const-string v9, " VALUES ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_5

    .line 1830
    if-lez v3, :cond_3

    const-string v9, ",?"

    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1830
    :cond_3
    const-string v9, "?"

    goto :goto_4

    .line 1833
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") VALUES (NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    :cond_5
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1837
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    .local v8, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 1844
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v9

    .line 1840
    :catch_0
    move-exception v2

    .line 1841
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1842
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1844
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v9
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 9

    .prologue
    .line 2726
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2727
    const/4 v0, 0x0

    .line 2729
    .local v0, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2730
    if-nez v0, :cond_0

    .line 2731
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "databaselist for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " couldn\'t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "be retrieved. probably because the database is closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :catch_0
    move-exception v1

    .line 2736
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2737
    .restart local v0       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "main"

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2739
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 2740
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2741
    .local v3, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2743
    .local v4, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".integrity_check(1);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2744
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v5

    .line 2745
    .local v5, rslt:Ljava/lang/String;
    const-string/jumbo v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2747
    const-string v7, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA integrity_check on "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " returned: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2748
    const/4 v6, 0x0

    .line 2751
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2754
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v5           #rslt:Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 2751
    .restart local v3       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v5       #rslt:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2739
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2751
    .end local v5           #rslt:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6

    .line 2754
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    :cond_5
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInQueueOfStatementsToBeFinalized(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 2369
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2372
    const/4 v0, 0x1

    .line 2375
    :goto_0
    return v0

    .line 2374
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2375
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized isInStatementCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "sql"

    .prologue
    .line 2328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 2094
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2087
    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lock()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 427
    return-void
.end method

.method lock(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 423
    return-void
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 0
    .parameter "sql"
    .parameter "beginMillis"

    .prologue
    .line 2114
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "table"
    .parameter "deletedTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1432
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1448
    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .parameter "newVersion"

    .prologue
    .line 2098
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 381
    :cond_0
    return-void
.end method

.method onCorruption()V
    .locals 2

    .prologue
    .line 409
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 410
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 411
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 1606
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1644
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1526
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1566
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1567
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1570
    .local v8, sql:Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 1659
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"

    .prologue
    .line 1677
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1678
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1680
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1681
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, v1, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    .local v2, driver:Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v0, 0x0

    .line 1685
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    :try_start_0
    invoke-interface {v2, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1689
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1691
    return-object v0

    .line 1685
    .restart local p1
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1689
    .end local p1
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method declared-synchronized releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 1
    .parameter "sql"
    .parameter "compiledSql"

    .prologue
    .line 2333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2335
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    :goto_0
    monitor-exit p0

    return-void

    .line 2338
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 1
    .parameter "closable"

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 1758
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1762
    :goto_0
    return-wide v1

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1784
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized resetTransactionUsingExecSqlFlag()V
    .locals 2

    .prologue
    .line 813
    monitor-enter p0

    :try_start_0
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'commit or end or rollback\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLastSqlStatement(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 2193
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v2, :cond_1

    .line 2194
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale_(Ljava/util/Locale;)V

    .line 2201
    :cond_0
    return-void

    .line 2196
    :cond_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v2}, Landroid/database/sqlite/DatabaseConnectionPool;->getConnectionListForWal()Ljava/util/ArrayList;

    move-result-object v0

    .line 2197
    .local v0, connectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale_(Ljava/util/Locale;)V

    .line 2197
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setLocale_(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 2204
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2206
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2210
    return-void

    .line 2208
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .parameter "lockingEnabled"

    .prologue
    .line 399
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 400
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 6
    .parameter "cacheSize"

    .prologue
    .line 2301
    monitor-enter p0

    .line 2302
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2303
    .local v2, oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    const/16 v3, 0x64

    if-gt p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 2304
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "expected value between 0 and 100"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2324
    .end local v2           #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2306
    .restart local v2       #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 2307
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2310
    :cond_2
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, p0, p1}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2318
    if-eqz v2, :cond_3

    .line 2320
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2321
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2324
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    return-void
.end method

.method public setMaximumSize(J)J
    .locals 10
    .parameter "numBytes"

    .prologue
    .line 1390
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1391
    .local v4, pageSize:J
    div-long v2, p1, v4

    .line 1393
    .local v2, numPages:J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1394
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1396
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1398
    .local v0, newPageCount:J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1419
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 788
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_1

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 796
    return-void
.end method

.method declared-synchronized setTransactionUsingExecSqlFlag()V
    .locals 2

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'begin transaction\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 504
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 505
    :cond_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 507
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 510
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1882
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 13
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1898
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 1899
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Empty values"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1902
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1903
    .local v9, sql:Ljava/lang/StringBuilder;
    const-string v11, "UPDATE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    sget-object v11, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    const-string v11, " SET "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    .line 1910
    .local v8, setValuesSize:I
    if-nez p4, :cond_2

    move v2, v8

    .line 1911
    .local v2, bindArgsSize:I
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 1912
    .local v1, bindArgs:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1913
    .local v5, i:I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1914
    .local v3, colName:Ljava/lang/String;
    if-lez v5, :cond_3

    const-string v11, ","

    :goto_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 1917
    const-string v11, "=?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 1910
    .end local v1           #bindArgs:[Ljava/lang/Object;
    .end local v2           #bindArgsSize:I
    .end local v3           #colName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p4

    array-length v11, v0

    add-int v2, v8, v11

    goto :goto_0

    .line 1914
    .restart local v1       #bindArgs:[Ljava/lang/Object;
    .restart local v2       #bindArgsSize:I
    .restart local v3       #colName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3
    const-string v11, ""

    goto :goto_2

    .line 1919
    .end local v3           #colName:Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    .line 1920
    move v5, v8

    :goto_3
    if-ge v5, v2, :cond_5

    .line 1921
    sub-int v11, v5, v8

    aget-object v11, p4, v11

    aput-object v11, v1, v5

    .line 1920
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1924
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1925
    const-string v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    :cond_6
    new-instance v10, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1931
    .local v10, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1936
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v11

    .line 1932
    :catch_0
    move-exception v4

    .line 1933
    .local v4, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1934
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    .end local v4           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v11

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v11
.end method

.method verifyDbIsOpen()V
    .locals 3

    .prologue
    .line 2213
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2214
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (conn# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2217
    :cond_0
    return-void
.end method

.method verifyLockOwner()V
    .locals 2

    .prologue
    .line 2220
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2221
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t have database lock!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_0
    return-void
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 879
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 892
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .parameter "sleepAfterYieldDelay"

    .prologue
    .line 907
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

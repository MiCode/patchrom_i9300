.class public Lcom/android/internal/util/DeviceStorageState;
.super Ljava/lang/Object;
.source "DeviceStorageState.java"


# static fields
.field public static final CACHE_PATH:Ljava/lang/String; = null

.field public static final DATA_PATH:Ljava/lang/String; = null

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x100000

.field public static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0x5

.field public static final EXTERNAL_PATH:Ljava/lang/String; = null

.field public static final SYSTEM_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceStorageState"

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/DeviceStorageState;->DATA_PATH:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/DeviceStorageState;->SYSTEM_PATH:Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/DeviceStorageState;->CACHE_PATH:Ljava/lang/String;

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/DeviceStorageState;->EXTERNAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMemFullThreshold()I
    .locals 4

    .prologue
    .line 98
    sget-object v1, Lcom/android/internal/util/DeviceStorageState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, value:I
    return v0
.end method

.method private static getMemThreshold(JI)J
    .locals 3
    .parameter "totalMemory"
    .parameter "threshold"

    .prologue
    .line 84
    sget-object v1, Lcom/android/internal/util/DeviceStorageState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sys_storage_threshold_percentage"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, value:I
    int-to-long v1, v0

    mul-long/2addr v1, p0

    return-wide v1
.end method

.method public static isAvailableMemory(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9
    .parameter "context"
    .parameter "path"
    .parameter "threshold"

    .prologue
    .line 54
    sput-object p0, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    .line 55
    sget-object v5, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sput-object v5, Lcom/android/internal/util/DeviceStorageState;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x64

    div-long v3, v5, v7

    .line 59
    .local v3, totalMemory:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 62
    .local v0, freeMemory:J
    invoke-static {}, Lcom/android/internal/util/DeviceStorageState;->getMemFullThreshold()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_0

    invoke-static {v3, v4, p2}, Lcom/android/internal/util/DeviceStorageState;->getMemThreshold(JI)J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    .line 63
    :cond_0
    const-string v5, "DeviceStorageState"

    const-string v6, "Data Memory is nearly full. Data Memory is not available"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/android/internal/util/DeviceStorageState;->sendDangerNotification()V

    .line 65
    const/4 v5, 0x0

    .line 74
    :goto_0
    return v5

    .line 73
    :cond_1
    const-string v5, "DeviceStorageState"

    const-string v6, "Data Memory is available"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static sendDangerNotification()V
    .locals 7

    .prologue
    .line 124
    sget-object v4, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 125
    sget-object v4, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    const v5, 0x104045d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 126
    .local v3, title:Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    const v5, 0x1040152

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 128
    .local v1, details:Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/internal/util/DeviceStorageState;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 134
    .local v2, simDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 138
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #simDialog:Landroid/app/AlertDialog;
    .end local v3           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v4, "DeviceStorageState"

    const-string/jumbo v5, "sendDangerNotification mContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

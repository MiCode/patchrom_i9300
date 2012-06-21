.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final BUS_MAX:I = 0x61b48

.field private static final BUS_ORI:I = 0x0

.field private static final BUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final CORE:I = 0x4

.field private static final CORE_ORI:I = 0x0

.field private static final CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/hotplug_lock"

.field private static final DEBUG:Z = false

.field private static final GPU_MAX:I = 0x1b8

.field private static final GPU_ORI:I = 0x3e7

.field private static final GPU_PATH:Ljava/lang/String; = "/sys/module/mali/parameters/mali_dvfs_control"

.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# instance fields
.field FileStream_BUS:Ljava/io/FileOutputStream;

.field FileStream_CORE:Ljava/io/FileOutputStream;

.field FileStream_GPU:Ljava/io/FileOutputStream;

.field bus_byte:[B

.field bus_ori_byte:[B

.field core_byte:[B

.field core_ori_byte:[B

.field gpu_byte:[B

.field gpu_ori_byte:[B

.field mBenchMarkApps:[Ljava/lang/String;

.field mBus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mCore:Ljava/lang/String;

.field mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field mGpu:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 64
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.threed.jpct.bench"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.antutu.ABenchMark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.glbenchmark.GLBenchmark20"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.drolez.nbench"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.ga.graphics.cha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qualcomm.qx.neocore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "se.nena.nenamark2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "se.nena.nenamark1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.smartbench.eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "softweg.hw.performance"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 64
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.threed.jpct.bench"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.antutu.ABenchMark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.glbenchmark.GLBenchmark20"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.drolez.nbench"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.ga.graphics.cha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qualcomm.qx.neocore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "se.nena.nenamark2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "se.nena.nenamark1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.smartbench.eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "softweg.hw.performance"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    return-void
.end method

.method private close_filestream()V
    .locals 2

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 259
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 260
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private goto_max()V
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->open_filesteam()V

    .line 214
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->core_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->bus_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->close_filestream()V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private goto_ori()V
    .locals 3

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->open_filesteam()V

    .line 231
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->core_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/app/ActivityTrigger;->bus_ori_byte:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->close_filestream()V

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;)V
.end method

.method private open_filesteam()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/module/mali/parameters/mali_dvfs_control"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    .line 248
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    .line 249
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/system/cpu/cpufreq/pegasusq/hotplug_lock"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public activityResumeTrigger(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, pn:Ljava/lang/String;
    const/4 v0, 0x0

    .line 179
    .local v0, bFound:Z
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v4, :cond_3

    .line 184
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 185
    .local v3, supportedFreq:[I
    if-nez v3, :cond_2

    .line 209
    .end local v3           #supportedFreq:[I
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local v3       #supportedFreq:[I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v3, v6

    const-string v7, "ActivityTrigger"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 191
    .end local v3           #supportedFreq:[I
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 196
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_max()V

    .line 198
    const/4 v0, 0x1

    .line 203
    :cond_4
    if-nez v0, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_ori()V

    goto :goto_0

    .line 191
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public activityStartTrigger(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, pn:Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, bFound:Z
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 145
    .local v3, supportedFreq:[I
    if-nez v3, :cond_1

    .line 172
    .end local v3           #supportedFreq:[I
    :goto_0
    return-void

    .line 146
    .restart local v3       #supportedFreq:[I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v3, v6

    const-string v7, "ActivityTrigger"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 152
    .end local v3           #supportedFreq:[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    monitor-enter v5

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 155
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mBenchMarkApps:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_max()V

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_3
    if-nez v0, :cond_4

    .line 166
    iget-object v4, p0, Lcom/android/internal/app/ActivityTrigger;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 167
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->goto_ori()V

    .line 153
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/internal/app/ActivityTrigger;->mContext:Landroid/content/Context;

    .line 109
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_GPU:Ljava/io/FileOutputStream;

    .line 110
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_BUS:Ljava/io/FileOutputStream;

    .line 111
    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->FileStream_CORE:Ljava/io/FileOutputStream;

    .line 114
    const/16 v0, 0x1b8

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    .line 115
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    .line 116
    const v0, 0x61b48

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_byte:[B

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->core_byte:[B

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->bus_byte:[B

    .line 122
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mGpu:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->gpu_ori_byte:[B

    .line 127
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mCore:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->core_ori_byte:[B

    .line 128
    iget-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->mBus:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActivityTrigger;->bus_ori_byte:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

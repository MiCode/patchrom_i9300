.class public Lcom/android/server/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# static fields
.field private static final BUS_DEFAULT_FREQUENCY:I = 0x1

.field private static final BUS_MAX_FREQUENCY:I = 0x3

.field private static final DEBUG:Z = true

.field private static final GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static final GPU_LOCK:Ljava/lang/Object; = null

.field private static final GPU_MAX_FREQUENCY:I = 0x1

.field private static final GPU_PATH:Ljava/lang/String; = "/sys/power/mali_lock"

.field private static final GPU_TABLE_PATH:Ljava/lang/String; = ""

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x0

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

.field private static final SYSBUS_TABLE_PATH:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final TESTING:Z = true

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfGPULock:I

.field private static countOfSysBusLock:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mSupportedGPUFrequency:[I

.field private mSupportedSysBusFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 85
    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 86
    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 61
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 63
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 92
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 94
    return-void
.end method

.method private initSupportedGPUFrequency()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 149
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v1, v0, v1

    .line 150
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v2, v0, v2

    .line 151
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v3, v0, v3

    .line 152
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v4, v0, v4

    goto :goto_0
.end method

.method private initSupportedSysBusFrequency()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-nez v0, :cond_0

    .line 162
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "Initializing testing frequencies for system bus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 166
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v5, v0, v2

    .line 167
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v4, v0, v3

    .line 168
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v3, v0, v4

    .line 169
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v2, v0, v5

    .line 205
    :cond_0
    return-void
.end method

.method private modifyFrameRateToValue(I)V
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/4 v2, 0x0

    .line 306
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v4, 0x28

    if-ne p1, v4, :cond_4

    .line 307
    const/4 p1, 0x1

    .line 311
    :cond_2
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 314
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@ modifyFrameRateToValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    move-object v2, v3

    .line 320
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 308
    :cond_4
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_2

    .line 309
    const/4 p1, 0x0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_2
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 318
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 319
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 318
    :cond_5
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 315
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private modifyGPUToValue(I)V
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/power/mali_lock"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### modifyGPUToValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 243
    :cond_0
    return-void

    .line 239
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    :cond_1
    throw v2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private modifySysBusToValue(I)V
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$$ modifySysBusToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    move-object v1, v2

    .line 274
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 271
    :cond_2
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 268
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private revertGPUToDefault()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/power/mali_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 251
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### revertGPUToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    move-object v1, v2

    .line 258
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 255
    :cond_2
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 252
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private revertLCDFrameRateToDefault()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/4 v2, 0x0

    .line 331
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 334
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "@@@ revertLCDFrameRateToDefault : 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 339
    if-eqz v3, :cond_2

    .line 341
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v2, v3

    .line 345
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    if-eqz v2, :cond_0

    .line 341
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 342
    :catch_1
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 341
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 339
    :cond_3
    :goto_4
    throw v4

    .line 342
    :catch_2
    move-exception v0

    .line 343
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revertSysBusToDefault : IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 342
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 343
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 336
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private revertSysBusToDefault()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 283
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 288
    if-eqz v2, :cond_0

    .line 290
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 295
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    if-eqz v1, :cond_1

    .line 290
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 290
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 288
    :cond_2
    :goto_4
    throw v3

    .line 291
    :catch_2
    move-exception v0

    .line 292
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 291
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 292
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 285
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private verifyDefaultCondition()V
    .locals 11

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 100
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/power/mali_lock"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 104
    .local v6, parsedRet:[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, gpuSysfsRet:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 106
    const-string v7, ", count = "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 108
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, numOfLock:I
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : numOfLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .end local v4           #i:I
    .end local v5           #numOfLock:I
    :cond_0
    if-eqz v1, :cond_1

    .line 136
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v0, v1

    .line 141
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    .end local v6           #parsedRet:[Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    if-eqz v0, :cond_2

    .line 136
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_3

    .line 136
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    :cond_3
    :goto_5
    throw v7

    .line 137
    :catch_2
    move-exception v2

    .line 138
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "CustomFrequencyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verifyDefaultCondition : IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 137
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #gpuSysfsRet:Ljava/lang/String;
    .restart local v6       #parsedRet:[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 138
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 131
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method public checkFrameRateRange(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 224
    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 212
    :goto_1
    return v1

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 220
    :goto_1
    return v1

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public releaseGPU()V
    .locals 5

    .prologue
    .line 382
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 386
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPU -> count of GPU locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 406
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPULock: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 401
    :catch_1
    move-exception v0

    .line 402
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPULock: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public releaseSysBus()V
    .locals 5

    .prologue
    .line 433
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_0
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 437
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus -> count of System Bus locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    if-nez v1, :cond_0

    .line 441
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "count of System Bus locks 0, requesting revertSysBusToDefault"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 453
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 454
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 449
    :catch_1
    move-exception v0

    .line 450
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public requestGPU(I)V
    .locals 5
    .parameter "frequency"

    .prologue
    .line 357
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 361
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 363
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU -> count of GPU locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 379
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 369
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "GPU Frequency value is not in the permitted range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public requestLCDFrameRate(I)V
    .locals 5
    .parameter "frequency"

    .prologue
    .line 457
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkFrameRateRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyFrameRateToValue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 474
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 465
    :catch_1
    move-exception v0

    .line 466
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Frame rate value is not in the permitted range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 9
    .parameter "command"

    .prologue
    .line 479
    if-eqz p1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    .line 480
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 506
    :cond_0
    move-object v5, p1

    .line 508
    .local v5, send:Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 509
    .local v2, localSocket:Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 511
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "MPDECISION_SOCKET"

    invoke-direct {v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, localSocketAddress:Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 513
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 514
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    if-eqz v4, :cond_1

    .line 521
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 522
    :cond_1
    if-eqz v2, :cond_2

    .line 523
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 528
    .end local v3           #localSocketAddress:Landroid/net/LocalSocketAddress;
    :cond_2
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    if-eqz v4, :cond_3

    .line 521
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 522
    :cond_3
    if-eqz v2, :cond_2

    .line 523
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 524
    :catch_1
    move-exception v1

    .line 525
    .end local v0           #e:Ljava/lang/Exception;
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 520
    if-eqz v4, :cond_4

    .line 521
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 522
    :cond_4
    if-eqz v2, :cond_5

    .line 523
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 519
    :cond_5
    :goto_2
    throw v6

    .line 524
    :catch_2
    move-exception v1

    .line 525
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 524
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v3       #localSocketAddress:Landroid/net/LocalSocketAddress;
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public requestSysBus(I)V
    .locals 5
    .parameter "frequency"

    .prologue
    .line 409
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 413
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 415
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus -> count of System Bus locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 430
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "SysBus Frequency value is not in the permitted range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

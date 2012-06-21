.class public final Landroid/util/safelog/SafeLog;
.super Ljava/lang/Object;
.source "SafeLog.java"


# static fields
.field private static final APK_NAME_LETTERS:[C = null

.field private static final APK_UPPER_CASE_EXTENSION:Ljava/lang/String; = ".APK"

.field private static final CONVERT_POLICY_APK_NAME:I = 0x1

.field private static final CONVERT_POLICY_PACKAGE_NAME:I = 0x0

.field private static final CONVERT_POLICY_PATH:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FILTER_APK_NAME:Z = true

.field private static final DEFAULT_FILTER_PACKAGE_NAME:Z = true

.field private static final DEFAULT_FILTER_PATH:Z = true

.field private static final DOT_CHAR:C = '.'

.field private static final FILTER_APK_NAME:I = 0x4

.field private static final FILTER_FULL:I = -0x1

.field private static final FILTER_NONE:I = 0x0

.field private static final FILTER_PACKAGE_NAME:I = 0x1

.field private static final FILTER_PATH:I = 0x2

.field private static final MINIMUM_DOT_COUNT_FOR_AVAILABLE_PACKAGE:I = 0x2

.field private static final MINIMUM_SLASH_COUNT_FOR_AVAILABLE_PATH:I = 0x2

.field private static final PACKAGE_NAME_LETTERS:[C = null

.field private static final PATH_LETTERS:[C = null

.field private static final SLASH_CHAR:C = '/'

.field private static final TAG:Ljava/lang/String; = "SafeLog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/safelog/SafeLog;->PACKAGE_NAME_LETTERS:[C

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/safelog/SafeLog;->APK_NAME_LETTERS:[C

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Landroid/util/safelog/SafeLog;->PATH_LETTERS:[C

    return-void

    .line 21
    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x5ft 0x0t
    .end array-data

    .line 22
    :array_1
    .array-data 0x2
        0x2dt 0x0t
        0x5ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    .line 23
    :array_2
    .array-data 0x2
        0x2dt 0x0t
        0x5ft 0x0t
        0x2et 0x0t
        0x40t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static convertToX(Ljava/lang/StringBuilder;III)V
    .locals 5
    .parameter "stringBuilder"
    .parameter "start"
    .parameter "end"
    .parameter "policy"

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x2e

    .line 415
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 416
    .local v1, length:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, p2, :cond_0

    if-lt p2, v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    if-ne p1, p2, :cond_2

    .line 420
    invoke-virtual {p0, p1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 423
    :cond_2
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 425
    :pswitch_0
    move v0, p1

    .local v0, i:I
    :goto_1
    if-gt v0, p2, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    .line 427
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 425
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_3
    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 434
    .end local v0           #i:I
    :pswitch_1
    move v0, p1

    .restart local v0       #i:I
    :goto_3
    if-gt v0, p2, :cond_0

    .line 435
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 436
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 434
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 438
    :cond_4
    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    .line 444
    .end local v0           #i:I
    :pswitch_2
    move v0, p1

    .restart local v0       #i:I
    :goto_5
    if-gt v0, p2, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5

    .line 446
    const/16 v2, 0x7c

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 444
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 448
    :cond_5
    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static extractApkName(Ljava/lang/StringBuilder;I[I)Z
    .locals 10
    .parameter "stringBuilder"
    .parameter "startSearchIndex"
    .parameter "outApkNameIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 352
    const/4 v5, -0x1

    .line 353
    .local v5, retStart:I
    const/4 v4, -0x1

    .line 355
    .local v4, retEnd:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 356
    .local v2, length:I
    if-gez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v7

    .line 360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, tmpString:Ljava/lang/String;
    const-string v9, ".APK"

    invoke-virtual {v6, v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 362
    .local v3, newStartIndext:I
    if-ltz v3, :cond_2

    .line 363
    const-string v9, ".APK"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v4, v9, -0x1

    .line 367
    :cond_2
    const/4 v1, 0x0

    .line 369
    .local v1, i:I
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 370
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 371
    .local v0, ch:C
    sget-object v9, Landroid/util/safelog/SafeLog;->APK_NAME_LETTERS:[C

    invoke-static {v9, v0}, Landroid/util/safelog/SafeLog;->isAvailableCharacterFor([CC)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 372
    move v5, v1

    .line 369
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 380
    .end local v0           #ch:C
    :cond_3
    if-ltz v5, :cond_0

    if-le v4, v5, :cond_0

    .line 381
    aput v5, p2, v7

    .line 382
    aput v4, p2, v8

    move v7, v8

    .line 384
    goto :goto_0
.end method

.method private static extractPackageName(Ljava/lang/StringBuilder;I[I)Z
    .locals 12
    .parameter "stringBuilder"
    .parameter "startSearchIndex"
    .parameter "outPackageNameIndex"

    .prologue
    .line 118
    const/4 v9, -0x1

    .line 119
    .local v9, retStart:I
    const/4 v8, -0x1

    .line 120
    .local v8, retEnd:I
    const/4 v1, 0x0

    .line 121
    .local v1, dotCount:I
    const/4 v5, 0x0

    .line 122
    .local v5, isLastCharAvailable:Z
    const/4 v3, 0x0

    .line 123
    .local v3, isCurrentCharAvailable:Z
    const/4 v6, 0x0

    .line 124
    .local v6, isLastCharDot:Z
    const/4 v4, 0x0

    .line 126
    .local v4, isCurrentCharDot:Z
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 127
    .local v7, length:I
    if-gez v7, :cond_0

    .line 128
    const/4 v10, 0x0

    .line 195
    :goto_0
    return v10

    .line 132
    :cond_0
    const/4 v2, 0x0

    .line 133
    .local v2, i:I
    move v2, p1

    :goto_1
    if-ge v2, v7, :cond_8

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 135
    .local v0, ch:C
    move v5, v3

    .line 136
    move v6, v4

    .line 138
    sget-object v10, Landroid/util/safelog/SafeLog;->PACKAGE_NAME_LETTERS:[C

    invoke-static {v10, v0}, Landroid/util/safelog/SafeLog;->isAvailableCharacterFor([CC)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 139
    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v6, :cond_3

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 140
    :cond_2
    move v9, v2

    .line 143
    :cond_3
    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 144
    :cond_4
    move v8, v2

    .line 147
    :cond_5
    const/4 v4, 0x0

    .line 148
    const/4 v3, 0x1

    .line 133
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_7
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_9

    .line 152
    const/4 v4, 0x1

    .line 153
    const/4 v3, 0x0

    .line 160
    :goto_3
    if-eqz v6, :cond_c

    .line 161
    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x2

    if-lt v10, v11, :cond_a

    .line 189
    .end local v0           #ch:C
    :cond_8
    if-ltz v9, :cond_e

    if-le v8, v9, :cond_e

    const/4 v10, 0x2

    if-lt v1, v10, :cond_e

    .line 190
    const/4 v10, 0x0

    aput v9, p2, v10

    .line 191
    const/4 v10, 0x1

    aput v8, p2, v10

    .line 193
    const/4 v10, 0x1

    goto :goto_0

    .line 155
    .restart local v0       #ch:C
    :cond_9
    const/4 v4, 0x0

    .line 156
    const/4 v3, 0x0

    goto :goto_3

    .line 164
    :cond_a
    const/4 v1, 0x0

    .line 165
    const/4 v9, -0x1

    .line 166
    const/4 v8, -0x1

    .line 182
    :cond_b
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :cond_c
    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    .line 169
    const/4 v10, 0x2

    if-ge v1, v10, :cond_8

    .line 172
    const/4 v1, 0x0

    .line 173
    const/4 v9, -0x1

    .line 174
    const/4 v8, -0x1

    goto :goto_4

    .line 176
    :cond_d
    if-nez v5, :cond_b

    .line 177
    const/4 v1, 0x0

    .line 178
    const/4 v9, -0x1

    .line 179
    const/4 v8, -0x1

    goto :goto_4

    .line 195
    .end local v0           #ch:C
    :cond_e
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static extractPath(Ljava/lang/StringBuilder;I[I)Z
    .locals 11
    .parameter "stringBuilder"
    .parameter "startSearchIndex"
    .parameter "outPathIndex"

    .prologue
    .line 232
    const/4 v8, -0x1

    .line 233
    .local v8, retStart:I
    const/4 v7, -0x1

    .line 234
    .local v7, retEnd:I
    const/4 v9, 0x0

    .line 235
    .local v9, slashCount:I
    const/4 v4, 0x0

    .line 236
    .local v4, isLastCharAvailable:Z
    const/4 v2, 0x0

    .line 237
    .local v2, isCurrentCharAvailable:Z
    const/4 v5, 0x0

    .line 238
    .local v5, isLastCharSlash:Z
    const/4 v3, 0x0

    .line 240
    .local v3, isCurrentCharSlash:Z
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 241
    .local v6, length:I
    if-gez v6, :cond_0

    .line 242
    const/4 v10, 0x0

    .line 316
    :goto_0
    return v10

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 247
    .local v1, i:I
    move v1, p1

    :goto_1
    if-ge v1, v6, :cond_7

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 249
    .local v0, ch:C
    move v4, v2

    .line 250
    move v5, v3

    .line 251
    sget-object v10, Landroid/util/safelog/SafeLog;->PATH_LETTERS:[C

    invoke-static {v10, v0}, Landroid/util/safelog/SafeLog;->isAvailableCharacterFor([CC)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 252
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 253
    move v8, v1

    .line 256
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 257
    :cond_2
    move v7, v1

    .line 260
    :cond_3
    const/4 v3, 0x0

    .line 261
    const/4 v2, 0x1

    .line 247
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    :cond_5
    const/16 v10, 0x2f

    if-ne v0, v10, :cond_8

    .line 265
    const/4 v10, -0x1

    if-ne v8, v10, :cond_6

    .line 266
    move v8, v1

    .line 268
    :cond_6
    const/4 v3, 0x1

    .line 269
    const/4 v2, 0x0

    .line 276
    :goto_3
    if-eqz v5, :cond_b

    .line 277
    if-nez v3, :cond_9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_9

    .line 310
    .end local v0           #ch:C
    :cond_7
    if-ltz v8, :cond_e

    if-le v7, v8, :cond_e

    const/4 v10, 0x2

    if-lt v9, v10, :cond_e

    .line 311
    const/4 v10, 0x0

    aput v8, p2, v10

    .line 312
    const/4 v10, 0x1

    aput v7, p2, v10

    .line 314
    const/4 v10, 0x1

    goto :goto_0

    .line 271
    .restart local v0       #ch:C
    :cond_8
    const/4 v3, 0x0

    .line 272
    const/4 v2, 0x0

    goto :goto_3

    .line 279
    :cond_9
    if-nez v3, :cond_a

    .line 280
    const/4 v9, 0x0

    .line 281
    const/4 v8, -0x1

    .line 282
    const/4 v7, -0x1

    .line 302
    :cond_a
    :goto_4
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 303
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 284
    :cond_b
    if-eqz v4, :cond_c

    if-nez v3, :cond_c

    .line 285
    const/4 v10, 0x2

    if-ge v9, v10, :cond_7

    .line 288
    const/4 v9, 0x0

    .line 289
    const/4 v8, -0x1

    .line 290
    const/4 v7, -0x1

    goto :goto_4

    .line 292
    :cond_c
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v3, :cond_d

    .line 293
    const/4 v9, 0x1

    .line 294
    move v8, v1

    .line 295
    const/4 v7, -0x1

    goto :goto_4

    .line 296
    :cond_d
    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-nez v3, :cond_a

    .line 297
    const/4 v9, 0x0

    .line 298
    const/4 v8, -0x1

    .line 299
    const/4 v7, -0x1

    goto :goto_4

    .line 316
    .end local v0           #ch:C
    :cond_e
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static getSafeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, filter:I
    or-int/lit8 v0, v0, 0x1

    .line 46
    or-int/lit8 v0, v0, 0x2

    .line 49
    or-int/lit8 v0, v0, 0x4

    .line 51
    invoke-static {p0, v0}, Landroid/util/safelog/SafeLog;->getSafeLog(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSafeLog(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "msg"
    .parameter "filter"

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Landroid/util/safelog/SafeLog;->isProductShip()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    move-object v0, p0

    .line 61
    .local v0, ret:Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 62
    invoke-static {p0}, Landroid/util/safelog/SafeLog;->removePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 67
    invoke-static {v0}, Landroid/util/safelog/SafeLog;->removePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 72
    invoke-static {v0}, Landroid/util/safelog/SafeLog;->removeApkName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .end local v0           #ret:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    :cond_3
    move-object v0, p0

    .line 81
    goto :goto_0
.end method

.method private static isAvailableCharacterFor([CC)Z
    .locals 3
    .parameter "availableLetters"
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 391
    invoke-static {p0, p1}, Landroid/util/safelog/SafeLog;->ok([CC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 395
    .local v0, x:I
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    .line 398
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isProductShip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 402
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static ok([CC)Z
    .locals 2
    .parameter "accept"
    .parameter "ch"

    .prologue
    .line 406
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 407
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 408
    const/4 v1, 0x1

    .line 411
    :goto_1
    return v1

    .line 406
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static removeApkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v5, stringBuilder:Ljava/lang/StringBuilder;
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, firstDot:I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gtz v6, :cond_0

    .line 326
    const-string v6, ""

    .line 346
    :goto_0
    return-object v6

    .line 329
    :cond_0
    if-gez v2, :cond_1

    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 333
    :cond_1
    const/4 v3, 0x0

    .line 334
    .local v3, startApk:I
    const/4 v1, 0x0

    .line 335
    .local v1, endApk:I
    const/4 v4, 0x0

    .line 336
    .local v4, startSearchIndex:I
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 338
    .local v0, apkNameIndex:[I
    :goto_1
    invoke-static {v5, v4, v0}, Landroid/util/safelog/SafeLog;->extractApkName(Ljava/lang/StringBuilder;I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 339
    const/4 v6, 0x0

    aget v3, v0, v6

    .line 340
    aget v1, v0, v7

    .line 342
    invoke-static {v5, v3, v1, v7}, Landroid/util/safelog/SafeLog;->convertToX(Ljava/lang/StringBuilder;III)V

    .line 343
    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static removePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, firstDot:I
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, lastDot:I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_0

    .line 92
    const-string v7, ""

    .line 112
    :goto_0
    return-object v7

    .line 95
    :cond_0
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-eq v1, v2, :cond_1

    sub-int v7, v2, v1

    if-ge v7, v9, :cond_2

    .line 96
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 99
    :cond_2
    const/4 v4, 0x0

    .line 100
    .local v4, startPackage:I
    const/4 v0, 0x0

    .line 101
    .local v0, endPackage:I
    const/4 v5, 0x0

    .line 102
    .local v5, startSearchIndex:I
    new-array v3, v9, [I

    .line 104
    .local v3, packageNameIndex:[I
    :goto_1
    invoke-static {v6, v5, v3}, Landroid/util/safelog/SafeLog;->extractPackageName(Ljava/lang/StringBuilder;I[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 105
    aget v4, v3, v8

    .line 106
    const/4 v7, 0x1

    aget v0, v3, v7

    .line 108
    invoke-static {v6, v4, v0, v8}, Landroid/util/safelog/SafeLog;->convertToX(Ljava/lang/StringBuilder;III)V

    .line 109
    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static removePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, firstSlash:I
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, lastSlash:I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_0

    .line 206
    const-string v7, ""

    .line 226
    :goto_0
    return-object v7

    .line 209
    :cond_0
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-eq v1, v2, :cond_1

    sub-int v7, v2, v1

    if-ge v7, v8, :cond_2

    .line 210
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 213
    :cond_2
    const/4 v4, 0x0

    .line 214
    .local v4, startPath:I
    const/4 v0, 0x0

    .line 215
    .local v0, endPath:I
    const/4 v5, 0x0

    .line 216
    .local v5, startSearchIndex:I
    new-array v3, v8, [I

    .line 218
    .local v3, pathIndex:[I
    :goto_1
    invoke-static {v6, v5, v3}, Landroid/util/safelog/SafeLog;->extractPath(Ljava/lang/StringBuilder;I[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 219
    const/4 v7, 0x0

    aget v4, v3, v7

    .line 220
    const/4 v7, 0x1

    aget v0, v3, v7

    .line 222
    invoke-static {v6, v4, v0, v8}, Landroid/util/safelog/SafeLog;->convertToX(Ljava/lang/StringBuilder;III)V

    .line 223
    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

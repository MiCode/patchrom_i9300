.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public angle:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public surfaceMajor:F

.field public surfaceMinor:F

.field public surfaceSize:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3139
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3148
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3149
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .parameter "size"

    .prologue
    .line 3153
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3154
    .local v0, array:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3155
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3157
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3269
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3270
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3271
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3272
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3273
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3274
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3275
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3276
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3277
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3278
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 3286
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3287
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3288
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 3289
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3290
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3291
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3292
    .local v4, values:[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3293
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3294
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3296
    :cond_1
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3299
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3300
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3301
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3302
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3303
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3304
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3305
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3306
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3307
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3309
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    .line 3310
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    .line 3311
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    .line 3312
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->angle:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    .line 3313
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3315
    return-void
.end method

.method public getAxisValue(I)F
    .locals 11
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 3327
    sparse-switch p1, :sswitch_data_0

    .line 3359
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3360
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3329
    :sswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3368
    :goto_0
    return v5

    .line 3331
    :sswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3333
    :sswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3335
    :sswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3337
    :sswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3339
    :sswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3341
    :sswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3343
    :sswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3345
    :sswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3348
    :sswitch_9
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_0

    .line 3350
    :sswitch_a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_0

    .line 3352
    :sswitch_b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_0

    .line 3354
    :sswitch_c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_0

    .line 3356
    :sswitch_d
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_0

    .line 3362
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3363
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3364
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 3365
    const/4 v5, 0x0

    goto :goto_0

    .line 3367
    :cond_2
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3368
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_0

    .line 3327
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3383
    sparse-switch p1, :sswitch_data_0

    .line 3429
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 3430
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3385
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3461
    :goto_0
    return-void

    .line 3388
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3391
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3394
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3397
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3400
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3403
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3406
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3409
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3413
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_0

    .line 3416
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_0

    .line 3419
    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_0

    .line 3422
    :sswitch_c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_0

    .line 3425
    :sswitch_d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_0

    .line 3432
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3433
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3434
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3435
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3436
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3437
    if-nez v7, :cond_4

    .line 3438
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3439
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3456
    :cond_2
    :goto_1
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3458
    :cond_3
    aput p2, v7, v5

    goto :goto_0

    .line 3441
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3442
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 3443
    if-eq v5, v4, :cond_2

    .line 3444
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3448
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3449
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3450
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3452
    move-object v7, v6

    .line 3453
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_1

    .line 3383
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
    .end sparse-switch
.end method

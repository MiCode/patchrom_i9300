.class public Lcom/sec/android/glview/TwGLStringTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLStringTexture.java"


# static fields
.field private static DEFAULT_LINE_SPACE:I

.field private static DEFAULT_PADDING:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I

.field private static final mShadowColor:I


# instance fields
.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mHAlign:I

.field private mHeight:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    .line 44
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    .line 88
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hAlign"
    .parameter "vAlign"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 61
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 64
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 67
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 70
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 73
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 79
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 85
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 140
    iput-object p8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 141
    iput p9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 142
    iput p10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 143
    iput-boolean p11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 145
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 146
    iput p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 149
    cmpl-float v0, p9, v2

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 156
    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 157
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 159
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 160
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 61
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 64
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 67
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 70
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 73
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 79
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 85
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 103
    iput-object p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 104
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 105
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 106
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 109
    cmpl-float v0, p5, v2

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 119
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 120
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 121
    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "string"
    .parameter "fieldWidth"

    .prologue
    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 574
    .local v0, end:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 575
    .local v1, stringWidth:I
    const/4 v2, 0x0

    .line 577
    .local v2, subString:Ljava/lang/String;
    if-ge v1, p2, :cond_0

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 587
    :goto_0
    return v3

    .line 582
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 583
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 584
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 585
    if-gt v1, p2, :cond_0

    move v3, v0

    .line 587
    goto :goto_0
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5
    .parameter "string"

    .prologue
    const/4 v4, -0x1

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, numOfNewLine:I
    const/4 v1, 0x0

    .line 536
    .local v1, start:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 537
    if-eq v1, v4, :cond_1

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 541
    :cond_1
    if-ne v1, v4, :cond_0

    .line 542
    return v0
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "string"
    .parameter "fieldWidth"

    .prologue
    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    .line 547
    .local v1, end:I
    const/4 v4, 0x0

    .line 548
    .local v4, stringWidth:I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 549
    .local v0, concatString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 551
    .local v3, resultString:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    .line 569
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 555
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget v5, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    .line 556
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 560
    :cond_2
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-lt v5, p2, :cond_3

    move-object p1, v0

    .line 561
    goto :goto_0

    .line 565
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 566
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v4, v5

    .line 567
    add-int/lit8 v1, v1, -0x1

    .line 568
    if-lt p2, v4, :cond_3

    move-object p1, v3

    .line 569
    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 13
    .parameter "availableRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v4, resultStringArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 434
    .local v8, subString:Ljava/lang/String;
    const/4 v7, 0x0

    .line 435
    .local v7, stringLength:I
    const/4 v6, 0x0

    .line 436
    .local v6, start:I
    const/4 v0, 0x0

    .line 437
    .local v0, end:I
    const/4 v5, 0x0

    .line 438
    .local v5, row:I
    const/4 v3, 0x0

    .line 439
    .local v3, numOfNewLineChar:I
    const/4 v1, 0x0

    .line 440
    .local v1, index:I
    const/4 v2, 0x0

    .line 443
    .local v2, isDone:Z
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    .line 444
    const/4 v6, 0x0

    .line 445
    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_2

    .line 447
    :cond_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 448
    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    .line 449
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v6, v0, 0x1

    .line 453
    :cond_1
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    .line 454
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_0
    return-object v4

    .line 457
    :cond_2
    const/4 v6, 0x0

    .line 458
    const/4 v0, 0x0

    .line 462
    :cond_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 463
    const/4 v10, -0x1

    if-eq v0, v10, :cond_5

    .line 464
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 465
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    .line 473
    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 474
    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    .line 475
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v6, v1, 0x1

    .line 477
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 527
    :cond_4
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_0

    .line 467
    :cond_5
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    .line 468
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 469
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    goto :goto_1

    .line 478
    :cond_6
    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v7, v10, :cond_11

    .line 479
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_c

    .line 480
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 481
    const/4 v10, -0x1

    if-eq v0, v10, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_a

    .line 482
    :cond_7
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_9

    .line 483
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    .line 484
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v0, v0, -0x1

    .line 520
    :cond_8
    :goto_3
    add-int/lit8 v6, v0, 0x1

    .line 521
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    .line 487
    :cond_9
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const/4 v2, 0x1

    goto :goto_3

    .line 490
    :cond_a
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_8

    .line 491
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    .line 492
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 494
    :cond_b
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v2, 0x1

    goto :goto_3

    .line 499
    :cond_c
    move v9, v0

    .line 500
    .local v9, tempEnd:I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 501
    const/4 v10, -0x1

    if-eq v0, v10, :cond_d

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_f

    .line 502
    :cond_d
    move v0, v9

    .line 503
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    .line 504
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    .line 505
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 508
    :cond_e
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 512
    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_10

    .line 513
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 515
    :cond_10
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 522
    .end local v9           #tempEnd:I
    :cond_11
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_4

    .line 523
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v2, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 182
    .local v3, top:I
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, resultString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getAvailableRows()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/glview/TwGLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int v4, v5, v6

    .line 191
    .local v4, totalStringHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 192
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v5, :pswitch_data_0

    .line 218
    :goto_1
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v5, :pswitch_data_1

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :pswitch_0
    if-nez v1, :cond_1

    .line 195
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    .line 197
    :cond_1
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v5, v1

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    .line 199
    goto :goto_1

    .line 201
    :pswitch_1
    if-nez v1, :cond_2

    .line 202
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    .line 204
    :cond_2
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    .line 206
    goto :goto_1

    .line 208
    :pswitch_2
    if-nez v1, :cond_3

    .line 209
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v3, v5, v6

    goto :goto_1

    .line 211
    :cond_3
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v3, v5, v6

    .line 214
    goto/16 :goto_1

    .line 220
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 222
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_4

    .line 223
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    :cond_4
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 231
    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 232
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 233
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_5

    .line 234
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    :cond_5
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 241
    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 242
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 243
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_6

    .line 244
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 246
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    :cond_6
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 256
    .end local v1           #i:I
    .end local v4           #totalStringHeight:I
    :cond_7
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v5, :pswitch_data_2

    .line 270
    :goto_3
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v5, :pswitch_data_3

    .line 305
    :cond_8
    :goto_4
    return-object v0

    .line 258
    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v3, v5

    .line 259
    goto :goto_3

    .line 261
    :pswitch_7
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    .line 262
    goto :goto_3

    .line 264
    :pswitch_8
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v3, v5, v6

    .line 265
    goto :goto_3

    .line 272
    :pswitch_9
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 274
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_9

    .line 275
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    :cond_9
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 282
    :pswitch_a
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 283
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 284
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_a

    .line 285
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    :cond_a
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 292
    :pswitch_b
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 293
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 294
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_b

    .line 295
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    :cond_b
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 256
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 270
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setAlign(II)V
    .locals 0
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 412
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 413
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 415
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 398
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 0
    .parameter "bold"
    .parameter "color"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 407
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 409
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 401
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 403
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 375
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 376
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 380
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 381
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 385
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 388
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 332
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 339
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 342
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 343
    return-void

    .line 326
    :pswitch_0
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    goto :goto_0

    .line 336
    :pswitch_1
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    goto :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 332
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setShadowVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 393
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 310
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 311
    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 313
    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 350
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 357
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 358
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 360
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 364
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 369
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 372
    return-void
.end method

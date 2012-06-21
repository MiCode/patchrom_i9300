.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 51
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 58
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 59
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 60
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 62
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 63
    monitor-exit v3

    .line 71
    :goto_0
    return-object v1

    .line 66
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 71
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_0

    .line 66
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 76
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 77
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 80
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 85
    :cond_0
    monitor-exit v2

    .line 87
    .end local v0           #i:I
    :cond_1
    return-object v3

    .line 78
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 165
    if-eqz p3, :cond_0

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 170
    .local v4, p:I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 172
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v8, 0x0

    .line 175
    .local v8, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 192
    :cond_1
    return v21

    .line 173
    .end local v8           #flags:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 178
    :cond_3
    const/16 v21, 0x0

    .line 179
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 180
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 181
    .local v18, e:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 182
    :cond_4
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_6

    const/4 v8, 0x0

    .line 183
    .restart local v8       #flags:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 185
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 188
    move/from16 v11, v19

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 180
    .end local v8           #flags:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 182
    :cond_6
    const/4 v8, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 198
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 199
    .local v1, workPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 201
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 205
    aget-object v8, p2, v7

    .line 206
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 207
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 204
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 214
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 215
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 227
    .local v10, wid:F
    :goto_2
    if-eqz p4, :cond_2

    .line 228
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_5

    .line 229
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 230
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 237
    :cond_2
    :goto_3
    return v10

    .line 218
    .end local v10           #wid:F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 220
    .restart local v10       #wid:F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 221
    .local v9, w:[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 222
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, e:I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 223
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 224
    :cond_4
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 232
    .end local v6           #e:I
    .end local v9           #w:[F
    :cond_5
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 233
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IIZF)I
    .locals 4
    .parameter "start"
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 242
    .local v1, w:[F
    if-eqz p3, :cond_1

    .line 243
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 244
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_0

    .line 245
    sub-int v2, v0, p1

    .line 256
    :goto_1
    return v2

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0           #i:I
    :cond_1
    move v0, p2

    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_3

    .line 250
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_2

    .line 251
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 256
    :cond_3
    sub-int v2, p2, p1

    goto :goto_1
.end method

.method measure(II)F
    .locals 4
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 262
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 263
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 13
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 95
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 97
    sub-int v6, p3, p2

    .line 98
    .local v6, len:I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 99
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 101
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 102
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v10

    new-array v10, v10, [F

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 104
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 105
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v10

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 107
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 109
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_6

    move-object v7, p1

    .line 110
    check-cast v7, Landroid/text/Spanned;

    .line 111
    .local v7, spanned:Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 114
    .local v8, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_6

    .line 115
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 116
    .local v9, startInPara:I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 118
    .local v2, endInPara:I
    if-ltz v9, :cond_4

    if-gez v2, :cond_5

    .line 114
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_5
    move v5, v9

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 123
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    .end local v2           #endInPara:I
    .end local v3           #i:I
    .end local v5           #j:I
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v9           #startInPara:I
    :cond_6
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_8

    :cond_7
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 132
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 133
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 162
    :goto_2
    return-void

    .line 135
    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_a

    .line 136
    :cond_9
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v10

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 139
    :cond_a
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_b

    .line 140
    const/4 v1, 0x1

    .line 159
    .local v1, bidiRequest:I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 160
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 141
    .end local v1           #bidiRequest:I
    :cond_b
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c

    .line 142
    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 143
    .end local v1           #bidiRequest:I
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 144
    const/4 v1, 0x2

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 145
    .end local v1           #bidiRequest:I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 146
    const/4 v1, -0x2

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 148
    .end local v1           #bidiRequest:I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_10

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 149
    sget-boolean v10, Landroid/widget/TextView;->mText_char_type:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 150
    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 152
    .end local v1           #bidiRequest:I
    :cond_f
    const/4 v1, 0x1

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 156
    .end local v1           #bidiRequest:I
    :cond_10
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 157
    .local v4, isRtl:Z
    if-eqz v4, :cond_11

    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    :goto_4
    goto :goto_3

    .end local v1           #bidiRequest:I
    :cond_11
    const/4 v1, 0x1

    goto :goto_4
.end method

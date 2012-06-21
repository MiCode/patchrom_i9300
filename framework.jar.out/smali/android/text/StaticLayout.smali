.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 151
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1045
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1077
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 154
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 155
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 157
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 92
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 82
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 106
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1045
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1077
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 121
    if-eqz p11, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 124
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 125
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 126
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 127
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 129
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 135
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 136
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 138
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 140
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 142
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 148
    return-void

    .line 106
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 132
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 61
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 63
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 17
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 782
    cmpg-float v14, p8, p5

    if-gtz v14, :cond_0

    if-nez p10, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 785
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 878
    :goto_0
    return-void

    .line 789
    :cond_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_3

    const-string/jumbo v14, "\u2025"

    :goto_1
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 791
    .local v3, ellipsisWidth:F
    const/4 v2, 0x0

    .line 792
    .local v2, ellipsisStart:I
    const/4 v1, 0x0

    .line 793
    .local v1, ellipsisCount:I
    sub-int v7, p2, p1

    .line 796
    .local v7, len:I
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 798
    const/4 v12, 0x0

    .line 801
    .local v12, sum:F
    move v4, v7

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_1

    .line 802
    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 804
    .local v13, w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_4

    .line 811
    .end local v13           #w:F
    :cond_1
    const/4 v2, 0x0

    .line 812
    move v1, v4

    .line 876
    .end local v4           #i:I
    .end local v12           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_0

    .line 789
    .end local v1           #ellipsisCount:I
    .end local v2           #ellipsisStart:I
    .end local v3           #ellipsisWidth:F
    .end local v7           #len:I
    :cond_3
    const-string/jumbo v14, "\u2026"

    goto :goto_1

    .line 808
    .restart local v1       #ellipsisCount:I
    .restart local v2       #ellipsisStart:I
    .restart local v3       #ellipsisWidth:F
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v12       #sum:F
    .restart local v13       #w:F
    :cond_4
    add-float/2addr v12, v13

    .line 801
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 814
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_5
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 815
    const-string v14, "StaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 818
    :cond_6
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_a

    .line 820
    :cond_7
    const/4 v12, 0x0

    .line 823
    .restart local v12       #sum:F
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v7, :cond_8

    .line 824
    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 826
    .restart local v13       #w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_9

    .line 833
    .end local v13           #w:F
    :cond_8
    move v2, v4

    .line 834
    sub-int v1, v7, v4

    .line 835
    if-eqz p10, :cond_2

    if-nez v1, :cond_2

    if-lez v7, :cond_2

    .line 836
    add-int/lit8 v2, v7, -0x1

    .line 837
    const/4 v1, 0x1

    goto :goto_3

    .line 830
    .restart local v13       #w:F
    :cond_9
    add-float/2addr v12, v13

    .line 823
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 841
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 842
    const/4 v8, 0x0

    .local v8, lsum:F
    const/4 v11, 0x0

    .line 843
    .local v11, rsum:F
    const/4 v6, 0x0

    .local v6, left:I
    move v10, v7

    .line 845
    .local v10, right:I
    sub-float v14, p5, v3

    const/high16 v15, 0x4000

    div-float v9, v14, v15

    .line 846
    .local v9, ravail:F
    move v10, v7

    :goto_5
    if-ltz v10, :cond_b

    .line 847
    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 849
    .restart local v13       #w:F
    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_d

    .line 856
    .end local v13           #w:F
    :cond_b
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    .line 857
    .local v5, lavail:F
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_c

    .line 858
    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 860
    .restart local v13       #w:F
    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_e

    .line 867
    .end local v13           #w:F
    :cond_c
    move v2, v6

    .line 868
    sub-int v1, v10, v6

    .line 869
    goto/16 :goto_3

    .line 853
    .end local v5           #lavail:F
    .restart local v13       #w:F
    :cond_d
    add-float/2addr v11, v13

    .line 846
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 864
    .restart local v5       #lavail:F
    :cond_e
    add-float/2addr v8, v13

    .line 857
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 870
    .end local v5           #lavail:F
    .end local v6           #left:I
    .end local v8           #lsum:F
    .end local v9           #ravail:F
    .end local v10           #right:I
    .end local v11           #rsum:F
    .end local v13           #w:F
    :cond_f
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 871
    const-string v14, "StaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 569
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 575
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 576
    if-nez p1, :cond_0

    .line 577
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 594
    goto :goto_0

    .line 599
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 600
    if-nez p1, :cond_0

    .line 601
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 619
    goto :goto_0

    .line 624
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 627
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 630
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 633
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 636
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 639
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 642
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 646
    goto :goto_0

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 661
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 662
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 663
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 665
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 666
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 667
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 668
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 670
    move-object/from16 v24, v19

    .line 672
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 673
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 678
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 679
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 680
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 681
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 682
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 684
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 685
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 686
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 684
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 690
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 694
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 695
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 696
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 697
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 700
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 701
    if-eqz p21, :cond_4

    .line 702
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 705
    :cond_4
    if-eqz p20, :cond_5

    .line 706
    move/from16 p4, p6

    .line 709
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 710
    if-eqz p21, :cond_6

    .line 711
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 714
    :cond_6
    if-eqz p20, :cond_7

    .line 715
    move/from16 p5, p7

    .line 721
    :cond_7
    if-eqz p15, :cond_e

    .line 722
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 723
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_d

    .line 724
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 732
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 733
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 734
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 736
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 737
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 738
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 740
    if-eqz p14, :cond_8

    .line 741
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 743
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 744
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 748
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_f

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 755
    :goto_3
    if-eqz p25, :cond_c

    .line 758
    if-nez v22, :cond_10

    const/16 v18, 0x1

    .line 759
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    .line 760
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_12

    const/4 v12, 0x1

    .line 762
    .local v12, forceEllipsis:Z
    :goto_6
    if-eqz v18, :cond_9

    if-nez p29, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_b

    :cond_9
    if-nez v18, :cond_13

    if-nez v13, :cond_a

    if-nez p29, :cond_13

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_13

    :cond_b
    const/4 v14, 0x1

    .line 766
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_c

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 767
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 773
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 774
    return p8

    .line 726
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_d
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 729
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_e
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 751
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_3

    .line 758
    :cond_10
    const/16 v18, 0x0

    goto :goto_4

    .line 759
    .restart local v18       #firstLine:Z
    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    .line 760
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_12
    const/4 v12, 0x0

    goto :goto_6

    .line 762
    .restart local v12       #forceEllipsis:Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 989
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 133
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 168
    const/4 v13, 0x0

    .line 169
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 171
    .local v20, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 172
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 174
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v111, v0

    .line 176
    .local v111, measured:Landroid/text/MeasuredText;
    const/16 v125, 0x0

    .line 177
    .local v125, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v125, p1

    .line 178
    check-cast v125, Landroid/text/Spanned;

    .line 180
    :cond_1
    const/16 v80, 0x1

    .line 183
    .local v80, DEFAULT_DIR:I
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_36

    .line 184
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 185
    .local v38, paraEnd:I
    if-gez v38, :cond_4

    .line 186
    move/from16 v38, p3

    .line 190
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v98, v5, 0x1

    .line 191
    .local v98, firstWidthLineLimit:I
    move/from16 v97, p5

    .line 192
    .local v97, firstWidth:I
    move/from16 v120, p5

    .line 194
    .local v120, restWidth:I
    const/16 v16, 0x0

    .line 196
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v125, :cond_9

    .line 197
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v121

    check-cast v121, [Landroid/text/style/LeadingMarginSpan;

    .line 199
    .local v121, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v106, 0x0

    .local v106, i:I
    :goto_3
    move-object/from16 v0, v121

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_5

    .line 200
    aget-object v108, v121, v106

    .line 201
    .local v108, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v121, v106

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v97, v97, v5

    .line 202
    aget-object v5, v121, v106

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v120, v120, v5

    .line 208
    move-object/from16 v0, v108

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v109, v108

    .line 209
    check-cast v109, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 210
    .local v109, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v125

    move-object/from16 v1, v109

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v110

    .line 211
    .local v110, lmsFirstLine:I
    invoke-interface/range {v109 .. v109}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v98, v110, v5

    .line 199
    .end local v109           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v110           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v106, v106, 0x1

    goto :goto_3

    .line 169
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v80           #DEFAULT_DIR:I
    .end local v97           #firstWidth:I
    .end local v98           #firstWidthLineLimit:I
    .end local v106           #i:I
    .end local v108           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v111           #measured:Landroid/text/MeasuredText;
    .end local v120           #restWidth:I
    .end local v121           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v125           #spanned:Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 188
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v80       #DEFAULT_DIR:I
    .restart local v111       #measured:Landroid/text/MeasuredText;
    .restart local v125       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 215
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v97       #firstWidth:I
    .restart local v98       #firstWidthLineLimit:I
    .restart local v106       #i:I
    .restart local v120       #restWidth:I
    .restart local v121       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 217
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 218
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 220
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 224
    :cond_7
    const/16 v106, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_9

    .line 225
    aget-object v5, v16, v106

    move-object/from16 v0, v125

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v113

    .line 227
    .local v113, o:I
    move/from16 v0, v113

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v106

    .line 224
    :goto_5
    add-int/lit8 v106, v106, 0x1

    goto :goto_4

    .line 235
    :cond_8
    aput v13, v17, v106

    goto :goto_5

    .line 241
    .end local v106           #i:I
    .end local v113           #o:I
    .end local v121           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v111

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 242
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 243
    .local v27, chs:[C
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 244
    .local v28, widths:[F
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 245
    .local v21, chdirs:[B
    move-object/from16 v0, v111

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 246
    .local v22, dir:I
    move-object/from16 v0, v111

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 248
    .local v23, easy:Z
    move/from16 v132, v97

    .line 250
    .local v132, width:I
    const/16 v62, 0x0

    .line 251
    .local v62, w:F
    move/from16 v7, v29

    .line 253
    .local v7, here:I
    move/from16 v114, v29

    .line 254
    .local v114, ok:I
    move/from16 v119, v62

    .line 255
    .local v119, okWidth:F
    const/16 v115, 0x0

    .local v115, okAscent:I
    const/16 v117, 0x0

    .local v117, okDescent:I
    const/16 v118, 0x0

    .local v118, okTop:I
    const/16 v116, 0x0

    .line 257
    .local v116, okBottom:I
    move/from16 v99, v29

    .line 258
    .local v99, fit:I
    move/from16 v100, v62

    .line 259
    .local v100, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 261
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 262
    .local v19, hasTabOrEmoji:Z
    const/16 v105, 0x0

    .line 263
    .local v105, hasTab:Z
    const/16 v128, 0x0

    .line 265
    .local v128, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v124, v29

    .local v124, spanStart:I
    move/from16 v122, v124

    .line 266
    .local v122, spanEnd:I
    :goto_6
    move/from16 v0, v124

    move/from16 v1, v38

    if-ge v0, v1, :cond_33

    .line 268
    move/from16 v0, v124

    move/from16 v1, v122

    if-ne v0, v1, :cond_a

    .line 269
    if-nez v125, :cond_1f

    .line 270
    move/from16 v122, v38

    .line 275
    :goto_7
    sub-int v123, v122, v124

    .line 276
    .local v123, spanLen:I
    if-nez v125, :cond_20

    .line 277
    move-object/from16 v0, v111

    move-object/from16 v1, p4

    move/from16 v2, v123

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 287
    .end local v123           #spanLen:I
    :cond_a
    :goto_8
    move/from16 v112, v122

    .line 289
    .local v112, nextSpanStart:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v104, v0

    .line 290
    .local v104, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v102, v0

    .line 291
    .local v102, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v101, v0

    .line 292
    .local v101, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v103, v0

    .line 294
    .local v103, fmDescent:I
    const/16 v95, 0x0

    .line 295
    .local v95, char_count:I
    const/16 v127, 0x0

    .line 298
    .local v127, start_index:I
    move/from16 v107, v124

    .local v107, j:I
    :goto_9
    move/from16 v0, v107

    move/from16 v1, v122

    if-ge v0, v1, :cond_1e

    .line 299
    sub-int v5, v107, v29

    aget-char v94, v27, v5

    .line 302
    .local v94, c:C
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableHarfbuzz"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 303
    if-nez v95, :cond_b

    .line 304
    sub-int v127, v107, v29

    .line 306
    :cond_b
    add-int/lit8 v95, v95, 0x1

    .line 310
    :cond_c
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_21

    .line 361
    :goto_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableHarfbuzz"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->isIndicChar(C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 363
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v127

    move/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureTextExt([CII)F

    move-result v62

    .line 366
    :cond_d
    const/16 v129, 0x0

    .line 367
    .local v129, tempWidth:F
    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v38

    if-ge v5, v0, :cond_29

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v27

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_29

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v27, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->isIndianMatra(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 368
    add-int/lit8 v5, v95, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/TextPaint;->measureTextExt([CII)F

    move-result v129

    .line 376
    :cond_e
    :goto_b
    move/from16 v0, v132

    int-to-float v5, v0

    cmpl-float v5, v129, v5

    if-lez v5, :cond_f

    .line 377
    move/from16 v62, v129

    .line 384
    .end local v129           #tempWidth:F
    :cond_f
    move/from16 v0, v132

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-gtz v5, :cond_2b

    .line 385
    move/from16 v100, v62

    .line 386
    add-int/lit8 v99, v107, 0x1

    .line 388
    move/from16 v0, v104

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    .line 389
    move/from16 v41, v104

    .line 390
    :cond_10
    move/from16 v0, v101

    move/from16 v1, v39

    if-ge v0, v1, :cond_11

    .line 391
    move/from16 v39, v101

    .line 392
    :cond_11
    move/from16 v0, v103

    move/from16 v1, v40

    if-le v0, v1, :cond_12

    .line 393
    move/from16 v40, v103

    .line 394
    :cond_12
    move/from16 v0, v102

    move/from16 v1, v42

    if-le v0, v1, :cond_13

    .line 395
    move/from16 v42, v102

    .line 413
    :cond_13
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_19

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_19

    const/16 v5, 0x2e

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2c

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x3a

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x3b

    move/from16 v0, v94

    if-ne v0, v5, :cond_16

    :cond_14
    add-int/lit8 v5, v107, -0x1

    if-lt v5, v7, :cond_15

    add-int/lit8 v5, v107, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_19

    add-int/lit8 v5, v107, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_16
    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_19

    add-int/lit8 v5, v107, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_1d

    add-int/lit8 v5, v107, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 422
    :cond_19
    move/from16 v119, v62

    .line 423
    add-int/lit8 v114, v107, 0x1

    .line 425
    move/from16 v0, v41

    move/from16 v1, v118

    if-ge v0, v1, :cond_1a

    .line 426
    move/from16 v118, v41

    .line 427
    :cond_1a
    move/from16 v0, v39

    move/from16 v1, v115

    if-ge v0, v1, :cond_1b

    .line 428
    move/from16 v115, v39

    .line 429
    :cond_1b
    move/from16 v0, v40

    move/from16 v1, v117

    if-le v0, v1, :cond_1c

    .line 430
    move/from16 v117, v40

    .line 431
    :cond_1c
    move/from16 v0, v42

    move/from16 v1, v116

    if-le v0, v1, :cond_1d

    .line 432
    move/from16 v116, v42

    .line 503
    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_32

    .line 266
    .end local v94           #c:C
    :cond_1e
    move/from16 v124, v112

    goto/16 :goto_6

    .line 272
    .end local v95           #char_count:I
    .end local v101           #fmAscent:I
    .end local v102           #fmBottom:I
    .end local v103           #fmDescent:I
    .end local v104           #fmTop:I
    .end local v107           #j:I
    .end local v112           #nextSpanStart:I
    .end local v127           #start_index:I
    :cond_1f
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move/from16 v1, v124

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v122

    goto/16 :goto_7

    .line 279
    .restart local v123       #spanLen:I
    :cond_20
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move/from16 v1, v124

    move/from16 v2, v122

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/MetricAffectingSpan;

    .line 281
    .local v126, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move-object/from16 v1, v125

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    .end local v126           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v126, [Landroid/text/style/MetricAffectingSpan;

    .line 283
    .restart local v126       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v111

    move-object/from16 v1, p4

    move-object/from16 v2, v126

    move/from16 v3, v123

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    .line 312
    .end local v123           #spanLen:I
    .end local v126           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v94       #c:C
    .restart local v95       #char_count:I
    .restart local v101       #fmAscent:I
    .restart local v102       #fmBottom:I
    .restart local v103       #fmDescent:I
    .restart local v104       #fmTop:I
    .restart local v107       #j:I
    .restart local v112       #nextSpanStart:I
    .restart local v127       #start_index:I
    :cond_21
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_24

    .line 313
    if-nez v105, :cond_22

    .line 314
    const/16 v105, 0x1

    .line 315
    const/16 v19, 0x1

    .line 316
    if-eqz v125, :cond_22

    .line 318
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/TabStopSpan;

    .line 320
    .local v126, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v126

    array-length v5, v0

    if-lez v5, :cond_22

    .line 321
    new-instance v128, Landroid/text/Layout$TabStops;

    .end local v128           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v128

    move-object/from16 v1, v126

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 325
    .end local v126           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v128       #tabStops:Landroid/text/Layout$TabStops;
    :cond_22
    if-eqz v128, :cond_23

    .line 326
    move-object/from16 v0, v128

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_a

    .line 328
    :cond_23
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_a

    .line 330
    :cond_24
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_28

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_28

    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_28

    .line 332
    sub-int v5, v107, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v96

    .line 334
    .local v96, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v96

    if-lt v0, v5, :cond_27

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v96

    if-gt v0, v5, :cond_27

    .line 335
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 337
    .local v93, bm:Landroid/graphics/Bitmap;
    if-eqz v93, :cond_26

    .line 340
    if-nez v125, :cond_25

    .line 341
    move-object/from16 v130, p4

    .line 346
    .local v130, whichPaint:Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v130 .. v130}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v131, v5, v6

    .line 348
    .local v131, wid:F
    add-float v62, v62, v131

    .line 349
    const/16 v19, 0x1

    .line 350
    add-int/lit8 v107, v107, 0x1

    .line 351
    goto/16 :goto_a

    .line 343
    .end local v130           #whichPaint:Landroid/graphics/Paint;
    .end local v131           #wid:F
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v130, v0

    .restart local v130       #whichPaint:Landroid/graphics/Paint;
    goto :goto_d

    .line 352
    .end local v130           #whichPaint:Landroid/graphics/Paint;
    :cond_26
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 355
    .end local v93           #bm:Landroid/graphics/Bitmap;
    :cond_27
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 358
    .end local v96           #emoji:I
    :cond_28
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 369
    .restart local v129       #tempWidth:F
    :cond_29
    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v38

    if-ge v5, v0, :cond_e

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v27

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_e

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v27, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->isHalant(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 370
    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x3

    move/from16 v0, v38

    if-ge v5, v0, :cond_2a

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, v27

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2a

    sub-int v5, v107, v29

    add-int/lit8 v5, v5, 0x3

    aget-char v5, v27, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->isIndianMatra(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 371
    add-int/lit8 v5, v95, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/TextPaint;->measureTextExt([CII)F

    move-result v129

    goto/16 :goto_b

    .line 373
    :cond_2a
    add-int/lit8 v5, v95, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/TextPaint;->measureTextExt([CII)F

    move-result v129

    goto/16 :goto_b

    .line 435
    .end local v129           #tempWidth:F
    :cond_2b
    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_2e

    const/16 v34, 0x1

    .line 440
    .local v34, moreChars:Z
    :goto_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableHarfbuzz"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 441
    const/16 v95, 0x0

    .line 445
    :cond_2c
    move/from16 v0, v114

    if-eq v0, v7, :cond_2f

    .line 447
    const/16 v5, 0x20

    move/from16 v0, v94

    if-ne v0, v5, :cond_2d

    add-int/lit8 v114, v107, 0x1

    .line 455
    :cond_2d
    move/from16 v8, v114

    .line 456
    .local v8, endPos:I
    move/from16 v9, v115

    .line 457
    .local v9, above:I
    move/from16 v10, v117

    .line 458
    .local v10, below:I
    move/from16 v11, v118

    .line 459
    .local v11, top:I
    move/from16 v12, v116

    .line 460
    .local v12, bottom:I
    move/from16 v32, v119

    .local v32, currentTextWidth:F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 477
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 483
    move v7, v8

    .line 485
    move/from16 v0, v124

    if-ge v7, v0, :cond_31

    .line 489
    move/from16 v112, v7

    move/from16 v107, v7

    .line 494
    :goto_10
    move/from16 v99, v7

    move/from16 v114, v7

    .line 495
    const/16 v62, 0x0

    .line 496
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 497
    const/16 v116, 0x0

    move/from16 v118, v116

    move/from16 v117, v116

    move/from16 v115, v116

    .line 499
    add-int/lit8 v98, v98, -0x1

    if-gtz v98, :cond_1d

    .line 500
    move/from16 v132, v120

    goto/16 :goto_c

    .line 435
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_2e
    const/16 v34, 0x0

    goto :goto_e

    .line 461
    .restart local v34       #moreChars:Z
    :cond_2f
    move/from16 v0, v99

    if-eq v0, v7, :cond_30

    .line 462
    move/from16 v8, v99

    .line 463
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 464
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 465
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 466
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 467
    .restart local v12       #bottom:I
    move/from16 v32, v100

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 469
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_30
    add-int/lit8 v8, v7, 0x1

    .line 470
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 471
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 472
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 473
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 474
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 491
    :cond_31
    add-int/lit8 v107, v7, -0x1

    goto :goto_10

    .line 298
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_32
    add-int/lit8 v107, v107, 0x1

    goto/16 :goto_9

    .line 509
    .end local v94           #c:C
    .end local v95           #char_count:I
    .end local v101           #fmAscent:I
    .end local v102           #fmBottom:I
    .end local v103           #fmDescent:I
    .end local v104           #fmTop:I
    .end local v107           #j:I
    .end local v112           #nextSpanStart:I
    .end local v127           #start_index:I
    :cond_33
    move/from16 v0, v38

    if-eq v0, v7, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_35

    .line 510
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_34

    .line 511
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 513
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 514
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 515
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 516
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 521
    :cond_34
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_39

    const/16 v64, 0x1

    :goto_11
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 533
    :cond_35
    move/from16 v29, v38

    .line 535
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_3a

    .line 539
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v97           #firstWidth:I
    .end local v98           #firstWidthLineLimit:I
    .end local v99           #fit:I
    .end local v100           #fitWidth:F
    .end local v105           #hasTab:Z
    .end local v114           #ok:I
    .end local v115           #okAscent:I
    .end local v116           #okBottom:I
    .end local v117           #okDescent:I
    .end local v118           #okTop:I
    .end local v119           #okWidth:F
    .end local v120           #restWidth:I
    .end local v122           #spanEnd:I
    .end local v124           #spanStart:I
    .end local v128           #tabStops:Landroid/text/Layout$TabStops;
    .end local v132           #width:I
    :cond_36
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_37

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_38

    .line 543
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 545
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 556
    :cond_38
    return-void

    .line 521
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v97       #firstWidth:I
    .restart local v98       #firstWidthLineLimit:I
    .restart local v99       #fit:I
    .restart local v100       #fitWidth:F
    .restart local v105       #hasTab:Z
    .restart local v114       #ok:I
    .restart local v115       #okAscent:I
    .restart local v116       #okBottom:I
    .restart local v117       #okDescent:I
    .restart local v118       #okTop:I
    .restart local v119       #okWidth:F
    .restart local v120       #restWidth:I
    .restart local v122       #spanEnd:I
    .restart local v124       #spanStart:I
    .restart local v128       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v132       #width:I
    :cond_39
    const/16 v64, 0x0

    goto/16 :goto_11

    .line 183
    :cond_3a
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 962
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 966
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 971
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 975
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 942
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 922
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 923
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 927
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 947
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 886
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 887
    .local v1, high:I
    const/4 v3, -0x1

    .line 889
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 890
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 891
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 892
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 893
    move v1, v0

    goto :goto_0

    .line 895
    :cond_0
    move v3, v0

    goto :goto_0

    .line 898
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 899
    const/4 v3, 0x0

    .line 901
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 932
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 912
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 913
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 915
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 917
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 937
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isHalant(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1004
    const/16 v0, 0xccd

    if-ne p1, v0, :cond_0

    .line 1005
    const/4 v0, 0x1

    .line 1007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndianMatra(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 993
    const/16 v0, 0xcbe

    if-lt p1, v0, :cond_0

    const/16 v0, 0xccc

    if-le p1, v0, :cond_4

    :cond_0
    const/16 v0, 0xc82

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc83

    if-le p1, v0, :cond_4

    :cond_1
    const/16 v0, 0xcd5

    if-lt p1, v0, :cond_2

    const/16 v0, 0xcd6

    if-le p1, v0, :cond_4

    :cond_2
    const/16 v0, 0xce2

    if-lt p1, v0, :cond_3

    const/16 v0, 0xce3

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xcbc

    if-ne p1, v0, :cond_5

    .line 998
    :cond_4
    const/4 v0, 0x1

    .line 1000
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndicChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1021
    const/16 v0, 0x900

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd7f

    if-gt p1, v0, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 985
    return-void
.end method

.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 486
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 437
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 438
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 440
    .local v4, line2:I
    if-ne v3, v4, :cond_3

    .line 443
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 444
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 446
    .local v1, h2:F
    if-gez p1, :cond_2

    .line 449
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1

    .line 474
    .end local v0           #h1:F
    .end local v1           #h2:F
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    .restart local p2
    :cond_1
    move p2, p3

    .line 452
    goto :goto_0

    .line 456
    :cond_2
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_0

    move p2, p3

    .line 459
    goto :goto_0

    .line 468
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 469
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 471
    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    .line 472
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 474
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 302
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 303
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 305
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 308
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 310
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 311
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 316
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 323
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 313
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 318
    .end local v3           #move:I
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 319
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 331
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 332
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 334
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 335
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 339
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 348
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 350
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 351
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 355
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 121
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 122
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 123
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 359
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 360
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 361
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 365
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 366
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 367
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 273
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 274
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 276
    .local v2, line:I
    if-lez v2, :cond_2

    .line 279
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 281
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 282
    .local v1, h:F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 287
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 294
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 284
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 289
    .end local v3           #move:I
    :cond_2
    if-eqz v0, :cond_0

    .line 290
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    .line 419
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 420
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 421
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 423
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_1

    .line 424
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 428
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 431
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 51
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 54
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 40
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 43
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 183
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 184
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 186
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 187
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 188
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 190
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 192
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 216
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 196
    goto :goto_0

    .line 198
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 200
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_0

    .line 203
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 205
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 206
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 211
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 212
    goto :goto_0

    .line 208
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 225
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 226
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 228
    .local v0, end:I
    if-eq v1, v0, :cond_0

    .line 229
    const/4 v4, -0x1

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 240
    :goto_0
    return v3

    .line 232
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 234
    .local v2, to:I
    if-eq v2, v0, :cond_1

    .line 235
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 240
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 251
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 253
    .local v0, end:I
    if-eq v1, v0, :cond_0

    .line 254
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 265
    :goto_0
    return v3

    .line 257
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 259
    .local v2, to:I
    if-eq v2, v0, :cond_1

    .line 260
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 265
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 407
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 408
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 409
    if-eqz p2, :cond_1

    .line 410
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 415
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 412
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 371
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 372
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 373
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 393
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 394
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 395
    if-eqz p2, :cond_1

    .line 396
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 401
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 398
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 377
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 378
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 379
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 143
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 145
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 146
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 147
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 149
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 151
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 175
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 155
    goto :goto_0

    .line 157
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 159
    .local v2, line:I
    if-lez v2, :cond_0

    .line 162
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 164
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 165
    .local v1, h:F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 170
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 171
    goto :goto_0

    .line 167
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 129
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 130
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 115
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 107
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 108
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 75
    .local v1, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 78
    .local v0, oend:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {p0, p2, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 80
    .local v2, textAfterCursor:Ljava/lang/CharSequence;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 81
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe31

    if-eq v3, v4, :cond_1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe34

    if-lt v3, v4, :cond_0

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe39

    if-le v3, v4, :cond_1

    :cond_0
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe47

    if-lt v3, v4, :cond_2

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe4c

    if-gt v3, v4, :cond_2

    .line 86
    :cond_1
    if-ne p2, p1, :cond_5

    .line 87
    add-int/lit8 p1, p2, 0x1

    .line 95
    .end local v2           #textAfterCursor:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 96
    :cond_3
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v4, 0x222

    invoke-interface {p0, v3, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v4, 0x22

    invoke-interface {p0, v3, p2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    :cond_4
    return-void

    .line 89
    .restart local v2       #textAfterCursor:Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

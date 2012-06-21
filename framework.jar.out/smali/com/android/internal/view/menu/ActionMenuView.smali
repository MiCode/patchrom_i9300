.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final DIVIDER_PADDING_ON_LANDSCAPE:I = 0x6

.field static final DIVIDER_PADDING_ON_VERTICAL:I = 0xa

.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field static final RIGHT_PADDING_ON_LANDSCAPE_MODE_FOR_TOUCHWIZ:I = 0xf

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"

.field static final TW_GENERATED_ITEM_PADDING:I = 0x6


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mIsParentThemeDeviceDefault:Z

.field private mLandscapeDividerPadding:I

.field private mLandscapePaddingRight:I

.field private mLandscapePaddingRightSet:Z

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mTWGeneratedItemPadding:I

.field private mVerticalDividerPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v9, 0x258

    const/4 v8, 0x2

    const/high16 v7, 0x40c0

    const/4 v5, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 82
    .local v0, density:F
    const/high16 v3, 0x4260

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 83
    const/high16 v3, 0x4080

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 87
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10103ec

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 89
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    .line 93
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_3

    .line 94
    const/high16 v3, 0x4170

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapePaddingRight:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 96
    .local v2, smallestScreenWidthDp:I
    const/16 v3, 0x140

    if-le v2, v3, :cond_1

    if-ge v2, v9, :cond_1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapePaddingRightSet:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapePaddingRight:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    .line 105
    :cond_1
    if-ge v2, v9, :cond_2

    .line 106
    mul-float v3, v7, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    .line 107
    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_4

    .line 109
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setDividerPadding(I)V

    .line 117
    :cond_2
    :goto_0
    mul-float v3, v7, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWGeneratedItemPadding:I

    .line 120
    .end local v2           #smallestScreenWidthDp:I
    :cond_3
    return-void

    .line 112
    .restart local v2       #smallestScreenWidthDp:I
    :cond_4
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setDividerPadding(I)V

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 12
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 454
    .local v7, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 456
    .local v2, childHeightSize:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 457
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 459
    .local v3, childHeightSpec:I
    const/4 v0, 0x0

    .line 460
    .local v0, cellsUsed:I
    if-lez p2, :cond_0

    .line 461
    mul-int v10, p1, p2

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 463
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 466
    .local v8, measuredWidth:I
    div-int v0, v8, p1

    .line 467
    rem-int v10, v8, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 470
    .end local v4           #childWidthSpec:I
    .end local v8           #measuredWidth:I
    :cond_0
    instance-of v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1

    move-object v10, p0

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 472
    .local v6, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    iget-boolean v10, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 473
    .local v5, expandable:Z
    :goto_1
    iput-boolean v5, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 475
    iput v0, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 476
    mul-int v9, v0, p1

    .line 477
    .local v9, targetWidth:I
    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 479
    return v0

    .line 470
    .end local v5           #expandable:Z
    .end local v6           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v9           #targetWidth:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 472
    .restart local v6       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 217
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 218
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 219
    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 221
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 222
    .local v36, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 224
    .local v18, heightPadding:I
    sub-int v37, v37, v36

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 228
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 230
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_0

    .line 232
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 435
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 238
    .local v5, cellSize:I
    move v8, v4

    .line 239
    .local v8, cellsRemaining:I
    const/16 v25, 0x0

    .line 240
    .local v25, maxChildHeight:I
    const/16 v24, 0x0

    .line 241
    .local v24, maxCellsUsed:I
    const/4 v14, 0x0

    .line 242
    .local v14, expandableItemCount:I
    const/16 v34, 0x0

    .line 243
    .local v34, visibleItemCount:I
    const/16 v16, 0x0

    .line 246
    .local v16, hasOverflow:Z
    const-wide/16 v32, 0x0

    .line 248
    .local v32, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 249
    .local v12, childCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v12, :cond_9

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 251
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 249
    :cond_1
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 253
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 254
    .local v22, isGeneratedItem:Z
    add-int/lit8 v34, v34, 0x1

    .line 256
    if-eqz v22, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 262
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 263
    .local v23, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 264
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 265
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 266
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 267
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 268
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 269
    if-eqz v22, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    .line 273
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 278
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    .line 280
    .local v7, cellsAvailable:I
    :goto_4
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 283
    .local v9, cellsUsed:I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 284
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 285
    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    .line 287
    :cond_6
    sub-int/2addr v8, v9

    .line 288
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 289
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 269
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_7
    const/16 v38, 0x0

    goto :goto_3

    :cond_8
    move v7, v8

    .line 278
    goto :goto_4

    .line 294
    .end local v11           #child:Landroid/view/View;
    .end local v22           #isGeneratedItem:Z
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 299
    .local v10, centerSingleExpandedItem:Z
    :goto_5
    const/16 v30, 0x0

    .line 300
    .local v30, needsExpansion:Z
    :goto_6
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    .line 301
    const v26, 0x7fffffff

    .line 302
    .local v26, minCells:I
    const-wide/16 v27, 0x0

    .line 303
    .local v27, minCellsAt:J
    const/16 v29, 0x0

    .line 304
    .local v29, minCellsItemCount:I
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v12, :cond_e

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 306
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 309
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    .line 304
    :cond_a
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 294
    .end local v10           #centerSingleExpandedItem:Z
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    .end local v30           #needsExpansion:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 312
    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v11       #child:Landroid/view/View;
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    .restart local v30       #needsExpansion:Z
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 313
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 314
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 315
    const/16 v29, 0x1

    goto :goto_8

    .line 316
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 317
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 318
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 323
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_e
    or-long v32, v32, v27

    .line 325
    move/from16 v0, v29

    if-le v0, v8, :cond_14

    .line 359
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    .line 360
    .local v31, singleItem:Z
    :goto_9
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 362
    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 364
    .local v13, expandCount:F
    if-nez v31, :cond_12

    .line 366
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 367
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 368
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 370
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 371
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 372
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 376
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 379
    .local v15, extraPixels:I
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v12, :cond_20

    .line 380
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    .line 379
    :cond_13
    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 328
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v31           #singleItem:Z
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    :cond_14
    add-int/lit8 v26, v26, 0x1

    .line 330
    const/16 v21, 0x0

    :goto_d
    move/from16 v0, v21

    if-ge v0, v12, :cond_18

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 332
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 333
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    .line 335
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 330
    :cond_15
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 339
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v38, v0

    if-nez v38, :cond_17

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 348
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 349
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 353
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v30, 0x1

    .line 354
    goto/16 :goto_6

    .line 359
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 376
    .restart local v13       #expandCount:F
    .restart local v31       #singleItem:Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 382
    .restart local v15       #extraPixels:I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 383
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 384
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 386
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 387
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 388
    if-nez v21, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1c

    .line 391
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 393
    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 394
    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    .line 395
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 396
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 397
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 398
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 403
    :cond_1e
    if-eqz v21, :cond_1f

    .line 404
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 406
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 407
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 412
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    .line 416
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_21
    if-eqz v30, :cond_23

    .line 417
    sub-int v38, v19, v18

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 418
    .local v20, heightSpec:I
    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    if-ge v0, v12, :cond_23

    .line 419
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 420
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 422
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    .line 418
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 424
    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 425
    .local v35, width:I
    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 429
    .end local v11           #child:Landroid/view/View;
    .end local v20           #heightSpec:I
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #width:I
    :cond_23
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    .line 430
    move/from16 v19, v25

    .line 433
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 434
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 603
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 578
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 580
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 581
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 586
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 591
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 592
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 593
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 594
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 598
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 608
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 609
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 626
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 627
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 631
    .local v2, result:Z
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    .line 632
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 633
    const/4 v2, 0x1

    .line 635
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_1

    .line 636
    const/4 v2, 0x0

    .line 639
    :cond_1
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 640
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_2

    if-nez p1, :cond_2

    .line 641
    const/4 v2, 0x1

    .line 643
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 644
    const/4 v2, 0x0

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_4

    .line 649
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 651
    :cond_4
    if-lez p1, :cond_5

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_5

    .line 652
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 654
    :cond_5
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 622
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapePaddingRightSet:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapePaddingRight:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 147
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_4

    .line 148
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->setDividerPadding(I)V

    .line 157
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 163
    :cond_2
    return-void

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    goto :goto_0

    .line 151
    :cond_4
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->setDividerPadding(I)V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 565
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 566
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 485
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 490
    .local v6, childCount:I
    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    .line 491
    .local v14, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 492
    .local v7, dividerWidth:I
    const/16 v17, 0x0

    .line 493
    .local v17, overflowWidth:I
    const/16 v16, 0x0

    .line 494
    .local v16, nonOverflowWidth:I
    const/4 v15, 0x0

    .line 495
    .local v15, nonOverflowCount:I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .line 496
    .local v27, widthRemaining:I
    const/4 v8, 0x0

    .line 497
    .local v8, hasOverflow:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 498
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 499
    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 497
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 504
    .local v18, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 505
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 507
    add-int v17, v17, v7

    .line 510
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 511
    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    .line 512
    .local v19, r:I
    sub-int v11, v19, v17

    .line 513
    .local v11, l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 514
    .local v24, t:I
    add-int v5, v24, v9

    .line 515
    .local v5, b:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 517
    sub-int v27, v27, v17

    .line 518
    const/4 v8, 0x1

    .line 519
    goto :goto_2

    .line 520
    .end local v5           #b:I
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v19           #r:I
    .end local v24           #t:I
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .line 521
    .local v20, size:I
    add-int v16, v16, v20

    .line 522
    sub-int v27, v27, v20

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 524
    add-int v16, v16, v7

    .line 526
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 530
    .end local v18           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #size:I
    .end local v25           #v:Landroid/view/View;
    :cond_6
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    .line 532
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 533
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 534
    .local v26, width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    .restart local v9       #height:I
    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    .line 536
    .local v13, midHorizontal:I
    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    .line 537
    .restart local v11       #l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 538
    .restart local v24       #t:I
    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 542
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v13           #midHorizontal:I
    .end local v24           #t:I
    .end local v25           #v:Landroid/view/View;
    .end local v26           #width:I
    :cond_7
    if-eqz v8, :cond_9

    const/16 v28, 0x0

    :goto_3
    sub-int v21, v15, v28

    .line 543
    .local v21, spacerCount:I
    const/16 v29, 0x0

    if-lez v21, :cond_a

    div-int v28, v27, v21

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 545
    .local v22, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v23

    .line 546
    .local v23, startLeft:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 548
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 549
    .local v12, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    iget-boolean v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 546
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 542
    .end local v12           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21           #spacerCount:I
    .end local v22           #spacerSize:I
    .end local v23           #startLeft:I
    .end local v25           #v:Landroid/view/View;
    :cond_9
    const/16 v28, 0x1

    goto :goto_3

    .line 543
    .restart local v21       #spacerCount:I
    :cond_a
    const/16 v28, 0x0

    goto :goto_4

    .line 553
    .restart local v12       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v22       #spacerSize:I
    .restart local v23       #startLeft:I
    .restart local v25       #v:Landroid/view/View;
    :cond_b
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    .line 554
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 555
    .restart local v26       #width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 556
    .restart local v9       #height:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 557
    .restart local v24       #t:I
    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 558
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 168
    iget-boolean v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 169
    .local v9, wasFormatted:Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x4000

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 171
    iget-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v9, v11, :cond_0

    .line 172
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 177
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 178
    .local v10, widthSize:I
    iget-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v10, v11, :cond_1

    .line 179
    iput v10, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 180
    iget-object v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 183
    :cond_1
    iget-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v11, :cond_3

    .line 184
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 213
    :goto_1
    return-void

    .line 169
    .end local v10           #widthSize:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 187
    .restart local v10       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    .line 188
    .local v3, childCount:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x109001a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 190
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 191
    .local v1, attrs:Landroid/util/AttributeSet;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {v11, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 194
    .local v5, itemLeftMargin:I
    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 197
    .local v6, itemRightMargin:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 198
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    .line 197
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 200
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 201
    .local v7, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 202
    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 205
    iget-boolean v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v11, :cond_4

    instance-of v11, v2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_4

    .line 206
    iget v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWGeneratedItemPadding:I

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWGeneratedItemPadding:I

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 211
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 574
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 124
    return-void
.end method

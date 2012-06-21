.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field private final mSmallestScreenWidthDp:I

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const v0, 0x1030089

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 310
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mSmallestScreenWidthDp:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 145
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 149
    .local v0, entry:Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 150
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 240
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 242
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 221
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    .line 169
    .local v2, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 170
    invoke-virtual {p0, v5}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, child:Landroid/view/View;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v6, v7

    .line 173
    .local v4, childRight:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v6, v7

    .line 174
    .local v1, childBottom:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0, v6, v7, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 177
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 179
    .local v3, childLeft:I
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getMeasuredWidth()I

    move-result v4

    .line 180
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0, v3, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 169
    .end local v3           #childLeft:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v4           #childRight:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    .line 189
    .local v1, count:I
    const/4 v3, 0x0

    .line 190
    .local v3, maxHeight:I
    const/4 v4, 0x0

    .line 191
    .local v4, maxWidth:I
    const/4 v5, 0x0

    .line 194
    .local v5, measuredChildState:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 195
    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 197
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 207
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 210
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 211
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 213
    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 216
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 95
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 102
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 103
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .parameter "visibleCrumbs"

    .prologue
    .line 110
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 114
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 142
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 130
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 131
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 161
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 162
    return-void
.end method

.method updateCrumbs()V
    .locals 22

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 248
    .local v7, fm:Landroid/app/FragmentManager;
    invoke-virtual {v7}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v13

    .line 249
    .local v13, numEntries:I
    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v14

    .line 250
    .local v14, numPreEntries:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    .line 251
    .local v15, numViews:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    add-int v20, v13, v14

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 252
    if-ge v9, v14, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 255
    .local v4, bse:Landroid/app/FragmentManager$BackStackEntry;
    :goto_1
    if-ge v9, v15, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 257
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 258
    .local v16, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    if-eq v0, v4, :cond_2

    .line 259
    move v11, v9

    .local v11, j:I
    :goto_2
    if-ge v11, v15, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 259
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 252
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    .end local v11           #j:I
    .end local v16           #tag:Ljava/lang/Object;
    .end local v18           #v:Landroid/view/View;
    :cond_0
    sub-int v20, v9, v14

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    .line 262
    .restart local v4       #bse:Landroid/app/FragmentManager$BackStackEntry;
    .restart local v11       #j:I
    .restart local v16       #tag:Ljava/lang/Object;
    .restart local v18       #v:Landroid/view/View;
    :cond_1
    move v15, v9

    .line 265
    .end local v11           #j:I
    .end local v16           #tag:Ljava/lang/Object;
    .end local v18           #v:Landroid/view/View;
    :cond_2
    if-lt v9, v15, :cond_4

    .line 266
    const v8, 0x1090041

    .line 267
    .local v8, fragmentBreadCrumbItemLayout:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v20

    sget-object v21, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 269
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v20, 0xfa

    const v21, 0x1090041

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 274
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 278
    .local v10, item:Landroid/view/View;
    const v20, 0x1020016

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 279
    .local v17, text:Landroid/widget/TextView;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 281
    if-nez v9, :cond_3

    .line 282
    const v20, 0x1020236

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v8           #fragmentBreadCrumbItemLayout:I
    .end local v10           #item:Landroid/view/View;
    .end local v17           #text:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 271
    .restart local v3       #a:Landroid/content/res/TypedArray;
    .restart local v8       #fragmentBreadCrumbItemLayout:I
    :catch_0
    move-exception v6

    .line 272
    .local v6, e:Ljava/lang/Exception;
    const-string v20, "FragmentBreadCrumbs"

    const-string v21, "fragmentBreadCrumbItemLayout not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 288
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fragmentBreadCrumbItemLayout:I
    :cond_5
    add-int v19, v13, v14

    .line 289
    .local v19, viewI:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    .line 290
    :goto_4
    move/from16 v0, v19

    if-le v15, v0, :cond_6

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 292
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 295
    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v15, :cond_b

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 298
    .local v5, child:Landroid/view/View;
    const v20, 0x1020016

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    add-int/lit8 v20, v15, -0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    const/16 v20, 0x8

    :goto_7
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const v20, 0x1020236

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 304
    .local v12, leftIcon:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move/from16 v0, v20

    if-le v9, v0, :cond_a

    if-eqz v9, :cond_a

    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .end local v12           #leftIcon:Landroid/view/View;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 298
    :cond_8
    const/16 v20, 0x0

    goto :goto_6

    .line 301
    :cond_9
    const/16 v20, 0x0

    goto :goto_7

    .line 304
    .restart local v12       #leftIcon:Landroid/view/View;
    :cond_a
    const/16 v20, 0x8

    goto :goto_8

    .line 308
    .end local v5           #child:Landroid/view/View;
    .end local v12           #leftIcon:Landroid/view/View;
    :cond_b
    return-void
.end method

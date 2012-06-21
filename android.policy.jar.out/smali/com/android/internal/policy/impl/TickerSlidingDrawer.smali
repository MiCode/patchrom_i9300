.class public Lcom/android/internal/policy/impl/TickerSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "TickerSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mClosing:Z

.field private mContent:Landroid/view/View;

.field private final mContentFrame:Landroid/graphics/Rect;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mLogoButton:Landroid/widget/ImageView;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private final mTapThreshold:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 109
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 127
    new-instance v5, Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/TickerSlidingDrawer;Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 148
    const-string v5, "Ticker"

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    .line 210
    sget-object v5, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 213
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    .line 214
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    .line 215
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    .line 216
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAllowSingleTap:Z

    .line 217
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimateOnClick:Z

    .line 219
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 220
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 221
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 213
    goto :goto_0

    .line 225
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 226
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 227
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_2
    if-ne v3, v1, :cond_3

    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_3
    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleId:I

    .line 237
    iput v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentId:I

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 240
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    .line 241
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumTapVelocity:I

    .line 242
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    .line 243
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    .line 244
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    .line 245
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityUnits:I

    .line 247
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 250
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    .line 535
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    .line 536
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    .line 540
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    .line 541
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 871
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 878
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_2

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 882
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 732
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->incrementAnimation()V

    .line 734
    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 735
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 736
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    .line 747
    :cond_0
    :goto_1
    return-void

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 737
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 738
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 741
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    .line 742
    iget-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 751
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 752
    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    .line 753
    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 754
    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 755
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    .line 756
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 757
    iput-wide v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 758
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 618
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 620
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 621
    if-ne p1, v9, :cond_0

    .line 622
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    .line 681
    :goto_0
    return-void

    .line 624
    :cond_0
    if-ne p1, v8, :cond_1

    .line 625
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 630
    .local v6, top:I
    sub-int v1, p1, v6

    .line 631
    .local v1, deltaY:I
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 632
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 636
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 638
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 639
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 641
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 642
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 644
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 645
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 648
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 633
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 634
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 651
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 652
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 654
    :cond_5
    if-ne p1, v8, :cond_6

    .line 655
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 659
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 660
    .local v4, left:I
    sub-int v0, p1, v4

    .line 661
    .local v0, deltaX:I
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 662
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 666
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 668
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 669
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 671
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 672
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 674
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 675
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 678
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 663
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    .line 664
    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 889
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 544
    int-to-float v2, p1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    .line 545
    iput p2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 547
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 548
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 553
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 554
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 555
    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 583
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 584
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 585
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 586
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 587
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 589
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->stopTracking()V

    .line 590
    return-void

    .line 548
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 559
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 560
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 561
    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 565
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 569
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 570
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 571
    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 565
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 576
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 577
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 578
    iput v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 684
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 715
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 691
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    .line 693
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    .line 694
    .local v0, childHeight:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 695
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 697
    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 711
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 712
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 714
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 700
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 701
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 702
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 704
    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 593
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    .line 594
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 595
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 596
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 597
    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 598
    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 599
    iget v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    .line 601
    iget v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    .line 602
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 603
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 605
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 606
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 607
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 615
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 595
    goto :goto_0

    .line 599
    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 609
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 610
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    .line 611
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 719
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 729
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 836
    .local v0, scrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 839
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose(I)V

    .line 841
    if-eqz v0, :cond_1

    .line 842
    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 844
    :cond_1
    return-void

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 858
    .local v0, scrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 861
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen(I)V

    .line 863
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 865
    if-eqz v0, :cond_1

    .line 866
    invoke-interface {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 868
    :cond_1
    return-void

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen()V

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    .line 822
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 305
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 306
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    .line 308
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 310
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 311
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 313
    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 316
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 320
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 325
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 326
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getMinTickerHeights()I
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Math.abs(mBottomOffset)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    .line 972
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 254
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$DrawerToggler;-><init>(Lcom/android/internal/policy/impl/TickerSlidingDrawer;Lcom/android/internal/policy/impl/TickerSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v0, 0x1020305

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    .line 271
    const v0, 0x1020300

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    .line 272
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    if-eqz v14, :cond_0

    .line 372
    const/4 v14, 0x0

    .line 442
    :goto_0
    return v14

    .line 375
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 377
    .local v1, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 378
    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 380
    .local v13, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 381
    .local v8, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 383
    .local v9, rawY:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 384
    .local v5, handleFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 386
    .local v3, contentFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 387
    .local v4, handle:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 389
    .local v2, content:Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 390
    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v14

    if-eqz v14, :cond_1

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_1

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_1

    .line 393
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    .line 394
    const/4 v14, 0x1

    goto :goto_0

    .line 396
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    .line 399
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 400
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v14, :cond_2

    float-to-int v14, v12

    float-to-int v15, v13

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 401
    const/4 v14, 0x0

    goto :goto_0

    .line 405
    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 406
    .local v10, refreshFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 407
    float-to-int v14, v8

    float-to-int v15, v13

    invoke-virtual {v10, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 408
    const/4 v14, 0x0

    goto :goto_0

    .line 412
    :cond_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 413
    .local v7, logoFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 414
    float-to-int v14, v8

    float-to-int v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 415
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 418
    :cond_4
    if-nez v1, :cond_6

    .line 419
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    .line 421
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/view/View;->setPressed(Z)V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareContent()V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v14, :cond_5

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v14}, Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 430
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v14, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v11

    .line 432
    .local v11, top:I
    float-to-int v14, v13

    sub-int/2addr v14, v11

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    .line 433
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    .line 439
    .end local v11           #top:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 442
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 435
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 436
    .local v6, left:I
    float-to-int v14, v12

    sub-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 332
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 367
    :goto_0
    return-void

    .line 336
    :cond_0
    sub-int v7, p4, p2

    .line 337
    .local v7, width:I
    sub-int v6, p5, p3

    .line 339
    .local v6, height:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 341
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 342
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 347
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 349
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 350
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 351
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    .line 353
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 364
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 365
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    .line 366
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 351
    .end local v2           #childTop:I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 356
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    .line 357
    .restart local v1       #childLeft:I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 359
    .restart local v2       #childTop:I
    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 356
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 277
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 279
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 280
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 282
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 283
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 287
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 289
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 291
    .local v1, height:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 299
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setMeasuredDimension(II)V

    .line 300
    return-void

    .line 294
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 295
    .local v4, width:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 447
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 448
    const/4 v9, 0x1

    .line 530
    :goto_0
    return v9

    .line 451
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_18

    .line 452
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 454
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 530
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 456
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 460
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 461
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 463
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 464
    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 467
    .local v7, xVelocity:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mVertical:Z

    .line 468
    .local v6, vertical:Z
    if-eqz v6, :cond_a

    .line 469
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .line 470
    .local v2, negative:Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 471
    neg-float v7, v7

    .line 473
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 474
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 486
    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 487
    .local v4, velocity:F
    if-eqz v2, :cond_6

    .line 488
    neg-float v4, v4

    .line 491
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 492
    .local v3, top:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 494
    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    .line 495
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    .line 502
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    .line 503
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->playSoundEffect(I)V

    .line 505
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    .line 506
    if-eqz v6, :cond_10

    .end local v3           #top:I
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 469
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 477
    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .line 478
    .restart local v2       #negative:Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    .line 479
    neg-float v8, v8

    .line 481
    :cond_b
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 482
    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 477
    .end local v2           #negative:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 495
    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    .line 515
    :cond_f
    if-eqz v6, :cond_15

    .end local v3           #top:I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_10
    move v3, v1

    .line 506
    goto :goto_5

    .line 508
    :cond_11
    if-eqz v6, :cond_12

    .end local v3           #top:I
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_12
    move v3, v1

    goto :goto_8

    .line 511
    :cond_13
    if-eqz v6, :cond_14

    .end local v3           #top:I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    .line 515
    goto :goto_7

    .line 518
    :cond_16
    if-eqz v6, :cond_17

    .end local v3           #top:I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_17
    move v3, v1

    goto :goto_a

    .line 523
    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_18
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mClosing:Z

    if-eqz v9, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 525
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-interface {v9}, Lcom/android/internal/policy/impl/TickerCallback;->closeTickerSlidingDrawer()V

    .line 526
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 530
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    .line 805
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    .line 808
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 809
    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1024
    iput p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mBottomOffset:I

    .line 1025
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;

    .line 922
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;

    .line 913
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 934
    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 1021
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->openDrawer()V

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    .line 776
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->requestLayout()V

    .line 777
    return-void

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->mLocked:Z

    .line 963
    return-void
.end method

.class Landroid/widget/AbsListView$TwFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4392
    iput-object p1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 4394
    iget-object v0, p1, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4401
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 4584
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4585
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4586
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4588
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4589
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4590
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 4591
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4601
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4602
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4603
    return-void

    .line 4593
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 4596
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4597
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4598
    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 4444
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4451
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4452
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4454
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4455
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4458
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4459
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)V

    .line 4461
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 4464
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_0

    .line 4576
    :goto_0
    return-void

    .line 4469
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 4470
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto :goto_0

    .line 4474
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v6, v9, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4475
    .local v6, prevBounceExtent:F
    iget-object v7, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4477
    .local v7, scroller:Landroid/widget/OverScroller;
    invoke-virtual {v7}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .line 4478
    .local v4, more:Z
    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v8

    .line 4484
    .local v8, y:I
    iget v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v9, v8

    .line 4488
    .local v1, delta:I
    if-lez v1, :cond_6

    .line 4491
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v10, v9, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4492
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4493
    .local v2, firstView:Landroid/view/View;
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4496
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v10}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v10}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4510
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 4512
    .local v0, atEnd:Z
    :cond_2
    cmpg-float v9, v6, v11

    if-gtz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v9, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v9, v9, v6

    if-ltz v9, :cond_4

    :cond_3
    cmpl-float v9, v6, v11

    if-ltz v9, :cond_5

    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v9, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v9, v9, v6

    if-lez v9, :cond_5

    .line 4515
    :cond_4
    const/4 v4, 0x0

    .line 4518
    :cond_5
    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    .line 4519
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->invalidate()V

    .line 4520
    iput v8, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4521
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4500
    .end local v0           #atEnd:Z
    :cond_6
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 4501
    .local v5, offsetToLast:I
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4503
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4504
    .local v3, lastView:Landroid/view/View;
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4507
    iget-object v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v10}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v10}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 4522
    .end local v3           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_7
    if-eqz v0, :cond_8

    .line 4523
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4559
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4464
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4412
    if-gez p1, :cond_0

    move v2, v6

    .line 4413
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4414
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4416
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4418
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4426
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4412
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4611
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4613
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4614
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4615
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4617
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 4432
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4433
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4434
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4435
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4437
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4438
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4432
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4628
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4629
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4630
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4631
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4637
    :goto_0
    return-void

    .line 4633
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4634
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

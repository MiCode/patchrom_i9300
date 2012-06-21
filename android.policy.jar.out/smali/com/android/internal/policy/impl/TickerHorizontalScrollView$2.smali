.class Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "TickerHorizontalScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 131
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 135
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #calls: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getScrollXAmount()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$100(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)I

    move-result v1

    .line 120
    .local v1, scrollXAmount:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->getWidth()I

    move-result v3

    sub-int v2, v1, v3

    .line 121
    .local v2, targetScrollX:I
    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$200(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollSpeedValue:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$200(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)I

    move-result v3

    mul-int v0, v2, v3

    .line 123
    .local v0, animationDuration:I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$300(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$300(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$2;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->access$300(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v6, v4, v6

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 114
    return-void
.end method

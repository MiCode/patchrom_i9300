.class Lcom/android/internal/policy/impl/TickerWidget$5;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "TickerWidget"

    const-string v1, "onAnimationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    .line 274
    :cond_0
    return-void
.end method

.method public onScrollEnded()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "TickerWidget"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "TickerWidget"

    const-string v1, "onScrollStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 258
    :cond_0
    return-void
.end method

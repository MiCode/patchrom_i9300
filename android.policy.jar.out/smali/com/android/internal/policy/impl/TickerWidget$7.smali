.class Lcom/android/internal/policy/impl/TickerWidget$7;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;


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
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "TickerWidget"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->tikerRippleForClose()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080455

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    .line 318
    :cond_1
    return-void
.end method

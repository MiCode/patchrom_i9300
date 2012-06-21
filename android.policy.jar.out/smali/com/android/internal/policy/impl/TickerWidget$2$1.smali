.class Lcom/android/internal/policy/impl/TickerWidget$2$1;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerWidget$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/TickerWidget$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerWidget$2;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v1, 0x12c1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$500(Lcom/android/internal/policy/impl/TickerWidget;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$900(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2$1;->this$1:Lcom/android/internal/policy/impl/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #setter for: Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->access$1002(Lcom/android/internal/policy/impl/TickerWidget;Z)Z

    .line 129
    return-void
.end method

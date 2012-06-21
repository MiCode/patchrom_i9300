.class Lcom/android/internal/policy/impl/TickerWidget$4;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$4;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$4;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$4;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/TickerWidget$4$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TickerWidget$4$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_0
    return-void
.end method

.class Lcom/android/internal/policy/impl/TickerWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerWidget;
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
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$400(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/TickerWidget$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TickerWidget$2$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/TickerWidget$2$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TickerWidget$2$2;-><init>(Lcom/android/internal/policy/impl/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_YHNEWS_DATE_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    return-void
.end method

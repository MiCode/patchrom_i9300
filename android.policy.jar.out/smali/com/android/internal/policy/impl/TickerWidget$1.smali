.class Lcom/android/internal/policy/impl/TickerWidget$1;
.super Landroid/os/Handler;
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
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_NEWS_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->showNewsRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$000(Lcom/android/internal/policy/impl/TickerWidget;)V

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_STOCK_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->showStockRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$100(Lcom/android/internal/policy/impl/TickerWidget;)V

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_NEWS_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->showPreviousNewsData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$200(Lcom/android/internal/policy/impl/TickerWidget;)V

    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_STOCK_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/TickerWidget;->showPreviousStockData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerWidget;->access$300(Lcom/android/internal/policy/impl/TickerWidget;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;
.super Landroid/os/Handler;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionMonitoringHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 248
    .local v0, arguments:Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->doWifiConnectionMonitoringPolicy()V

    .line 251
    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

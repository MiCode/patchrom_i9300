.class Lcom/android/server/WifiOffloadService$3;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 535
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "checkDataActivityTimer excecuted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 537
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    .line 543
    :cond_2
    :goto_0
    return-void

    .line 540
    :cond_3
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

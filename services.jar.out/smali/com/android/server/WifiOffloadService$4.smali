.class Lcom/android/server/WifiOffloadService$4;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$isWaitrequired:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$4;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/WifiOffloadService$4;->val$isWaitrequired:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "checkDataActivityTimer excecuted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->isBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-eq v0, v2, :cond_2

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 584
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$4;->val$packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService$4;->val$isWaitrequired:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 587
    :cond_4
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiOffloadService"

    const-string v1, "Intel mode is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

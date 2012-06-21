.class Lcom/android/server/WifiOffloadService$9;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V
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
    .line 1459
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1462
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    const-string v1, "back key timer resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1002(Z)Z

    .line 1465
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1102(I)I

    .line 1466
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1202(I)I

    .line 1468
    return-void
.end method

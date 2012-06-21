.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v1, v3}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Z)Z

    .line 159
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0

    .line 160
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Z)Z

    .line 162
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0
.end method

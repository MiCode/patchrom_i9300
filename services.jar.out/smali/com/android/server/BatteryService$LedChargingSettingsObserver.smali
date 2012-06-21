.class Lcom/android/server/BatteryService$LedChargingSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedChargingSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/BatteryService$LedChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 170
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/server/BatteryService$LedChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$LedChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 177
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Led Charging Settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$LedChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/BatteryService$LedChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

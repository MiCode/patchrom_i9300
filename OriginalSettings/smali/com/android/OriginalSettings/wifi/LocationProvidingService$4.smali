.class Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;
.super Ljava/lang/Object;
.source "LocationProvidingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const v6, 0x7f020200

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 327
    const-string v0, "LocationProvidingService"

    const-string v1, "Update Wifi started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$300(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 329
    const-string v0, "LocationProvidingService"

    const-string v1, "Location Matched so Enable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi Enabled"

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    .line 332
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi is automatically enabled"

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    .line 333
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.LAUNCH_AUTO_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    .line 377
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$300(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$200(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 350
    const-string v0, "LocationProvidingService"

    const-string v1, "Cell matched so Enable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi Enabled"

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    .line 353
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi is automatically enabled"

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    .line 354
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.LAUNCH_AUTO_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$200(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 369
    const-string v0, "LocationProvidingService"

    const-string v1, "Cell NOT matched so Disable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const-class v2, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$4;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

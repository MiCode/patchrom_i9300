.class Lcom/sec/android/internal/ims/IMSService$7;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1842
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1846
    const-string v0, "IMS/IMSService"

    const-string v1, " WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :goto_0
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive():: WIFI_STATE_CHANGED_ACTION event handled..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_0
    :goto_1
    return-void

    .line 1848
    :cond_1
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1866
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    const-string v0, "IMS/IMSService"

    const-string v1, "===== NETWORK_STATE_CHANGED_ACTION event happened..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1871
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    .line 1874
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi Event BroadReceiver:onReceive():TypeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v2, v2, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :goto_2
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION event handled..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1882
    :cond_3
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

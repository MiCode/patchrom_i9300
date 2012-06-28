.class Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;
.super Landroid/database/ContentObserver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreasholdObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    .line 282
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method private getValue()I
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitoring_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 316
    const/16 v0, -0x55

    .line 320
    :goto_0
    return v0

    .line 304
    :pswitch_0
    const/16 v0, -0x4b

    .line 305
    goto :goto_0

    .line 308
    :pswitch_1
    const/16 v0, -0x55

    .line 309
    goto :goto_0

    .line 312
    :pswitch_2
    const/16 v0, -0x5a

    .line 313
    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$102(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;I)I

    .line 296
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitoring_settings"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;->access$102(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitoringService;I)I

    .line 289
    return-void
.end method

.class Lcom/android/server/WifiService$7;
.super Landroid/telephony/PhoneStateListener;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2502
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 8
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/16 v7, 0xd

    .line 2504
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataConnectionStateChanged: state -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkType - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v4, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v4}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v3

    .line 2507
    .local v3, wifiApState:I
    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    if-ne v3, v7, :cond_2

    .line 2510
    :cond_0
    const/4 v1, 0x5

    .line 2512
    .local v1, maxClientNum:I
    iget-object v4, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2513
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2514
    const/16 v1, 0xa

    .line 2518
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    .end local v1           #maxClientNum:I
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    return-void

    .line 2519
    .restart local v1       #maxClientNum:I
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 2520
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

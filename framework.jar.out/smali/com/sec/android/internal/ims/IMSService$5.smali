.class Lcom/sec/android/internal/ims/IMSService$5;
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
    .line 1052
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1055
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, action:Ljava/lang/String;
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver  action string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    const-string v3, "com.android.settings"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1061
    .local v1, mFlightModeFromSettings:Z
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mFlightModeFromSettings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    if-eqz v1, :cond_1

    sget-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v4, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-ne v3, v4, :cond_1

    .line 1063
    const-string v3, "IMS/IMSService"

    const-string v4, "No need to Handle this intent if it is received from 3G/LTE Disable in Settings when in WIFI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v1           #mFlightModeFromSettings:Z
    :cond_0
    :goto_0
    return-void

    .line 1066
    .restart local v1       #mFlightModeFromSettings:Z
    :cond_1
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1068
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-ne v7, v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v7, :cond_5

    .line 1070
    const/4 v2, -0x1

    .line 1072
    .local v2, retVal:I
    const-string v3, "IMS/IMSService"

    const-string v4, "Received FLIGHT_MODE Intent Due to Wifi-on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->startHiPriNetwork()I

    move-result v2

    .line 1074
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1077
    const-string v3, "IMS/IMSService"

    const-string/jumbo v4, "startHiPriNetwork() is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v2           #retVal:I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3, v6}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1099
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->access$300(Lcom/sec/android/internal/ims/IMSService;)V

    .line 1100
    sget-object v3, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_0

    .line 1079
    .restart local v2       #retVal:I
    :cond_3
    if-nez v2, :cond_4

    .line 1081
    const-string v3, "IMS/IMSService"

    const-string v4, "HiPri Network is already active...Try sending Dereg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->handleHiPriNWConnect()V

    goto :goto_1

    .line 1086
    :cond_4
    const-string v3, "IMS/IMSService"

    const-string/jumbo v4, "startHiPriNetwork() is Started Successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1092
    .end local v2           #retVal:I
    :cond_5
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1093
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1094
    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    goto :goto_1
.end method

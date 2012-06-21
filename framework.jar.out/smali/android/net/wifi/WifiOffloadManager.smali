.class public Landroid/net/wifi/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiOffloadManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiOffloadManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiOffloadManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    .line 55
    iput-object p2, p0, Landroid/net/wifi/WifiOffloadManager;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public canAppOffload(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->canAppOffload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking canAppOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 3
    .parameter "taskID"

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->checkAppNeedsMoveToFront(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in checkAppNeedsMoveToFront"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkMobileNetwork()I
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isMobileDataActive()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking data activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllAPs()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->clearAllAccessPoints()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while clear all AP\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWifidetails(Ljava/lang/String;)I
    .locals 3
    .parameter "networkName"

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->deleteNetwork(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while deleteWifidetails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"
    .parameter "action"

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in doOffloadStuff"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableStoredWifi()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getAvailableSSIDNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getAvailableStoredWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentBaseStationID()I
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getCDMABaseStationID()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastPkgName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastPkgName"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastWifiScannedTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 310
    :goto_0
    return-wide v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastWifiScannedTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppRequiresWifi(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiOnlyApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppinWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDontUseWifiPressed()Z
    .locals 3

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isDontUseWifiPressed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isDontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 3

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isIntelScanModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in isIntelScanModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelWifiEnabled()Z
    .locals 3

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getIntelligentWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking for intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isWifiConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->notifyDialogDisplayed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in notifyDialogDisplayed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetNeverTurnOnWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTestStationID()V
    .locals 3

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetCurrentTestBaseStationID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetTestStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 3
    .parameter "value"
    .parameter "isDontShowPopup"

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->setAppRunOverWiFiResult(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting AppRunOverWiFiResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 3
    .parameter "isPressed"

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setDontuseWifiPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting DontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntelScanMode(Z)Z
    .locals 3
    .parameter "intelMode"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->intelScanMode(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNeverTurnOnWifi()V
    .locals 1

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiOffloadManager;->setNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTestCurrentBaseStationID(I)V
    .locals 3
    .parameter "baseStationID"

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setCurrentTestBaseStationID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setTestCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiFiDialogStatus(I)V
    .locals 3
    .parameter "stationID"

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->updateDialogStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to set WiFiDialog sStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 3

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDontUseWiFiPressedTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDontUseWiFiPressedTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startWifiDataActivityTimer()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopWifiDataActivityTimer()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->stopDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while stopWifiDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tempBlockPopup(IZ)Z
    .locals 3
    .parameter "stationID"
    .parameter "enableBlock"

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->blockWifiPopup(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while blocking temp popup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->tryToTurnOnWifi(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to switch on Wi-Fi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNewBaseStations(Ljava/lang/String;I)V
    .locals 3
    .parameter "ssID"
    .parameter "stationID"

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->updateBaseStationIDs(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while updateNewBaseStations"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiOn()Z
    .locals 3

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->wasWiFiReallyOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking if wifi is on or off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/sec/android/internal/ims/IMSService$6;
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
    .line 1284
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1288
    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v10, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    if-eq v9, v10, :cond_1

    move v1, v7

    .line 1289
    .local v1, isNwkConnect:Z
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, action:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inside HiddenMenuChangeReceiver onReceive the action intent is = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1292
    const-string v9, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1294
    const-string v9, "Enter if onReceive HiddenMenuChangeReceiver"

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1295
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v9}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v6

    .line 1297
    .local v6, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    if-nez v6, :cond_2

    .line 1299
    const-string v7, "In  onReceive HiddenMenuChangeReceiver..myObject is NULL"

    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1493
    .end local v6           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_0
    :goto_1
    return-void

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #isNwkConnect:Z
    :cond_1
    move v1, v8

    .line 1288
    goto :goto_0

    .line 1311
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #isNwkConnect:Z
    .restart local v6       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_2
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-boolean v9, v9, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v9, :cond_3

    .line 1313
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7, v6}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto :goto_1

    .line 1317
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In  onReceive HiddenMenuChangeReceiver..myObject.mEnableIMSOnRoamingVal."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In  onReceive HiddenMenuChangeReceiver..myHiddenMenuObject.mEnableIMSOnRoamingVal."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v10

    iget-object v10, v10, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1320
    iget-object v9, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v10

    iget-object v10, v10, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1321
    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    iget-object v10, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    iput-object v10, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    .line 1323
    :cond_4
    const-string v9, "IMS/IMSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HiddenMenuChange Receiver..Entry...mCurrentConnectedNtwrk is..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v9, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v10

    iget-object v10, v10, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1327
    const-string/jumbo v9, "myObject.mAlwaysOnVal and myHiddenMenuObject.mAlwaysOnVal are not equal"

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1329
    const-string v9, "0"

    iget-object v10, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v10

    iget-object v10, v10, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v9}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1331
    const-string/jumbo v8, "mAlwaysOnVal flag is set from Cancel to Setup.. calling frmwork init"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1333
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1335
    const-string v8, "Initing IMS after change from Cancel to Setup"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1342
    .local v2, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1343
    .local v3, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_7

    .line 1345
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 1346
    .local v5, mTypeName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 1347
    .local v4, mSubTypeName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initing IMS after change from Cancel to Setup.....Network Info"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v8, "mobile"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1352
    const-string v8, "UMTS"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "HSPA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "HSDPA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "HSUPA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "HSPA+"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1354
    :cond_5
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 1366
    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 1368
    .end local v4           #mSubTypeName:Ljava/lang/String;
    .end local v5           #mTypeName:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Always On Set to 1, setting mCurrentConnectedNtwrk to... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Always On Set to 1, isNwkConnect... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1371
    if-ne v1, v7, :cond_b

    .line 1373
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v7

    iget-object v8, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    iput-object v8, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 1374
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->access$900(Lcom/sec/android/internal/ims/IMSService;)V

    .line 1491
    .end local v2           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v3           #mNetworkInfo:Landroid/net/NetworkInfo;
    :cond_8
    :goto_3
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HiddenMenuChange Receiver..Exit...mCurrentConnectedNtwrk is..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1355
    .restart local v2       #mConnectivityManager:Landroid/net/ConnectivityManager;
    .restart local v3       #mNetworkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #mSubTypeName:Ljava/lang/String;
    .restart local v5       #mTypeName:Ljava/lang/String;
    :cond_9
    const-string v8, "LTE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1356
    sget-object v8, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    goto :goto_2

    .line 1359
    :cond_a
    const-string v8, "WIFI"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1361
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1362
    const-string v7, "Always On Set to 1, But WiFi is Disabled in HiddenMenu,so returning"

    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1462
    .end local v4           #mSubTypeName:Ljava/lang/String;
    .end local v5           #mTypeName:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7, v6}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto :goto_3

    .line 1468
    .end local v2           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v3           #mNetworkInfo:Landroid/net/NetworkInfo;
    :cond_c
    const-string/jumbo v9, "mAlwaysOnVal flag is set from Setup to Cancel.. calling frmwork Deinit"

    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1470
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v9

    if-ne v9, v7, :cond_d

    .line 1472
    const-string v7, "De-Initing IMS after change from Cancel to Setup"

    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1476
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1477
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    .line 1478
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HiddenMenuChange Receiver.....setting mCurrentConnectedNtwrk to..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_d
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7, v6}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1481
    sget-object v7, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 1482
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v7}, Lcom/sec/android/internal/ims/IMSService;->access$300(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_3

    .line 1487
    :cond_e
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7, v6}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1488
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7, v6}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto/16 :goto_3
.end method

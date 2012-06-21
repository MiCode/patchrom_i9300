.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 1
    .parameter

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    .line 1884
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1886
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1887
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1888
    return-void

    .line 1887
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()Z

    .line 1892
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1893
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1896
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TetherModeAliveState.processMessage what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/4 v1, 0x1

    .line 1898
    .local v1, retValue:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1938
    const/4 v1, 0x0

    .line 1941
    :cond_0
    :goto_0
    return v1

    .line 1900
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1901
    .local v2, who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1906
    .end local v2           #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1907
    .restart local v2       #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1908
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1909
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1910
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    .line 1914
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetheredIfaceName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1918
    .end local v0           #index:I
    .end local v2           #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1919
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1920
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v5, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1925
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 1927
    const-string v3, "Tethering"

    const-string v4, "renewing mobile connection - requeuing for another 40000ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnUpstreamMobileConnection(I)Z

    goto :goto_0

    .line 1934
    :pswitch_4
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1935
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_2

    .line 1898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

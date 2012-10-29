.class Lcom/android/internal/telephony/cat/CatBIPManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 154
    const-string v2, ">>>>>>>>>> BROADCAST EVENT FROM CAT BIP MANAGER <<<<<<<<<<"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->isListening()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent receiver called with not listening : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 163
    .local v1, nwInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 164
    const-string v2, "there is no network info"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableBIP"

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableHIPRI"

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 170
    :cond_3
    const-string v2, "It is not BIP type"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_4
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, noConnectivity:Z
    if-eqz v0, :cond_5

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    .line 183
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    const-string v2, "otherNetwork"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setOtherNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setReason(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    const-string v3, "isFailover"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setFailover(Z)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOtherNetworkInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "[none]"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    goto/16 :goto_0

    .line 180
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    goto/16 :goto_1

    .line 192
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    #getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " noConn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

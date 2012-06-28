.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;
.super Landroid/os/CountDownTimer;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 900
    const-string v0, "WfdPickerActivity"

    const-string v1, "Auto Connection timer expired! try to connect is failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 903
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 905
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 906
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 910
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2310(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    .line 896
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect tick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I
    invoke-static {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

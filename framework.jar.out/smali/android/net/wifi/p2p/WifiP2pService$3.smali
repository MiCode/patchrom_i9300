.class Landroid/net/wifi/p2p/WifiP2pService$3;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService;->showTimerExpiredDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$3;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 380
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$3;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isWifiP2pSettingScreen()Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$3;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$3;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x22036

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$3;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 383
    return-void
.end method

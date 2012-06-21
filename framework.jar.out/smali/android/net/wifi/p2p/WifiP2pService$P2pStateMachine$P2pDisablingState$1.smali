.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$2600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 691
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Driver unload successful"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2302a

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 698
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$2600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 699
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Failed to unload driver!"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2302b

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.class Landroid/net/DhcpStateMachine$WaitBeforeStartState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeStartState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 241
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 260
    :pswitch_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    :pswitch_1
    return v0

    .line 243
    :pswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 245
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v2, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    #calls: Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1000(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    .line 250
    :goto_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1300(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 254
    :pswitch_3
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1300(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/sec/android/internal/ims/IMSService$11;
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
    .line 2952
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 2955
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2956
    .local v0, action:Ljava/lang/String;
    const-string v1, ">>>>>>>>>> BROADCAST EVENT FROM RIL >>>>>>>"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2957
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver  action string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const-string v1, "com.android.server.status.sip_reg_available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2961
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$1300(Lcom/sec/android/internal/ims/IMSService;)V

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    const-string v1, "com.android.server.status.sip_reg_unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2964
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2965
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2967
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2968
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$11;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0
.end method

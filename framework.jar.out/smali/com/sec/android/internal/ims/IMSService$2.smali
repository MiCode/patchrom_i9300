.class Lcom/sec/android/internal/ims/IMSService$2;
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
    .line 436
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 439
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "IMS/IMSService"

    const-string v2, "Inside Roaming area"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 450
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 451
    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 452
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$202(Z)Z

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$300(Lcom/sec/android/internal/ims/IMSService;)V

    .line 455
    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sput-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 458
    :cond_1
    return-void
.end method

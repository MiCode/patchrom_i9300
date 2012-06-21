.class Lcom/sec/android/internal/ims/IMSService$14;
.super Ljava/util/TimerTask;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->handleRegistrationFailed()V
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
    .line 3303
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3307
    const-string v0, "IMS/IMSService"

    const-string v1, "Retry DNS start: ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->setRegisterRetryState(Z)V

    .line 3309
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->doDNSQueryRetry()V
    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->access$1600(Lcom/sec/android/internal/ims/IMSService;)V

    .line 3311
    :cond_0
    return-void
.end method

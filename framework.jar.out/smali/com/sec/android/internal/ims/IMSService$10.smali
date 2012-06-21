.class Lcom/sec/android/internal/ims/IMSService$10;
.super Ljava/lang/Object;
.source "IMSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
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
    .line 2918
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$10;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2920
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNetworkConnectOp(): thread started... mCurrentConnectedNtwrk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$19;->$SwitchMap$com$sec$android$internal$ims$IMSService$NetworkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2938
    :goto_0
    return-void

    .line 2931
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$10;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string/jumbo v1, "mobile"

    #calls: Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1200(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    goto :goto_0

    .line 2934
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$10;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v1, "WIFI"

    #calls: Lcom/sec/android/internal/ims/IMSService;->doNetworkConnectOp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1200(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    goto :goto_0

    .line 2921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

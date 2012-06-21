.class Lcom/sec/android/internal/ims/IMSService$1;
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
    .line 373
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, mExtra:Ljava/lang/String;
    const-string v4, "IMS/IMSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mExtra......."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v2, :cond_0

    .line 381
    const-string v4, "LOADED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, PUBLIC_USER_IDENTITY_INDEX:I
    const/4 v0, 0x1

    .line 384
    .local v0, PRIVATE_USER_IDENTITY_INDEX:I
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->ReadSimDetails()[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->access$100(Lcom/sec/android/internal/ims/IMSService;)[Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, simDetails:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside simEventReceiver : ACTION_SIM_STATE_CHANGED : simDetails[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; simDetails[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    aget-object v5, v3, v1

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/internal/ims/IMSService;->updateMDNMIN(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0           #PRIVATE_USER_IDENTITY_INDEX:I
    .end local v1           #PUBLIC_USER_IDENTITY_INDEX:I
    .end local v2           #mExtra:Ljava/lang/String;
    .end local v3           #simDetails:[Ljava/lang/String;
    :cond_0
    return-void
.end method

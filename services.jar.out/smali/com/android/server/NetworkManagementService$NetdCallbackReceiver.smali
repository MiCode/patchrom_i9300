.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService;->onDaemonConnected()V

    .line 319
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 323
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 383
    :goto_0
    return v1

    .line 332
    :sswitch_0
    array-length v3, p3

    if-lt v3, v7, :cond_0

    aget-object v3, p3, v1

    const-string v4, "Iface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :cond_1
    aget-object v3, p3, v5

    const-string v4, "added"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v6

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/NetworkManagementService;->access$000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    aget-object v3, p3, v5

    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v6

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_3
    aget-object v3, p3, v5

    const-string v4, "changed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, p3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 343
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v6

    aget-object v4, p3, v7

    const-string v5, "up"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 345
    :cond_4
    aget-object v3, p3, v5

    const-string v4, "linkstate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, p3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 346
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v6

    aget-object v4, p3, v7

    const-string v5, "up"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 349
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :sswitch_1
    array-length v3, p3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_6

    aget-object v3, p3, v1

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 358
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_7
    aget-object v3, p3, v5

    const-string v4, "alert"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v6

    aget-object v4, p3, v7

    #calls: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :sswitch_2
    aget-object v3, p3, v1

    const-string v4, "sta_join"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    aget-object v3, p3, v1

    const-string v4, "sta_leave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 371
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EVENT"

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    array-length v2, p3

    if-le v2, v5, :cond_a

    .line 374
    const-string v2, "NUM"

    aget-object v3, p3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    :cond_a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 378
    .end local v0           #intent:Landroid/content/Intent;
    :cond_b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x2bd -> :sswitch_2
    .end sparse-switch
.end method

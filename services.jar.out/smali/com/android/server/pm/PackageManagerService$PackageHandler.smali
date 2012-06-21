.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 747
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 748
    return-void
.end method

.method private connectToService()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 726
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, service:Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 728
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 731
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 735
    :goto_0
    return v1

    .line 734
    :cond_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 735
    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$402(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 740
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 741
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 743
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 744
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 759
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 1084
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 762
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 763
    .local v19, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 768
    .local v15, idx:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v31

    if-nez v31, :cond_1

    .line 772
    const-string v31, "PackageManager"

    const-string v32, "Failed to bind to media container service"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_0

    .line 778
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 781
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 784
    if-nez v15, :cond_0

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 792
    .end local v15           #idx:I
    .end local v19           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$402(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 795
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v31

    if-nez v31, :cond_5

    .line 797
    const-string v31, "PackageManager"

    const-string v32, "Cannot bind to media container service"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 799
    .restart local v19       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 801
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 803
    .end local v19           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 804
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_8

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 806
    .restart local v19       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v19, :cond_0

    .line 807
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_6

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 816
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_7

    .line 817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 820
    const/16 v31, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 821
    const/16 v31, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 824
    .local v27, ubmsg:Landroid/os/Message;
    const-wide/16 v31, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 832
    .end local v27           #ubmsg:Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 838
    .end local v19           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_8
    const-string v31, "PackageManager"

    const-string v32, "Empty queue"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 844
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 848
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v31

    if-nez v31, :cond_0

    .line 849
    const-string v31, "PackageManager"

    const-string v32, "Failed to bind to media container service"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 851
    .restart local v19       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 853
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 855
    .end local v19           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 864
    .end local v14           #i$:Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/SparseArray;->size()I

    move-result v31

    if-nez v31, :cond_b

    .line 865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 870
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 881
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 887
    :pswitch_6
    const/16 v25, 0x0

    .line 889
    .local v25, size:I
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 891
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-nez v31, :cond_c

    .line 892
    monitor-exit v32

    goto/16 :goto_0

    .line 915
    :catchall_0
    move-exception v31

    monitor-exit v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    .line 894
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v25

    .line 895
    if-gtz v25, :cond_d

    .line 897
    monitor-exit v32

    goto/16 :goto_0

    .line 899
    :cond_d
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 900
    .local v18, packages:[Ljava/lang/String;
    move/from16 v0, v25

    new-array v6, v0, [Ljava/util/ArrayList;

    .line 901
    .local v6, components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 903
    .local v28, uids:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 904
    .local v16, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v13, 0x0

    .line 905
    .local v13, i:I
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_f

    move/from16 v0, v25

    if-ge v13, v0, :cond_f

    .line 906
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 907
    .local v11, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    aput-object v31, v18, v13

    .line 908
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    aput-object v31, v6, v13

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    .line 910
    .local v20, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v20, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    move/from16 v31, v0

    :goto_4
    aput v31, v28, v13

    .line 911
    add-int/lit8 v13, v13, 0x1

    .line 912
    goto :goto_3

    .line 910
    :cond_e
    const/16 v31, -0x1

    goto :goto_4

    .line 913
    .end local v11           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v20           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_f
    move/from16 v25, v13

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->clear()V

    .line 915
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v25

    if-ge v13, v0, :cond_10

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    aget-object v32, v18, v13

    const/16 v33, 0x1

    aget-object v34, v6, v13

    aget v35, v28, v13

    #calls: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static/range {v31 .. v35}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 917
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 920
    :cond_10
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 924
    .end local v6           #components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #i:I
    .end local v16           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v18           #packages:[Ljava/lang/String;
    .end local v25           #size:I
    .end local v28           #uids:[I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 925
    .local v17, packageName:Ljava/lang/String;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 927
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_11

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_11
    monitor-exit v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 930
    :catchall_1
    move-exception v31

    :try_start_3
    monitor-exit v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v31

    .line 936
    .end local v17           #packageName:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 937
    .local v7, data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->delete(I)V

    .line 938
    const/4 v8, 0x0

    .line 940
    .local v8, deleteOld:Z
    if-eqz v7, :cond_17

    .line 941
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 942
    .local v4, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v22, v0

    .line 944
    .local v22, res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 945
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 946
    new-instance v12, Landroid/os/Bundle;

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-direct {v12, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 947
    .local v12, extras:Landroid/os/Bundle;
    const-string v31, "android.intent.extra.UID"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 948
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_16

    const/16 v29, 0x1

    .line 949
    .local v29, update:Z
    :goto_6
    if-eqz v29, :cond_12

    .line 950
    const-string v31, "android.intent.extra.REPLACING"

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    :cond_12
    const-string v31, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 955
    if-eqz v29, :cond_13

    .line 956
    const-string v31, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 959
    const-string v31, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v31 .. v35}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 963
    :cond_13
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14

    .line 965
    const/4 v8, 0x1

    .line 969
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v29           #update:Z
    :cond_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Runtime;->gc()V

    .line 971
    if-eqz v8, :cond_15

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 973
    :try_start_4
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v31, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 974
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 976
    :cond_15
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 978
    :try_start_5
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v33, v0

    invoke-interface/range {v31 .. v33}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 979
    :catch_0
    move-exception v10

    .line 980
    .local v10, e:Landroid/os/RemoteException;
    const-string v31, "PackageManager"

    const-string v32, "Observer no longer exists."

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 948
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v12       #extras:Landroid/os/Bundle;
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 974
    .end local v12           #extras:Landroid/os/Bundle;
    :catchall_2
    move-exception v31

    :try_start_6
    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v31

    .line 984
    .end local v4           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v22           #res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_17
    const-string v31, "PackageManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Bogus post-install token "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 989
    .end local v7           #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v8           #deleteOld:Z
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x1

    .line 990
    .local v21, reportStatus:Z
    :goto_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    const/4 v9, 0x1

    .line 992
    .local v9, doGc:Z
    :goto_8
    if-eqz v9, :cond_18

    .line 994
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Runtime;->gc()V

    .line 996
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_19

    .line 998
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    .line 1001
    .local v5, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1003
    .end local v5           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    :cond_19
    if-eqz v21, :cond_0

    .line 1006
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1007
    :catch_1
    move-exception v10

    .line 1008
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v31, "PackageManager"

    const-string v32, "MountService not running?"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 989
    .end local v9           #doGc:Z
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v21           #reportStatus:Z
    :cond_1a
    const/16 v21, 0x0

    goto :goto_7

    .line 990
    .restart local v21       #reportStatus:Z
    :cond_1b
    const/4 v9, 0x0

    goto :goto_8

    .line 1013
    .end local v21           #reportStatus:Z
    :pswitch_a
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1015
    const/16 v31, 0xd

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1016
    const/16 v31, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1018
    monitor-exit v32
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1019
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1018
    :catchall_3
    move-exception v31

    :try_start_9
    monitor-exit v32
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v31

    .line 1022
    :pswitch_b
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1024
    const/16 v31, 0xe

    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/Settings;->writeStoppedLPr()V

    .line 1026
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1027
    const/16 v31, 0xa

    invoke-static/range {v31 .. v31}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1026
    :catchall_4
    move-exception v31

    :try_start_b
    monitor-exit v32
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v31

    .line 1030
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1031
    .local v30, verificationId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageVerificationState;

    .line 1033
    .local v26, state:Lcom/android/server/pm/PackageVerificationState;
    if-eqz v26, :cond_0

    .line 1034
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    .line 1035
    .restart local v4       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v31, "PackageManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Verification timed out for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1038
    const/16 v24, -0x15

    .line 1039
    .local v24, ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v4, v1}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x6

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1047
    .end local v4           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v24           #ret:I
    .end local v26           #state:Lcom/android/server/pm/PackageVerificationState;
    .end local v30           #verificationId:I
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1049
    .restart local v30       #verificationId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageVerificationState;

    .line 1050
    .restart local v26       #state:Lcom/android/server/pm/PackageVerificationState;
    if-nez v26, :cond_1c

    .line 1051
    const-string v31, "PackageManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Invalid verification token "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " received"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1055
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1057
    .local v23, response:Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1059
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1062
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    .line 1065
    .restart local v4       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 1066
    const/16 v24, -0x6e

    .line 1068
    .restart local v24       #ret:I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    move-result v24

    .line 1076
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v4, v1}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x6

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1069
    :catch_2
    move-exception v10

    .line 1070
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v31, "PackageManager"

    const-string v32, "Could not contact the ContainerService"

    invoke-static/range {v31 .. v32}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1073
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v24           #ret:I
    :cond_1d
    const/16 v24, -0x16

    .restart local v24       #ret:I
    goto :goto_9

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 752
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 756
    return-void

    .line 754
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

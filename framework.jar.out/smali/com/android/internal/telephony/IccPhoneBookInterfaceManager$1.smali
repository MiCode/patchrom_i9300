.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 175
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 85
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 96
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_RECORD_INFO_DONEtotal cnt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "used  cnt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "first index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "text max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "number max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 115
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 118
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    :goto_1
    iput-boolean v1, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-boolean v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v1, :cond_3

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    iget v1, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput v1, v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->returnIndex:I

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hypathia] EVENT_UPDATE_DONE : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->returnIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 128
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 129
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_2
    move v1, v2

    .line 120
    goto :goto_1

    .line 125
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->toApplicationError()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->returnIndex:I

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hypathia] EVENT_UPDATE_DONE error : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->returnIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 132
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_4
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    .line 143
    :cond_4
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 144
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    .line 138
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v3, "Cannot load ADN records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    .line 148
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_6
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhonebookCapaInfo ar.result length = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v4, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>([I)V

    iput-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    .line 161
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_7
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get SIM file status info : = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v4, 0x0

    aget v1, v1, v4

    iput v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    .line 168
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 169
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

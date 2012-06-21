.class Lcom/android/internal/telephony/IccCard$2;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1087
    const/4 v12, 0x7

    .line 1091
    .local v12, serviceClassX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v14, :cond_1

    .line 1092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] while being destroyed. Ignoring."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x8

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0xb

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x9

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 1109
    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/os/Message;->what:I

    .line 1111
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1112
    .local v8, msgBackup:Landroid/os/Message;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1113
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "backup handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v15, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/IccCard;->simLockInfoRefresh(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1118
    .end local v8           #msgBackup:Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_4

    .line 1119
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit16 v14, v14, -0x3e8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/os/Message;->what:I

    .line 1120
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restore handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_4
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 1447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[IccCard] Unknown Event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1124
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v15, "NOT_READY"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1135
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "SC"

    const-string v16, ""

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "FD"

    const-string v16, ""

    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1149
    const-string v14, "KT"

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccCard;->reloadPLMNs()V

    goto/16 :goto_0

    .line 1154
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "SC"

    const-string v16, ""

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1161
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1163
    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1169
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1171
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x5

    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1182
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1183
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    .line 1184
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1187
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1188
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1191
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1192
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1196
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1197
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1203
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const-string v14, "IccCard"

    const-string v15, "Event EVENT_CHANGE_FACILITY_LOCK_DONE Received"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1205
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_6

    .line 1206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/IccCard;->mSimPinState:Z

    .line 1208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1211
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1212
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1214
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1217
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility lock with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1231
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1233
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_8

    .line 1234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/IccCard;->mFdnState:Z

    .line 1235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$1000(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$902(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1242
    :cond_7
    :goto_1
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1244
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.FDN_MODE_CHANGED"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1239
    .end local v7           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility fdn with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1253
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1254
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_a

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredSimPersoLocked:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$1100(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$502(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mDesiredSimPersoLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1102(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_SIM_PERSO_DONE: mIccSimPersoLocked= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1259
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccCard;->getSimLockInfo(II)V

    .line 1264
    :goto_2
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1266
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1261
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility lock with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1271
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1272
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_b

    .line 1273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in change sim password with exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1280
    :cond_b
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1282
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1285
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v15, "Received Event EVENT_ICC_STATUS_CHANGED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1289
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_0

    .line 1292
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_0

    .line 1296
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1298
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_0

    .line 1299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mPLMNwAct:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1302(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1306
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1308
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_0

    .line 1309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mFPLMN:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1402(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_QUERY_FPLMN_DONE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mFPLMN:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$1400(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1316
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1318
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_0

    .line 1319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mOPLMNwAct:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1502(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_QUERY_OPLMNWACT_DONE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mOPLMNwAct:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1327
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    const/4 v5, 0x0

    .line 1331
    .local v5, eccString:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #eccString:Ljava/lang/StringBuffer;
    const-string v14, ""

    invoke-direct {v5, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1335
    .restart local v5       #eccString:Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1337
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_d

    .line 1338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v15, "EVENT_GET_ECC_DONE ar.exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v15, 0x6fb7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    goto/16 :goto_0

    .line 1343
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v15, ""

    #setter for: Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1702(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v14, :cond_0

    .line 1347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0

    .line 1356
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 1357
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object v4, v14

    check-cast v4, Ljava/util/ArrayList;

    .line 1359
    .local v4, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, s:I
    :goto_3
    if-ge v6, v11, :cond_13

    .line 1360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "r "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1363
    .local v10, record:[B
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v10, v14, v15}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    .line 1364
    .local v13, tempEccString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_f

    .line 1365
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 1366
    const/16 v14, 0x2c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1367
    :cond_e
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1370
    const/16 v14, 0x2f

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1371
    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v10, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1375
    .end local v4           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v6           #i:I
    .end local v10           #record:[B
    .end local v11           #s:I
    .end local v13           #tempEccString:Ljava/lang/String;
    :cond_10
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v3, v14

    check-cast v3, [B

    .line 1377
    .local v3, data:[B
    array-length v14, v3

    div-int/lit8 v9, v14, 0x3

    .line 1379
    .local v9, numOfEcc:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    if-ge v6, v9, :cond_13

    .line 1380
    mul-int/lit8 v14, v6, 0x3

    const/4 v15, 0x3

    invoke-static {v3, v14, v15}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    .line 1381
    .restart local v13       #tempEccString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_12

    .line 1382
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 1383
    const/16 v14, 0x2c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1384
    :cond_11
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1390
    .end local v3           #data:[B
    .end local v9           #numOfEcc:I
    .end local v13           #tempEccString:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1702(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v14, :cond_0

    .line 1392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0

    .line 1402
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v5           #eccString:Ljava/lang/StringBuffer;
    .end local v6           #i:I
    :sswitch_14
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1404
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_14

    .line 1405
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1408
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto/16 :goto_0

    .line 1412
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1414
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_15

    .line 1415
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x1

    const/16 v17, 0x9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v14, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x12

    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v15, v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1417
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto :goto_5

    .line 1424
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN2_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1426
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_16

    .line 1427
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :goto_6
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1433
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1429
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto :goto_6

    .line 1436
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_17
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN_LOCK_INFO_REFRESH_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1438
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v14, :cond_0

    .line 1439
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccCard$2;->handleMessage(Landroid/os/Message;)V

    .line 1440
    const/4 v14, 0x0

    iput-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_1
        0x7 -> :sswitch_6
        0x8 -> :sswitch_9
        0x9 -> :sswitch_c
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_15
        0x12 -> :sswitch_16
        0x13 -> :sswitch_17
        0x17 -> :sswitch_10
        0x18 -> :sswitch_11
        0x19 -> :sswitch_12
        0x72 -> :sswitch_8
        0x73 -> :sswitch_b
    .end sparse-switch
.end method

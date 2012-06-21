.class Lcom/android/internal/telephony/ims/IMSInterface$1;
.super Lcom/sec/android/ims/IMSEventListener;
.source "IMSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IMSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IMSInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/IMSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIIILjava/lang/String;)V
    .locals 16
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 150
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 151
    .local v12, msg:Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->what:I

    .line 152
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  IMSPhone Event callback, eventType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arg1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arg2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "obj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 160
    .local v11, message:Landroid/os/Message;
    sparse-switch p2, :sswitch_data_0

    .line 467
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mImsEventListener: Received Event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ims/IMSInterface;->writeErrorData(IIIILjava/lang/String;)V

    .line 476
    return-void

    .line 163
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->stopHiPriNetwork()I

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0

    .line 168
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->addVTNotification()V

    goto :goto_0

    .line 172
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_1

    if-eqz p5, :cond_1

    .line 174
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "IMS_AKA : inside IMS_SIM_READ_CHALL_RESP : mRILCm is valid "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    const/16 v7, 0x22

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x24

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v6, v6, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    const/16 v7, 0x191

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "IMS_AKA : inside IMS_SIM_READ_CHALL_RESP : mRILCm or Data is NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_2

    if-eqz p5, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    const/16 v7, 0x22

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x24

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v6, v6, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    const/16 v7, 0x191

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 204
    :cond_2
    const-string v4, "IMSPhone/IMSInterface"

    const-string/jumbo v5, "inside IMS_SIM_READ_CHALL_RESP_MEDIASHARE : mRILCm or Data is NULL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto/16 :goto_0

    .line 217
    :sswitch_5
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "IMS_NOT_SUBSCRIBED "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto/16 :goto_0

    .line 223
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v5

    move/from16 v0, p2

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z
    invoke-static {v4, v0, v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 226
    const/4 v4, 0x4

    iput v4, v11, Landroid/os/Message;->what:I

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 231
    :sswitch_7
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "Starting DIALING timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "DIALING timer  removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 243
    :sswitch_8
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 245
    .local v13, nmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 257
    .end local v13           #nmsg:Landroid/os/Message;
    :sswitch_9
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 258
    .restart local v13       #nmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/sec/android/internal/ims/IMSService;->setCallType(I)V

    .line 299
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "DIALING timer  removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    .end local v13           #nmsg:Landroid/os/Message;
    :cond_6
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v5

    move/from16 v0, p2

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z
    invoke-static {v4, v0, v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    .line 310
    const/4 v4, 0x4

    iput v4, v11, Landroid/os/Message;->what:I

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v11, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "DIALING timer  removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 357
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move/from16 v0, p3

    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v4, v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I

    .line 358
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList    callID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v5

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->deleteFromCallsList(I)Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$400(Lcom/android/internal/telephony/ims/IMSInterface;I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    .line 363
    const/4 v4, 0x4

    iput v4, v11, Landroid/os/Message;->what:I

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    :cond_8
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    if-ne v4, v5, :cond_9

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 380
    .local v10, mWifiManager:Landroid/net/wifi/WifiManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 381
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "WIFI is enabled before making/incoming VT. So enable it now"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 385
    .end local v10           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "DIALING timer  removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 368
    :cond_a
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList returned false...value of data... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz p5, :cond_8

    const-string v4, "EVENT_END_CALL_SIMULATE"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 372
    const/4 v4, 0x4

    iput v4, v11, Landroid/os/Message;->what:I

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 394
    :sswitch_c
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 395
    .local v14, nmsg1:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 396
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 403
    .end local v14           #nmsg1:Landroid/os/Message;
    :sswitch_d
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, "New Incoming Call "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move/from16 v0, p4

    iput v0, v4, Lcom/android/internal/telephony/ims/IMSInterface;->mCallType:I

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget v9, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mCallType:I

    move-object/from16 v5, p5

    move/from16 v8, p3

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZII)V
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/ims/IMSInterface;->access$500(Lcom/android/internal/telephony/ims/IMSInterface;Ljava/lang/String;IZII)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    move/from16 v0, p3

    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v4, v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_b

    const/4 v4, 0x5

    move/from16 v0, p4

    if-ne v0, v4, :cond_c

    :cond_b
    const/4 v4, 0x1

    :goto_2
    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z
    invoke-static {v5, v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$602(Lcom/android/internal/telephony/ims/IMSInterface;Z)Z

    .line 409
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callid set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 408
    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    .line 434
    :sswitch_e
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 435
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 436
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x19

    invoke-virtual {v4, v11, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 441
    :sswitch_f
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mImsEventListener:, Received Event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 443
    .restart local v13       #nmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 444
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 446
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mImsEventListener:, sendMessage Event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 449
    :cond_d
    const-string v4, "IMSPhone/IMSInterface"

    const-string/jumbo v5, "mVTHandler is Null due to No VT Call Being Active"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v13           #nmsg:Landroid/os/Message;
    :sswitch_10
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 455
    .local v15, nmsg2:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 462
    .end local v15           #nmsg2:Landroid/os/Message;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/internal/ims/IMSService;->handleRegistrationFailed()V

    goto/16 :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x68 -> :sswitch_4
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_4
        0x6e -> :sswitch_4
        0x70 -> :sswitch_4
        0x71 -> :sswitch_5
        0x74 -> :sswitch_11
        0xca -> :sswitch_d
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xcd -> :sswitch_a
        0xcf -> :sswitch_b
        0xd0 -> :sswitch_9
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_b
        0xd4 -> :sswitch_b
        0xd5 -> :sswitch_b
        0xd6 -> :sswitch_b
        0xd7 -> :sswitch_b
        0xd8 -> :sswitch_b
        0xd9 -> :sswitch_b
        0xda -> :sswitch_b
        0xdb -> :sswitch_b
        0xde -> :sswitch_b
        0xe1 -> :sswitch_b
        0xe4 -> :sswitch_b
        0xe5 -> :sswitch_b
        0xe6 -> :sswitch_b
        0xe7 -> :sswitch_b
        0xea -> :sswitch_b
        0xeb -> :sswitch_b
        0xed -> :sswitch_b
        0xee -> :sswitch_b
        0xef -> :sswitch_10
        0x12a -> :sswitch_e
        0x12b -> :sswitch_e
        0x12c -> :sswitch_e
        0x12d -> :sswitch_e
        0x12e -> :sswitch_e
        0x12f -> :sswitch_b
        0x130 -> :sswitch_b
        0x131 -> :sswitch_b
        0x132 -> :sswitch_b
        0x133 -> :sswitch_b
        0x134 -> :sswitch_b
        0x135 -> :sswitch_b
        0x136 -> :sswitch_b
        0x137 -> :sswitch_b
        0x138 -> :sswitch_e
        0x139 -> :sswitch_e
        0x13a -> :sswitch_b
        0x13d -> :sswitch_b
        0x13e -> :sswitch_b
        0x13f -> :sswitch_9
        0x140 -> :sswitch_b
        0x141 -> :sswitch_b
        0x142 -> :sswitch_9
        0x145 -> :sswitch_c
        0x146 -> :sswitch_f
        0x147 -> :sswitch_8
        0x14a -> :sswitch_e
        0x159 -> :sswitch_3
        0x15c -> :sswitch_f
        0x15d -> :sswitch_2
    .end sparse-switch
.end method

.class Lcom/android/internal/telephony/ims/IMSInterface$2;
.super Landroid/os/Handler;
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
    .line 1279
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x192

    const/16 v4, 0x191

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1282
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSInterface$2;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 1283
    .local v10, message:Landroid/os/Message;
    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1284
    .local v6, ar:Landroid/os/AsyncResult;
    iget v7, p1, Landroid/os/Message;->what:I

    .line 1286
    .local v7, evtType:I
    sparse-switch v7, :sswitch_data_0

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1288
    :sswitch_0
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  IMS_GET_CURRENT_CALLS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {v10, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    iput-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1291
    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1295
    :sswitch_1
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Call End Event Being Simulated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xcf

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string v5, "EVENT_END_CALL_SIMULATE"

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto :goto_0

    .line 1299
    :sswitch_2
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Call End Event Being Simulated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xd4

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xde

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIIILjava/lang/String;)V

    goto/16 :goto_0

    .line 1309
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #ar:Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 1311
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 1312
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA : RIL side Exception!! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1315
    :cond_2
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/IccIoResult;

    if-eqz v0, :cond_6

    .line 1317
    const/4 v11, 0x0

    .line 1318
    .local v11, result:Lcom/android/internal/telephony/IccIoResult;
    const/4 v8, 0x0

    .line 1320
    .local v8, iccException:Lcom/android/internal/telephony/IccException;
    iget-object v11, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v11           #result:Lcom/android/internal/telephony/IccIoResult;
    check-cast v11, Lcom/android/internal/telephony/IccIoResult;

    .line 1322
    .restart local v11       #result:Lcom/android/internal/telephony/IccIoResult;
    if-eqz v11, :cond_5

    .line 1323
    invoke-virtual {v11}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v8

    .line 1324
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA Success? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    if-eqz v8, :cond_3

    .line 1326
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA : iccException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_3
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA result.payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA result.payload(HEXASTRING) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    if-ne v7, v4, :cond_4

    .line 1333
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA : EVENT_ISIM_AUTHENTICATION_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v1, v11, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSInterface;->sendAKAReceivedKeys([B)V

    goto/16 :goto_0

    .line 1337
    :cond_4
    if-ne v7, v13, :cond_0

    .line 1338
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA : EVENT_ISIM_AUTHENTICATION_DONE_MEDIASHARE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iget-object v1, v11, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->sendRspToMediaShareApp([B)V

    goto/16 :goto_0

    .line 1343
    :cond_5
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA : result is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1345
    .end local v8           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v11           #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_6
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1346
    iget-object v11, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 1347
    .local v11, result:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1349
    .local v12, strAkaResult:Ljava/lang/String;
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    if-eqz v11, :cond_b

    .line 1353
    if-ne v7, v4, :cond_8

    .line 1355
    const-string v0, "00"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1356
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA result = is success appending DB "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1358
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1359
    .local v9, isimResponse:[B
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSInterface;->sendAKAReceivedKeys([B)V

    goto/16 :goto_0

    .line 1362
    .end local v9           #isimResponse:[B
    :cond_7
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA result = is failure appending DC "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1364
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1365
    .restart local v9       #isimResponse:[B
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSInterface;->sendAKAReceivedKeys([B)V

    goto/16 :goto_0

    .line 1369
    .end local v9           #isimResponse:[B
    :cond_8
    if-ne v7, v13, :cond_a

    .line 1371
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA : EVENT_ISIM_AUTHENTICATION_DONE_MEDIASHARE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v0, "00"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1373
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA result = is success appending DB "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1375
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1376
    .restart local v9       #isimResponse:[B
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/internal/ims/IMSService;->sendRspToMediaShareApp([B)V

    goto/16 :goto_0

    .line 1379
    .end local v9           #isimResponse:[B
    :cond_9
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA result = is failure appending DC "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1381
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1382
    .restart local v9       #isimResponse:[B
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/internal/ims/IMSService;->sendRspToMediaShareApp([B)V

    goto/16 :goto_0

    .line 1387
    .end local v9           #isimResponse:[B
    :cond_a
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_AKA :  unknown event type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1390
    :cond_b
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA : result string is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1393
    .end local v11           #result:Ljava/lang/String;
    .end local v12           #strAkaResult:Ljava/lang/String;
    :cond_c
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS_AKA result is unknown format."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1286
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x191 -> :sswitch_3
        0x192 -> :sswitch_3
    .end sparse-switch
.end method

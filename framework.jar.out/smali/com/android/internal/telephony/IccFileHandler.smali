.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0xd

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0xb

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_READ_ADN_DONE:I = 0xc

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mIsDisposed:Z

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 180
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 437
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 186
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 397
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 401
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 10
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 418
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 421
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 423
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 951
    sparse-switch p1, :sswitch_data_0

    .line 976
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 960
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 964
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 966
    :sswitch_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 973
    :sswitch_3
    const-string v0, "3F00"

    goto :goto_0

    .line 951
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f41 -> :sswitch_3
        0x2f42 -> :sswitch_3
        0x2f43 -> :sswitch_3
        0x2f50 -> :sswitch_3
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 259
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 262
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 264
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 410
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 414
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 449
    const/16 v38, 0x0

    .line 469
    .local v38, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 471
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 472
    .local v27, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 473
    .local v34, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 474
    .local v39, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 476
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 477
    .local v33, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_0

    .line 478
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 931
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v30

    .line 932
    .local v30, exc:Ljava/lang/Exception;
    if-eqz v38, :cond_2b

    .line 933
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v30           #exc:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 484
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 485
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 487
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 488
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_0

    .line 489
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 494
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 495
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 496
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 497
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 499
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 500
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 504
    :cond_1
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 505
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_2

    .line 506
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 510
    :cond_2
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v29, v0

    .line 512
    .local v29, data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v29, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_4

    .line 514
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 517
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v37, v0

    .line 518
    .local v37, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v37, v3

    .line 519
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v37, v3

    .line 521
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v37, v4

    const/4 v6, 0x0

    aget v6, v37, v6

    div-int/2addr v4, v6

    aput v4, v37, v3

    .line 523
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 527
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v29           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v37           #recordSize:[I
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 528
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 529
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 530
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 532
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 533
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 537
    :cond_5
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 539
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_6

    .line 540
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 544
    :cond_6
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v29, v0

    .line 545
    .restart local v29       #data:[B
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 546
    .local v5, fileid:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v36, v0

    .line 548
    .local v36, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_7

    .line 549
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 552
    :cond_7
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_8

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_8

    .line 553
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 556
    :cond_8
    const/16 v3, 0xe

    aget-byte v3, v29, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 558
    const/4 v3, 0x2

    aget-byte v3, v29, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 561
    .local v9, size:I
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 563
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_9

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v34

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 567
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 575
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v29           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #recordNum:I
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 576
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 577
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 579
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 580
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 584
    :cond_a
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 586
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_b

    .line 587
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 591
    :cond_b
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v29, v0

    .line 593
    .restart local v29       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 595
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_c

    .line 596
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 599
    :cond_c
    const/16 v3, 0xd

    aget-byte v3, v29, v3

    if-eqz v3, :cond_d

    .line 600
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 603
    :cond_d
    const/4 v3, 0x2

    aget-byte v3, v29, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 606
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v12, v5, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 614
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v29           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 615
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 616
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 617
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 619
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 620
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 624
    :cond_e
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 626
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_f

    .line 627
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 631
    :cond_f
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_10

    .line 632
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 634
    :cond_10
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 638
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_11

    .line 639
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 641
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v34

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v34

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v10 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 652
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 653
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 654
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 655
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 657
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 658
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 662
    :cond_12
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 664
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_13

    .line 665
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 669
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_IMG_RECORD_DONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 676
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 677
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 678
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 680
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 681
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 685
    :cond_14
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 687
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_15

    .line 688
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 692
    :cond_15
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 699
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_8
    const/16 v41, 0x0

    .line 700
    .local v41, total:I
    const/16 v42, 0x0

    .line 701
    .local v42, used:I
    const/16 v32, 0x0

    .line 703
    .local v32, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 706
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_16

    .line 717
    :goto_1
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 718
    .local v35, pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 721
    move/from16 v0, v42

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 722
    move/from16 v0, v32

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 724
    const/4 v3, 0x0

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 726
    if-nez v42, :cond_17

    .line 732
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 733
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 709
    .end local v35           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_16
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v41, v3, v4

    .line 710
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v42, v3, v4

    .line 711
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v32, v3, v4

    goto :goto_1

    .line 737
    .restart local v35       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_17
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v3, :cond_18

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 742
    :cond_18
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v35

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v35

    iget v13, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    const/4 v14, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface/range {v10 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 750
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v32           #firstIndex:I
    .end local v35           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v41           #total:I
    .end local v42           #used:I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 751
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 753
    .restart local v35       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 754
    .local v40, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 759
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 763
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v3, :cond_1a

    .line 766
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    .line 767
    .local v15, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v15, v3

    .line 770
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v35

    iget v11, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v40

    iget v12, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v14, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v16, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v17, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v18, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v19, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v20, v3, v4

    invoke-direct/range {v10 .. v20}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .local v10, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v10, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 773
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v15           #emails:[Ljava/lang/String;
    :cond_1a
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    .line 774
    .restart local v15       #emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v15, v3

    .line 777
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v35

    iget v11, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v40

    iget v12, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v14, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v16, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v17, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v18, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v19, v3, v4

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v20, v3, v4

    invoke-direct/range {v10 .. v20}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, v40

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 781
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, v40

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_1c

    .line 782
    :cond_1b
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 784
    :cond_1c
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 794
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v15           #emails:[Ljava/lang/String;
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v35           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v40           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 795
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 796
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 797
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 799
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1d

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 804
    :cond_1d
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 806
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_1e

    .line 807
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 811
    :cond_1e
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v29, v0

    .line 812
    .restart local v29       #data:[B
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 813
    .restart local v5       #fileid:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v36, v0

    .line 815
    .restart local v36       #recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_1f

    .line 816
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 819
    :cond_1f
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_20

    .line 820
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 823
    :cond_20
    const/16 v3, 0xe

    aget-byte v3, v29, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 825
    const/4 v3, 0x2

    aget-byte v3, v29, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 828
    .restart local v9       #size:I
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 830
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_21

    .line 831
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v34

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 834
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 842
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v29           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #recordNum:I
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 843
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 845
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_22

    .line 846
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 850
    :cond_22
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v28, v0

    .line 851
    .local v28, capaResult:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 856
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v28           #capaResult:[I
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 857
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 858
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 859
    .local v31, fileStatus:[I
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_23

    .line 860
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 864
    :cond_23
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 866
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 867
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 871
    :cond_24
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 873
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_25

    .line 874
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 878
    :cond_25
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v29, v0

    .line 880
    .restart local v29       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_26

    .line 881
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 884
    :cond_26
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_27

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v29, v4

    if-eq v3, v4, :cond_27

    .line 885
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 887
    :cond_27
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v31, v3

    .line 888
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 893
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v29           #data:[B
    .end local v31           #fileStatus:[I
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 894
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v38, v0

    .line 896
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_28

    .line 897
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 901
    :cond_28
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v26, v0

    .line 902
    .local v26, RecordInfo:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 908
    .end local v26           #RecordInfo:[I
    .end local v27           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 909
    .restart local v27       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 910
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/IccIoResult;

    .line 911
    .restart local v39       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v38, v0

    .line 913
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 914
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 918
    :cond_29
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 920
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_2a

    .line 921
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 923
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 927
    :cond_2a
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 935
    .end local v27           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v30       #exc:Ljava/lang/Exception;
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 219
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 224
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string/jumbo v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 227
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 239
    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 244
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string/jumbo v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 247
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    .line 313
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 316
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    const-string/jumbo v3, "img"

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 318
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 332
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 334
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string/jumbo v3, "img"

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 337
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 201
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 205
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 207
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 276
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 279
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 281
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 294
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 297
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 299
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 381
    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 385
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 350
    const/16 v0, 0x12

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p5}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 353
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p2

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 356
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 367
    return-void
.end method

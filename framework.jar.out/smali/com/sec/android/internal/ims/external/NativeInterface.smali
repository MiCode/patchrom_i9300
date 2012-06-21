.class public Lcom/sec/android/internal/ims/external/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMS/NativeInterface"

.field private static nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

.field private static sContext:Landroid/content/Context;

.field private static sMe:Lcom/sec/android/internal/ims/external/NativeInterface;


# instance fields
.field private alarmSet:Z

.field private isBatteryLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 37
    :try_start_0
    const-string v1, "Before loading libims_jni.so"

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, "ims_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v1, "Success --> Loaded libims_jni.so"

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v0, e:Ljava/lang/Error;
    :cond_0
    :goto_0
    return-void

    .line 40
    .end local v0           #e:Ljava/lang/Error;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0       #e:Ljava/lang/Error;
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "IMS/NativeInterface"

    const-string v2, "Error loading libims_jni.so library"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    .line 65
    sput-object p0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 66
    iput-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    .line 67
    invoke-static {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMS_native_setup(Ljava/lang/Object;)I

    .line 69
    return-void
.end method

.method public static SetNativeContex(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    sput-object p0, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private static callbackImsFunctionForHiddenMenu(III)V
    .locals 4
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 621
    const-string v1, "IMS/NativeInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackImsFunctionForHiddenMenu: arg1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..arg3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, value:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v1

    const-string/jumbo v2, "mEnableQos"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/internal/ims/IMSService;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private static callbackImsFunctionFromNative(IIILjava/lang/Object;)V
    .locals 1
    .parameter "func_type"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 598
    packed-switch p0, :pswitch_data_0

    .line 616
    :goto_0
    return-void

    .line 601
    :pswitch_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->handleAlarmEvents(III)V

    goto :goto_0

    .line 606
    :pswitch_1
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->handleAlarmEvents(III)V

    goto :goto_0

    .line 611
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->handleIPChangeEvent()V

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getImsNative()Lcom/sec/android/internal/ims/external/NativeInterface;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/sec/android/internal/ims/external/NativeInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 77
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAlarmEvents(III)V
    .locals 9
    .parameter "func_type"
    .parameter "duration"
    .parameter "timerId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 632
    const-string v3, "IMS/NativeInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAlarmEvents: Func: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 674
    :goto_0
    return-void

    .line 640
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.ims.framework.tid"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 645
    .local v0, am:Landroid/app/AlarmManager;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    invoke-static {v3, p3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 647
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 650
    iput-boolean v8, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    goto :goto_0

    .line 657
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    if-ne v3, v8, :cond_0

    .line 658
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 662
    .restart local v0       #am:Landroid/app/AlarmManager;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    invoke-static {v3, p3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 664
    .restart local v2       #pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 666
    iput-boolean v7, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    goto :goto_0

    .line 669
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    const-string v3, "IMS/NativeInterface"

    const-string v4, " NO ALARM RUNNING "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 88
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "IMS/NativeInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method private static native native_IMSCoreSvc_CodecSetParam(II)Z
.end method

.method private static native native_IMSVTAddConferenceCall([Ljava/lang/String;II)I
.end method

.method private static native native_IMSVTCallAccept(III)Z
.end method

.method private static native native_IMSVTCancelMakeCall(I)Z
.end method

.method private static native native_IMSVTDisconnect(I)Z
.end method

.method private static native native_IMSVTMakeCall(Ljava/lang/String;I)I
.end method

.method private static native native_IMSVTMakeConferenceCall([Ljava/lang/String;I)I
.end method

.method private static native native_IMS_native_setup(Ljava/lang/Object;)I
.end method

.method private static native native_SendISIMResponse([BI)I
.end method

.method private native native_XAN_IMS_DeinitSurface()V
.end method

.method private static native native_XAN_IMS_Framework_Deinit()I
.end method

.method private static native native_XAN_IMS_Framework_Init()I
.end method

.method private native native_XAN_IMS_Framework_Poweroff()I
.end method

.method private static native native_XAN_IMS_Handle_NetworkEvent(Ljava/lang/String;)I
.end method

.method private static native native_XAN_IMS_Handle_NetworkEventLoss()I
.end method

.method private static native native_XAN_IMS_SS_BlindCallTransfer(Ljava/lang/String;III)I
.end method

.method private static native native_XAN_IMS_SS_CallHold(II)I
.end method

.method private static native native_XAN_IMS_SS_CallResume(III)I
.end method

.method private native native_XAN_IMS_SendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private native native_XAN_IMS_SendSMS(Ljava/lang/String;[BI)I
.end method

.method private static native native_XAN_IMS_WifiSvcEvt(II)I
.end method

.method private native native_XAN_IMS_captureImage(Ljava/lang/String;II)V
.end method

.method private native native_XAN_IMS_reInitSurface(Landroid/view/Surface;Z)Z
.end method

.method private native native_XAN_IMS_resetCameraId()V
.end method

.method private native native_XAN_IMS_resetPreviewDisplay()V
.end method

.method private native native_XAN_IMS_sendDTMF(IIZ)V
.end method

.method private native native_XAN_IMS_sendLiveVideo()V
.end method

.method private native native_XAN_IMS_sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private native native_XAN_IMS_setCameraParam(II)V
.end method

.method private native native_XAN_IMS_setConfigParamItem(ILjava/lang/String;)V
.end method

.method private native native_XAN_IMS_setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
.end method

.method private native native_XAN_IMS_setDummySurfacePreviewDisplay(Landroid/view/Surface;II)Z
.end method

.method private native native_XAN_IMS_setIsCallEstablished(Z)V
.end method

.method private native native_XAN_IMS_setOrientation(I)V
.end method

.method private native native_XAN_IMS_setPreviewDisplay(Landroid/view/Surface;IIIZ)Z
.end method

.method private native native_XAN_IMS_stopCamera()V
.end method

.method private native native_XAN_IMS_switchCamera()V
.end method

.method private native native_XAN_IMS_switchVideoSurface()V
.end method

.method private native native_XAN_IPC_ResetRegAvailEvent()V
.end method

.method private native native_XAN_IPC_StopRegAvailEvent()V
.end method

.method private static native native_xan_timer_expiry_cb(I)I
.end method

.method private static postImsEventFromNative(IIIILjava/lang/Object;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 479
    const-string v0, ">>>>>>>>>>>>> CALL BACK EVENT FROM IMS STACK, code: "

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, data:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 493
    :try_start_0
    new-instance v6, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-direct {v6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v5           #data:Ljava/lang/String;
    .local v6, data:Ljava/lang/String;
    move-object v5, v6

    .line 496
    .end local v6           #data:Ljava/lang/String;
    .restart local v5       #data:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v7

    .line 499
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static postImsEventFromNativeForAKA(IIII[B)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 564
    const-string v0, ">>>>>>>>>>>>> CALL BACK EVENT FROM IMS STACK, code: "

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 573
    if-eqz p4, :cond_1

    .line 574
    const/4 v7, 0x0

    .local v7, index:I
    :goto_0
    :try_start_0
    array-length v0, p4

    if-ge v7, v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS_AKA : obj["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p4, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 579
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4}, Ljava/lang/String;-><init>([B)V

    .line 580
    .local v5, data:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS_AKA :data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v5           #data:Ljava/lang/String;
    .end local v7           #index:I
    :cond_1
    :goto_1
    return-void

    .line 584
    .restart local v7       #index:I
    :catch_0
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static postImsEventFromNative_Notify(IIII[Ljava/lang/Object;)V
    .locals 10
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 508
    const-string v1, ">>>>>>>>>>>>> CALL BACK EVENT FROM IMS STACK, code: "

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 517
    const/16 v1, 0x145

    if-ne p1, v1, :cond_0

    .line 519
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    .line 520
    .local v0, imsInstance:Lcom/sec/android/internal/ims/IMSService;
    if-nez v0, :cond_1

    .line 521
    const-string/jumbo v1, "inside postImsEventFromNative_Notify() : IMSService instance is NULL, so returning....: "

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 555
    .end local v0           #imsInstance:Lcom/sec/android/internal/ims/IMSService;
    .end local p4
    :cond_0
    :goto_0
    return-void

    .line 525
    .restart local v0       #imsInstance:Lcom/sec/android/internal/ims/IMSService;
    .restart local p4
    :cond_1
    invoke-static {}, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->createParticipantNumberList()V

    .line 527
    check-cast p4, [Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    .end local p4
    move-object v8, p4

    check-cast v8, [Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    .line 528
    .local v8, list:[Lcom/sec/android/internal/ims/external/UpdatedParticipants;
    const/4 v6, 0x0

    .line 529
    .local v6, iParticipantState:I
    const-string v9, ""

    .line 530
    .local v9, sParticipantNumberFormatted:Ljava/lang/String;
    const/4 v3, 0x0

    .line 531
    .local v3, iActivePlusAlertingCallerCnt:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    array-length v1, v8

    if-ge v7, v1, :cond_6

    .line 532
    aget-object v1, v8, v7

    iget v6, v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->participantState:I

    .line 533
    aget-object v1, v8, v7

    iget-object v1, v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 534
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inside postImsEventFromNative_Notify() : phoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v8, v7

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; participantState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  FormattedNumber(PUI)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getPublicUserIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getPublicUserIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 539
    if-eq v6, v4, :cond_3

    const/4 v1, 0x5

    if-ne v6, v1, :cond_4

    .line 540
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 541
    if-ne v6, v4, :cond_5

    .line 542
    invoke-static {v9}, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->addActiveParticipant(Ljava/lang/String;)V

    .line 531
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 544
    :cond_5
    invoke-static {v9}, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->addRingingParticipant(Ljava/lang/String;)V

    goto :goto_2

    .line 549
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->setNotifyStatus(ZI)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inside postImsEventFromNative_Notify() :  setActivePlusAlertingCallerCnt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    move v1, p0

    move v2, p1

    move v4, p3

    .line 551
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public DeinitSurface()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "IMS/NativeInterface"

    const-string v1, "DeinitSurface: Calling  native_XAN_IMS_DeinitSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_DeinitSurface()V

    .line 355
    return-void
.end method

.method public ResetRegAvailEvent()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "IMS/NativeInterface"

    const-string v1, "ResetRegAvailEvent: Calling  native_XAN_IPC_ResetRegAvailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IPC_ResetRegAvailEvent()V

    .line 328
    return-void
.end method

.method public StopRegAvailEvent()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "IMS/NativeInterface"

    const-string v1, "StopRegAvailEvent: Calling  native_XAN_IPC_StopRegAvailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IPC_StopRegAvailEvent()V

    .line 321
    return-void
.end method

.method public SwitchVideoSurface()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "IMS/NativeInterface"

    const-string v1, "SwitchVideoSurface: Calling  native_XAN_IMS_resetPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_switchVideoSurface()V

    .line 313
    return-void
.end method

.method public WifiSvcEvent(II)I
    .locals 3
    .parameter "Wifi_nw_state"
    .parameter "Ipaddr"

    .prologue
    .line 239
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSvcEvent: Wifi_nw_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ipaddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_WifiSvcEvt(II)I

    move-result v0

    return v0
.end method

.method public acceptVoipCall(III)Z
    .locals 3
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 197
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "acceptType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CallType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTCallAccept(III)Z

    move-result v0

    return v0
.end method

.method public addToConferenceCall(Ljava/lang/String;IIII)I
    .locals 5
    .parameter "dialNums"
    .parameter "dialType"
    .parameter "callType"
    .parameter "appType"
    .parameter "callId"

    .prologue
    .line 155
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "IMS/NativeInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToConferenceCall: DialNums: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    const-string v2, "\\$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, sCallerNos:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 161
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "IMS/NativeInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToConferenceCall: sCallerNos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    invoke-static {v0, p2, p5}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTAddConferenceCall([Ljava/lang/String;II)I

    move-result v1

    .line 165
    .local v1, success:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inside nativeinterface addtoconferencecalll() : for add user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 168
    .end local v1           #success:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public alarmExpiryCallback(I)V
    .locals 3
    .parameter "timerId"

    .prologue
    .line 677
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarmExpiryCallback: Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_xan_timer_expiry_cb(I)I

    .line 679
    return-void
.end method

.method public cancelVoipCall(I)Z
    .locals 3
    .parameter "callId"

    .prologue
    .line 190
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTCancelMakeCall(I)Z

    move-result v0

    return v0
.end method

.method public captureImage(Ljava/lang/String;II)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "isNearEnd"

    .prologue
    .line 376
    const-string v0, "IMS/NativeInterface"

    const-string v1, "captureImage: Calling  native_XAN_IMS_captureImage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_captureImage(Ljava/lang/String;II)V

    .line 378
    return-void
.end method

.method public deinitImsFramework()Z
    .locals 2

    .prologue
    .line 102
    const-string v0, "IMS/NativeInterface"

    const-string v1, "deinitImsFramework: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Deinit()I

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectVoipCall(I)Z
    .locals 3
    .parameter "callId"

    .prologue
    .line 183
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTDisconnect(I)Z

    move-result v0

    return v0
.end method

.method public getBatteryState()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    return v0
.end method

.method public holdVoipCall(II)I
    .locals 3
    .parameter "callId"
    .parameter "appType"

    .prologue
    .line 206
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "holdVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_CallHold(II)I

    move-result v0

    return v0
.end method

.method public initImsFramework()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "initImsFramework: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Init()I

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public native initProc()V
.end method

.method public makeVoipCall(Ljava/lang/String;III)I
    .locals 3
    .parameter "dialNum"
    .parameter "dialType"
    .parameter "callType"
    .parameter "appType"

    .prologue
    .line 127
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeVoipCall: DialNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CallType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTMakeCall(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public makeVoipConferenceCall(Ljava/lang/String;III)I
    .locals 4
    .parameter "dialNums"
    .parameter "dialType"
    .parameter "callType"
    .parameter "appType"

    .prologue
    .line 140
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "IMS/NativeInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeVoipConferenceCall: DialNums: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const-string v1, "\\$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, sCallerNos:[Ljava/lang/String;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const-string v1, "IMS/NativeInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeVoipConferenceCall: sCallerNos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 149
    invoke-static {v0, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTMakeConferenceCall([Ljava/lang/String;I)I

    move-result v1

    .line 151
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNetworkEvent(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 110
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "onNetworkEvent: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Handle_NetworkEvent(Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onNetworkLossEvt()Z
    .locals 2

    .prologue
    .line 119
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "onNetworkLossEvt: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Handle_NetworkEventLoss()I

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onPowerOff()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "onPowerOff: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Poweroff()I

    .line 447
    return-void
.end method

.method public reInitSurface(Landroid/view/Surface;Z)Z
    .locals 3
    .parameter "surface"
    .parameter "isCallEstablished"

    .prologue
    .line 301
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling reInitSurface ..isCallEstablished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_reInitSurface(Landroid/view/Surface;Z)Z

    move-result v0

    return v0
.end method

.method public resetCameraId()V
    .locals 2

    .prologue
    .line 345
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "resetPreviewDisplay: Calling  native_XAN_IMS_resetPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_resetCameraId()V

    .line 347
    return-void
.end method

.method public resetPreviewDisplay()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "resetPreviewDisplay: Calling  native_XAN_IMS_resetPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_resetPreviewDisplay()V

    .line 334
    return-void
.end method

.method public resumeVoipCall(III)I
    .locals 3
    .parameter "callId"
    .parameter "appType"
    .parameter "ssId"

    .prologue
    .line 214
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ssId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_CallResume(III)I

    move-result v0

    return v0
.end method

.method public sendDTMF(IIZ)V
    .locals 3
    .parameter "callid"
    .parameter "dtmfChr"
    .parameter "isKeyPressed"

    .prologue
    .line 435
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDTMF: Calling  native_XAN_IMS_sendDTMF...dtmfChr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isKeyPressed...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendDTMF(IIZ)V

    .line 437
    return-void
.end method

.method public sendISIMResponse([B)I
    .locals 2
    .parameter "isimResponse"

    .prologue
    .line 267
    const-string v0, "IMS/NativeInterface"

    const-string v1, "Native Interface: sendISIMResponse: Enter : Exit "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p1, :cond_0

    .line 270
    const-string v0, "IMS/NativeInterface"

    const-string v1, "Native Interface: sendISIMResponse: Parameter isimResponse is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_SendISIMResponse([BI)I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_SendISIMResponse([BI)I

    move-result v0

    goto :goto_0
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "sendLiveVideo: Calling  native_XAN_IMS_sendLiveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendLiveVideo()V

    .line 409
    return-void
.end method

.method public sendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .parameter "displayName"
    .parameter "remoteURI"
    .parameter "contentType"
    .parameter "dataType"
    .parameter "data"

    .prologue
    .line 258
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendSMS(Ljava/lang/String;[BI)I
    .locals 1
    .parameter "remoteNo"
    .parameter "msg"
    .parameter "length"

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SendSMS(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method public sendStillImage(Ljava/lang/String;I)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"

    .prologue
    .line 393
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "sendStillImage: Calling  native_XAN_IMS_sendStillImage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "frameSize"

    .prologue
    .line 399
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "sendStillImage: Calling  native_XAN_IMS_sendStillImage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendStillImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    return-void
.end method

.method public setBatteryState(Z)V
    .locals 0
    .parameter "isBatteryLow"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    .line 61
    return-void
.end method

.method public setCameraParam(II)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 369
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "setCameraParam: Calling  native_XAN_IMS_setCameraParam"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setCameraParam(II)V

    .line 371
    return-void
.end method

.method public setConfigParamItem(ILjava/lang/String;)V
    .locals 0
    .parameter "field"
    .parameter "value"

    .prologue
    .line 421
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setConfigParamItem(ILjava/lang/String;)V

    .line 422
    return-void
.end method

.method public setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 0
    .parameter "cfg_params"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 415
    return-void
.end method

.method public setDummySurfacePreviewDisplay(Landroid/view/Surface;II)Z
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 294
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "setDummySurfacePreviewDisplay: Calling  native_XAN_IMS_setDummyPreviewDisplay.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setDummySurfacePreviewDisplay(Landroid/view/Surface;II)Z

    move-result v0

    return v0
.end method

.method public setIMSOrientation(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 361
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "setIMSOrientation: Calling  native_XAN_IMS_setOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setOrientation(I)V

    .line 363
    return-void
.end method

.method public setIsCallEstablished(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 453
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "setIsCallEstablished: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setIsCallEstablished(Z)V

    .line 455
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)Z
    .locals 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"

    .prologue
    .line 281
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "setPreviewDisplay: Calling  native_XAN_IMS_setPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setPreviewDisplay(Landroid/view/Surface;IIIZ)Z

    move-result v0

    return v0
.end method

.method public setPreviewDisplay(Landroid/view/Surface;IIIZ)Z
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"
    .parameter "isCallEstablished"

    .prologue
    .line 286
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewDisplay: Calling  native_XAN_IMS_setPreviewDisplay...isCallEstablished..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isNearEnd..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setPreviewDisplay(Landroid/view/Surface;IIIZ)Z

    move-result v0

    return v0
.end method

.method public stopCamera()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_stopCamera()V

    .line 340
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "IMS/NativeInterface"

    const-string/jumbo v1, "switchCamera: Calling  native_XAN_IMS_switchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_switchCamera()V

    .line 386
    return-void
.end method

.method public transferVoipCallBlind(IILjava/lang/String;I)I
    .locals 3
    .parameter "callId"
    .parameter "dialType"
    .parameter "referNum"
    .parameter "appType"

    .prologue
    .line 224
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferVoipCallBlind: CallID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DialType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ReferNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p3, p1, p2, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_BlindCallTransfer(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

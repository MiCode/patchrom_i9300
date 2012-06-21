.class Lcom/android/server/TvoutService$3;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, action:Ljava/lang/String;
    const-string v4, "TvoutService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TvoutService Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    const-string v4, "state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 293
    .local v2, bStatus:Z
    const-string v4, "TvoutService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TvoutService HDMI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-ne v2, v7, :cond_2

    .line 297
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;Z)Z

    .line 298
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v4}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 300
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 301
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 302
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 303
    .local v3, msg:Landroid/os/Message;
    const-string v4, "HDMI connected. AllShare Cast turned off"

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 415
    .end local v2           #bStatus:Z
    .end local v3           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    const-string v4, "persist.sys.camera.connect"

    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 308
    .restart local v2       #bStatus:Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v2}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 309
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v2}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 310
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v4, v2}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 311
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 312
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 313
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v7}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v2}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 350
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v2}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 351
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v4, v2}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 352
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;Z)Z

    .line 353
    const-string v4, "persist.sys.camera.transform"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "persist.sys.camera.connect"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v8}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 356
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    goto :goto_0

    .line 360
    .end local v2           #bStatus:Z
    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 363
    const-string v4, "TvoutService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 367
    :cond_4
    const-string v4, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 369
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$102(Lcom/android/server/TvoutService;I)I

    .line 370
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;Z)Z

    .line 371
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    .line 372
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v4, v9, v10}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 375
    :cond_5
    const-string v4, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 377
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$102(Lcom/android/server/TvoutService;I)I

    .line 378
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;Z)Z

    .line 379
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    .line 380
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v4, v9, v10}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 383
    :cond_6
    const-string v4, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 385
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;Z)Z

    .line 386
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    .line 387
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v4, v8}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 388
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v5, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v4, v5, v6}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 390
    :cond_7
    const-string v4, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 392
    const-string v4, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 394
    .local v1, bAllShareCastConnectedFlag:Z
    if-eqz v1, :cond_8

    .line 395
    const-string v4, "TvoutService_Java"

    const-string v5, "AllShare Cast Connected !!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 399
    :cond_8
    const-string v4, "TvoutService_Java"

    const-string v5, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 402
    const-string v4, "persist.sys.camera.transform"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v4, "persist.sys.camera.connect"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 408
    .end local v1           #bAllShareCastConnectedFlag:Z
    :cond_9
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 409
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 411
    :cond_a
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v4}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v4

    if-eq v4, v7, :cond_b

    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v4}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 413
    :cond_b
    iget-object v4, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v4, v7}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0
.end method

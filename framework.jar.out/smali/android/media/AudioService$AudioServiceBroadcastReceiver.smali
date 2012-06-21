.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3132
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3132
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 3137
    .local v10, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3138
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 3141
    .local v24, dockState:I
    packed-switch v24, :pswitch_data_0

    .line 3156
    const/16 v20, 0x0

    .line 3158
    .local v20, config:I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3598
    .end local v20           #config:I
    .end local v24           #dockState:I
    :cond_0
    :goto_1
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 3599
    const-string v2, "audioParam;curDevice"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3600
    .local v28, isMusicHPH:Ljava/lang/String;
    const/16 v37, 0x0

    .local v37, spkIndex:I
    const/16 v25, 0x0

    .line 3601
    .local v25, hphIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    aget-object v40, v2, v3

    .line 3602
    .local v40, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v3

    const/16 v4, 0xd

    aget v3, v3, v4

    aget-object v39, v2, v3

    .line 3603
    .local v39, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v40 .. v40}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_38

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v40 .. v40}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v37

    .line 3604
    :goto_2
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v39 .. v39}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_39

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v39 .. v39}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    .line 3606
    :goto_3
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3607
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3608
    .local v38, state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isMediaSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3609
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_3a

    .line 3610
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plug EAPHONE  mMediaSilentMode SPK volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v4}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v4}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    .line 3617
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6902(Landroid/media/AudioService;I)I

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;I)I

    .line 3619
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaSilentMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;Z)Z

    .line 3624
    .end local v38           #state:I
    :cond_1
    const-string v2, "HPH"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3625
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/16 v4, 0x40

    move/from16 v0, v37

    move/from16 v1, v25

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3626
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x9

    const/16 v4, 0x40

    move/from16 v0, v37

    move/from16 v1, v25

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3631
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3632
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xa

    const/16 v4, 0x40

    move/from16 v0, v25

    move/from16 v1, v37

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3637
    .end local v25           #hphIndex:I
    .end local v28           #isMusicHPH:Ljava/lang/String;
    .end local v37           #spkIndex:I
    .end local v39           #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .end local v40           #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    :goto_6
    return-void

    .line 3143
    .restart local v24       #dockState:I
    :pswitch_0
    const/16 v20, 0x7

    .line 3144
    .restart local v20       #config:I
    goto/16 :goto_0

    .line 3146
    .end local v20           #config:I
    :pswitch_1
    const/16 v20, 0x6

    .line 3147
    .restart local v20       #config:I
    goto/16 :goto_0

    .line 3149
    .end local v20           #config:I
    :pswitch_2
    const/16 v20, 0x8

    .line 3150
    .restart local v20       #config:I
    goto/16 :goto_0

    .line 3152
    .end local v20           #config:I
    :pswitch_3
    const/16 v20, 0x9

    .line 3153
    .restart local v20       #config:I
    goto/16 :goto_0

    .line 3159
    .end local v20           #config:I
    .end local v24           #dockState:I
    :cond_3
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3160
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3162
    .restart local v38       #state:I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 3164
    .local v16, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    move/from16 v1, v38

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v0, v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_1

    .line 3165
    .end local v16           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v38           #state:I
    :cond_4
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3166
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3168
    .restart local v38       #state:I
    const/16 v22, 0x10

    .line 3169
    .local v22, device:I
    const/4 v12, 0x0

    .line 3171
    .local v12, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 3172
    .restart local v16       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v16, :cond_2

    .line 3176
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 3177
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    .line 3178
    .local v15, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v15, :cond_5

    .line 3179
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3190
    :cond_5
    :goto_7
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3191
    const-string v12, ""

    .line 3194
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3195
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v27, 0x1

    .line 3198
    .local v27, isConnected:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3199
    if-eqz v27, :cond_9

    const/4 v2, 0x2

    move/from16 v0, v38

    if-eq v0, v2, :cond_9

    .line 3200
    const/4 v2, 0x0

    :try_start_1
    move/from16 v0, v22

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3203
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V

    .line 3213
    :cond_7
    :goto_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3214
    :try_start_2
    monitor-exit v3

    goto/16 :goto_1

    .end local v27           #isConnected:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3182
    :sswitch_0
    const/16 v22, 0x20

    .line 3183
    goto :goto_7

    .line 3185
    :sswitch_1
    const/16 v22, 0x40

    goto :goto_7

    .line 3195
    :cond_8
    const/16 v27, 0x0

    goto :goto_8

    .line 3206
    .restart local v27       #isConnected:Z
    :cond_9
    if-nez v27, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_7

    .line 3207
    const/4 v2, 0x1

    :try_start_3
    move/from16 v0, v22

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3210
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_9

    .line 3213
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3215
    .end local v12           #address:Ljava/lang/String;
    .end local v15           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v16           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v22           #device:I
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_a
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3217
    :try_start_5
    const-string/jumbo v2, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3218
    .restart local v38       #state:I
    const-string/jumbo v2, "microphone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 3220
    .local v29, microphone:I
    new-instance v26, Landroid/content/Intent;

    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3221
    .local v26, intentForCA:Landroid/content/Intent;
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 3222
    const-string v2, "AudioService"

    const-string/jumbo v4, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3230
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v31

    .line 3231
    .local v31, musicLev:I
    const/16 v21, 0xa

    .line 3232
    .local v21, defaultMusicLev:I
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_b

    .line 3233
    move/from16 v0, v31

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 3234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0xd

    const/16 v5, 0x40

    move/from16 v0, v21

    invoke-virtual {v2, v4, v0, v5}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 3235
    const-string v2, "AudioService"

    const-string v4, "HEADSET PLUG IN : set default volume "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    .end local v21           #defaultMusicLev:I
    .end local v31           #musicLev:I
    :cond_b
    if-eqz v29, :cond_e

    .line 3242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3244
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_d

    if-eqz v27, :cond_d

    .line 3245
    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3248
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3272
    :cond_c
    :goto_a
    monitor-exit v3

    goto/16 :goto_1

    .end local v26           #intentForCA:Landroid/content/Intent;
    .end local v27           #isConnected:Z
    .end local v29           #microphone:I
    .end local v38           #state:I
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 3249
    .restart local v26       #intentForCA:Landroid/content/Intent;
    .restart local v27       #isConnected:Z
    .restart local v29       #microphone:I
    .restart local v38       #state:I
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_c

    if-nez v27, :cond_c

    .line 3250
    const/4 v2, 0x4

    const/4 v4, 0x1

    :try_start_6
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3257
    .end local v27           #isConnected:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3259
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_f

    if-eqz v27, :cond_f

    .line 3260
    const/16 v2, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3264
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_c

    if-nez v27, :cond_c

    .line 3265
    const/16 v2, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    .line 3273
    .end local v26           #intentForCA:Landroid/content/Intent;
    .end local v27           #isConnected:Z
    .end local v29           #microphone:I
    .end local v38           #state:I
    :cond_10
    const-string v2, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3274
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3275
    .restart local v38       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_ANLG_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3277
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3279
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_12

    if-eqz v27, :cond_12

    .line 3280
    const/16 v2, 0x800

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    :cond_11
    :goto_b
    monitor-exit v3

    goto/16 :goto_1

    .end local v27           #isConnected:Z
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 3285
    .restart local v27       #isConnected:Z
    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_11

    if-nez v27, :cond_11

    .line 3286
    const/16 v2, 0x800

    const/4 v4, 0x1

    :try_start_8
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_b

    .line 3294
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_13
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3295
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3296
    .restart local v38       #state:I
    const-string v2, "channels"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3298
    .local v19, channels:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_HDMI_AUDIO_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channels = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3300
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3302
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_15

    if-eqz v27, :cond_15

    .line 3303
    const/16 v2, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3306
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3313
    :cond_14
    :goto_c
    monitor-exit v3

    goto/16 :goto_1

    .end local v27           #isConnected:Z
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v2

    .line 3307
    .restart local v27       #isConnected:Z
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_14

    if-nez v27, :cond_14

    .line 3308
    const/16 v2, 0x400

    const/4 v4, 0x1

    :try_start_a
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3311
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_c

    .line 3314
    .end local v19           #channels:I
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_16
    const-string v2, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3315
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3316
    .restart local v38       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_DGTL_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3318
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3320
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_18

    if-eqz v27, :cond_18

    .line 3321
    const/16 v2, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    :cond_17
    :goto_d
    monitor-exit v3

    goto/16 :goto_1

    .end local v27           #isConnected:Z
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2

    .line 3326
    .restart local v27       #isConnected:Z
    :cond_18
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_17

    if-nez v27, :cond_17

    .line 3327
    const/16 v2, 0x1000

    const/4 v4, 0x1

    :try_start_c
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3331
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_d

    .line 3335
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_19
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3336
    const/4 v14, 0x0

    .line 3337
    .local v14, broadcast:Z
    const/16 v38, -0x1

    .line 3338
    .restart local v38       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 3339
    :try_start_d
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 3341
    .local v17, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1b

    .line 3345
    :cond_1a
    const/4 v14, 0x1

    .line 3347
    :cond_1b
    packed-switch v17, :pswitch_data_1

    .line 3369
    :cond_1c
    :goto_e
    const/4 v14, 0x0

    .line 3372
    :cond_1d
    :goto_f
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 3373
    if-eqz v14, :cond_0

    .line 3374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v38

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 3377
    new-instance v33, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3378
    .local v33, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3349
    .end local v33           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v38, 0x1

    .line 3350
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1d

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_f

    .line 3372
    .end local v17           #btState:I
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v2

    .line 3357
    .restart local v17       #btState:I
    :pswitch_5
    const/16 v38, 0x0

    .line 3358
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 3359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_f

    .line 3362
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1c

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_e

    .line 3381
    .end local v14           #broadcast:Z
    .end local v17           #btState:I
    .end local v38           #state:I
    :cond_1e
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3382
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6302(Landroid/media/AudioService;Z)Z

    .line 3384
    const-string v2, "audio.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3385
    .local v35, salescode:Ljava/lang/String;
    if-nez v35, :cond_21

    .line 3386
    const-string v2, "AudioService"

    const-string v3, "can not get salescode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6202(Landroid/media/AudioService;Z)Z

    .line 3395
    :cond_1f
    :goto_10
    const-string/jumbo v2, "ril.simtype"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3397
    .local v36, simtype:Ljava/lang/String;
    const-string v2, "2"

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3398
    const-string/jumbo v2, "simtype=kt"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3403
    :cond_20
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$6402(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6502(Landroid/media/AudioService;I)I

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Z

    .line 3413
    new-instance v33, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3414
    .restart local v33       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3418
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 3419
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_0

    .line 3420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_1

    .line 3390
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v33           #newIntent:Landroid/content/Intent;
    .end local v36           #simtype:Ljava/lang/String;
    :cond_21
    const-string v2, "1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6202(Landroid/media/AudioService;Z)Z

    goto/16 :goto_10

    .line 3399
    .restart local v36       #simtype:Ljava/lang/String;
    :cond_22
    const-string v2, "4"

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3400
    const-string/jumbo v2, "simtype=skt"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3423
    .end local v35           #salescode:Ljava/lang/String;
    .end local v36           #simtype:Ljava/lang/String;
    :cond_23
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3424
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3426
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v34

    .line 3427
    .local v34, packageName:Ljava/lang/String;
    if-eqz v34, :cond_0

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v34

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3431
    .end local v34           #packageName:Ljava/lang/String;
    :cond_24
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3432
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3433
    :cond_25
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3434
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3435
    :cond_26
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3436
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3437
    .restart local v38       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi Display device state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3439
    .restart local v27       #isConnected:Z
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_27

    if-nez v27, :cond_27

    .line 3440
    const-string v2, "count"

    const/16 v3, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3441
    .local v32, nBufCnt:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3443
    const/16 v2, 0x4000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3446
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x4000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3447
    .end local v32           #nBufCnt:I
    :cond_27
    if-nez v38, :cond_0

    if-eqz v27, :cond_0

    .line 3448
    const/16 v2, 0x4000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3455
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_28
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 3471
    const-string/jumbo v41, "off"

    .line 3473
    .local v41, tty_mode:Ljava/lang/String;
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3461
    .end local v41           #tty_mode:Ljava/lang/String;
    :pswitch_7
    const-string v41, "full"

    .line 3462
    .restart local v41       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3464
    .end local v41           #tty_mode:Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v41, "vco"

    .line 3465
    .restart local v41       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3467
    .end local v41           #tty_mode:Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v41, "hco"

    .line 3468
    .restart local v41       #tty_mode:Ljava/lang/String;
    goto :goto_12

    .line 3478
    .end local v41           #tty_mode:Ljava/lang/String;
    :cond_29
    const-string v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3480
    const-string/jumbo v2, "mono"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 3481
    .local v30, monoMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #setter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$5502(Landroid/media/AudioService;I)I

    .line 3482
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;I)V

    goto/16 :goto_1

    .line 3484
    .end local v30           #monoMode:I
    :cond_2a
    const-string v2, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3486
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string/jumbo v3, "mute"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Landroid/media/AudioService;->mAllSoundMute:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6802(Landroid/media/AudioService;I)I

    .line 3487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;allsoundmute="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAllSoundMute:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3491
    :cond_2b
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3492
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3493
    .restart local v38       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3496
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_2c

    if-eqz v27, :cond_2c

    .line 3497
    const/16 v2, 0x800

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3500
    :cond_2c
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_0

    if-nez v27, :cond_0

    .line 3501
    const/16 v2, 0x800

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3507
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_2d
    const-string v2, "com.sec.tms.audio.server"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3508
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3509
    .restart local v38       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    const-string v2, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3511
    .local v13, app:Ljava/lang/String;
    if-eqz v13, :cond_32

    .line 3512
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const-string/jumbo v2, "server"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3514
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3515
    .restart local v27       #isConnected:Z
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_2e

    if-eqz v27, :cond_2e

    .line 3516
    const v2, 0x8000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3519
    :cond_2e
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_0

    if-nez v27, :cond_0

    .line 3520
    const v2, 0x8000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const v4, 0x8000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3524
    .end local v27           #isConnected:Z
    :cond_2f
    const-string v2, "client"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3526
    .restart local v27       #isConnected:Z
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_30

    if-eqz v27, :cond_30

    .line 3527
    const/high16 v2, 0x1000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3529
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3530
    :cond_30
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_0

    if-nez v27, :cond_0

    .line 3531
    const/high16 v2, 0x1000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/high16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3536
    .end local v27           #isConnected:Z
    :cond_31
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tms evt app wrong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3539
    :cond_32
    const-string v2, "AudioService"

    const-string/jumbo v3, "tms evt app is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3546
    .end local v13           #app:Ljava/lang/String;
    .end local v38           #state:I
    :cond_33
    const-string v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3547
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 3548
    .restart local v38       #state:I
    const-string v2, "channels"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3549
    .local v19, channels:Ljava/lang/String;
    const-string v2, "cardnumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 3550
    .local v18, cardnumber:Ljava/lang/String;
    const-string v2, "devicenumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3551
    .local v23, devicenumber:Ljava/lang/String;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTERNAL_USB_HEADSET_PLUG, channels = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cardnumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "devicenumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3553
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    .line 3555
    .restart local v27       #isConnected:Z
    if-nez v38, :cond_35

    if-eqz v27, :cond_35

    .line 3556
    const/16 v2, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    :cond_34
    :goto_13
    monitor-exit v3

    goto/16 :goto_1

    .end local v27           #isConnected:Z
    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v2

    .line 3561
    .restart local v27       #isConnected:Z
    :cond_35
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_34

    if-nez v27, :cond_34

    .line 3562
    const/16 v2, 0x1000

    const/4 v4, 0x1

    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_13

    .line 3584
    .end local v18           #cardnumber:Ljava/lang/String;
    .end local v19           #channels:Ljava/lang/String;
    .end local v23           #devicenumber:Ljava/lang/String;
    .end local v27           #isConnected:Z
    .end local v38           #state:I
    :cond_36
    const-string v2, "android.intent.action.EXTERNAL_CAR_CONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3586
    const-string v2, "android.intent.action.EXTERNAL_CAR_DISCONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3591
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3592
    const-string v2, "audioParam;factoryteststate=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3593
    :cond_37
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3594
    const-string v2, "audioParam;factoryteststate=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3603
    .restart local v25       #hphIndex:I
    .restart local v28       #isMusicHPH:Ljava/lang/String;
    .restart local v37       #spkIndex:I
    .restart local v39       #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .restart local v40       #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_38
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v40 .. v40}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v37

    goto/16 :goto_2

    .line 3604
    :cond_39
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v39 .. v39}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    goto/16 :goto_3

    .line 3614
    .restart local v38       #state:I
    :cond_3a
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plug SPEAKER  mMediaSilentMode EAR volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xd

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    goto/16 :goto_4

    .line 3628
    .end local v38           #state:I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/16 v4, 0x40

    move/from16 v0, v25

    move/from16 v1, v37

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3629
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x9

    const/16 v4, 0x40

    move/from16 v0, v25

    move/from16 v1, v37

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    goto/16 :goto_5

    .line 3634
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xa

    const/16 v4, 0x40

    move/from16 v0, v37

    move/from16 v1, v25

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    goto/16 :goto_6

    .line 3141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3179
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 3347
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    .line 3457
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

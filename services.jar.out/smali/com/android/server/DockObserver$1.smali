.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 150
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 152
    :pswitch_0
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dock state changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v11}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v9, "device_provisioned"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 159
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_0

    .line 160
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Device not provisioned, skipping dock broadcast"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit p0

    goto :goto_0

    .line 239
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 165
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x2000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v9, "android.intent.extra.DOCK_STATE"

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 172
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v9

    if-nez v9, :cond_5

    .line 180
    const-string v9, "dock_sounds_enabled"

    const/4 v10, 0x1

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 183
    const/4 v8, 0x0

    .line 184
    .local v8, whichSound:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    if-nez v9, :cond_7

    .line 185
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_6

    .line 189
    :cond_2
    const-string v8, "desk_undock_sound"

    .line 205
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 206
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 208
    .local v4, ringerMode:I
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "whichSound is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v8, :cond_4

    .line 211
    const/4 v9, 0x1

    if-ne v4, v9, :cond_a

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_a

    .line 213
    new-instance v7, Landroid/os/Vibrator;

    invoke-direct {v7}, Landroid/os/Vibrator;-><init>()V

    .line 214
    .local v7, vibrator:Landroid/os/Vibrator;
    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 237
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #ringerMode:I
    .end local v7           #vibrator:Landroid/os/Vibrator;
    .end local v8           #whichSound:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 239
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 190
    .restart local v8       #whichSound:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 191
    const-string v8, "car_undock_sound"

    goto :goto_1

    .line 194
    :cond_7
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_9

    .line 198
    :cond_8
    const-string v8, "desk_dock_sound"

    goto/16 :goto_1

    .line 199
    :cond_9
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 200
    const-string v8, "car_dock_sound"

    goto/16 :goto_1

    .line 216
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #ringerMode:I
    :cond_a
    invoke-static {v2, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, soundPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "soundPath is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v5, :cond_4

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 220
    .local v6, soundUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "soundUri is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v6, :cond_4

    .line 222
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v10

    #setter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v9, v10}, Lcom/android/server/DockObserver;->access$402(Lcom/android/server/DockObserver;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 223
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 224
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 225
    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Landroid/media/Ringtone;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_2

    .line 234
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #ringerMode:I
    .end local v5           #soundPath:Ljava/lang/String;
    .end local v6           #soundUri:Landroid/net/Uri;
    .end local v8           #whichSound:Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

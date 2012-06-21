.class Landroid/hardware/CameraSound$CameraSoundPlayer;
.super Ljava/lang/Object;
.source "CameraSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSoundPlayer"
.end annotation


# static fields
.field private static final mFocusSound:Ljava/lang/String; = "/system/media/audio/ui/camera_focus.ogg"

.field private static final mShutterSound:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final mVideoStartSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final mVideoStopSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "soundId"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    .line 186
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/hardware/CameraSound$CameraSoundPlayer;->release()V

    .line 220
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 191
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    :cond_0
    monitor-enter p0

    .line 194
    :try_start_0
    iget v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 201
    monitor-enter p0

    .line 202
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :goto_0
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 213
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 215
    :cond_1
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 131
    iget v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    packed-switch v3, :pswitch_data_0

    .line 145
    const-string v3, "CameraSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requested."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 133
    :pswitch_0
    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    .line 148
    .local v1, soundFilePath:Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 150
    :try_start_0
    iget v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    if-nez v3, :cond_0

    .line 151
    const-string/jumbo v3, "situation=3;device=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 152
    .local v2, volFloat:F
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 154
    .end local v2           #volFloat:F
    :cond_0
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 155
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 157
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :goto_2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :goto_3
    :try_start_2
    iget-boolean v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    if-eqz v3, :cond_1

    .line 168
    monitor-exit p0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error playing sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_1
    const-string v1, "/system/media/audio/ui/camera_focus.ogg"

    .line 137
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 139
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_2
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 140
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_3
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 143
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CameraSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting up sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    if-gtz v3, :cond_2

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 172
    :cond_2
    iget v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 176
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :try_start_5
    iget-object v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

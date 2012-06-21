.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 1743
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 1744
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1745
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1746
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 1750
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mNativeContext:I
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1751
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mediaplayer went away with unhandled events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1754
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1906
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1756
    :sswitch_1
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1758
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnPreparedListener. Send MEDIA_PREPARED message."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 1764
    :cond_2
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnPreparedListener is null. Failed to send MEDIA_PREPARED message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1769
    :sswitch_2
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1771
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnCompletionListener. Send MEDIA_PLAYBACK_COMPLETE message."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 1779
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v7}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 1777
    :cond_3
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnCompletionListener is null. Failed to send MEDIA_PLAYBACK_COMPLETE message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1783
    :sswitch_3
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1784
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 1787
    :cond_4
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnBufferingUpdateListener is null. Failed to send MEDIA_BUFFERING_UPDATE message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1792
    :sswitch_4
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1794
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnSeekCompleteListener. Send MEDIA_SEEK_COMPLETE message."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 1800
    :cond_5
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnSeekCompleteListener is null. Failed to send MEDIA_SEEK_COMPLETE message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1805
    :sswitch_5
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1807
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnVideoSizeChangedListener. Send MEDIA_SET_VIDEO_SIZE message."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 1817
    :goto_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_7

    .line 1818
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    #setter for: Landroid/media/MediaPlayer;->mIsVideo:Z
    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->access$702(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_0

    .line 1813
    :cond_6
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnVideoSizeChangedListener is null. Failed to send MEDIA_SET_VIDEO_SIZE message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1820
    :cond_7
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t send intent. msg.arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg.arg2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1827
    :sswitch_6
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/4 v0, 0x0

    .line 1829
    .local v0, error_was_handled:Z
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1832
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, -0x31

    if-eq v2, v3, :cond_8

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, -0x3c

    if-eq v2, v3, :cond_8

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, -0x3d

    if-eq v2, v3, :cond_8

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, -0x40

    if-ne v2, v3, :cond_b

    :cond_8
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1836
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 1838
    const-string v3, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v0

    .line 1863
    :goto_3
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    .line 1864
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 1866
    :cond_9
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v7}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 1843
    :cond_a
    const-string v2, "MediaPlayer"

    const-string v3, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    goto :goto_3

    .line 1848
    :cond_b
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_c

    .line 1850
    const-string v2, "MediaPlayer"

    const-string v3, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    goto :goto_3

    .line 1856
    :cond_c
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    goto :goto_3

    .line 1861
    :cond_d
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnErrorListener is null. Failed to send MEDIA_ERROR message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1870
    .end local v0           #error_was_handled:Z
    :sswitch_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x2bc

    if-eq v2, v3, :cond_e

    .line 1871
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_e
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1875
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnInfoListener. Send MEDIA_INFO message."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 1881
    :cond_f
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnInfoListener is null. Failed to send MEDIA_INFO message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1886
    :sswitch_8
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1887
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_10

    .line 1888
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 1890
    :cond_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 1891
    new-instance v1, Landroid/media/TimedText;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Landroid/media/TimedText;-><init>([B)V

    .line 1892
    .local v1, text:Landroid/media/TimedText;
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 1898
    .end local v1           #text:Landroid/media/TimedText;
    :cond_11
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mOnTimedTextListener is null. Failed to send MEDIA_TIMED_TEXT message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method

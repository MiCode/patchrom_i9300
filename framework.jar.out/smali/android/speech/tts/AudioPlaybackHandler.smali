.class Landroid/speech/tts/AudioPlaybackHandler;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/AudioPlaybackHandler$1;,
        Landroid/speech/tts/AudioPlaybackHandler$ListEntry;,
        Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_THREADING:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x1

.field private static final HIGH_PRIORITY:I = 0x0

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final PLAY_AUDIO:I = 0x5

.field private static final PLAY_SILENCE:I = 0x6

.field private static final SHUTDOWN:I = -0x1

.field private static final SYNTHESIS_DATA_AVAILABLE:I = 0x2

.field private static final SYNTHESIS_DONE:I = 0x3

.field private static final SYNTHESIS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TTS.AudioPlaybackHandler"


# instance fields
.field private volatile mCurrentParams:Landroid/speech/tts/MessageParams;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private volatile mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

.field private final mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/speech/tts/AudioPlaybackHandler$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 51
    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    .line 53
    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;

    invoke-direct {v1, p0, v3}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    const-string v2, "TTS.AudioPlaybackThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    .line 60
    return-void
.end method

.method static synthetic access$300(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/MessageParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->setCurrentParams(Landroid/speech/tts/MessageParams;)V

    return-void
.end method

.method static synthetic access$500(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private static blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 15
    .parameter "params"

    .prologue
    const-wide/16 v4, 0x9c4

    .line 527
    iget-object v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    .line 528
    .local v6, audioTrack:Landroid/media/AudioTrack;
    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v11, v2, v3

    .line 530
    .local v11, lengthInFrames:I
    const/4 v12, -0x1

    .line 531
    .local v12, previousPosition:I
    const/4 v9, 0x0

    .line 532
    .local v9, currentPosition:I
    const-wide/16 v7, 0x0

    .line 535
    .local v7, blockedTimeMs:J
    :goto_0
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v9

    if-ge v9, v11, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 537
    sub-int v2, v11, v9

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    .line 539
    .local v0, estimatedTimeMs:J
    const-wide/16 v2, 0x14

    invoke-static/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(JJJ)J

    move-result-wide v13

    .line 544
    .local v13, sleepTimeMs:J
    if-ne v9, v12, :cond_1

    .line 547
    add-long/2addr v7, v13

    .line 549
    cmp-long v2, v7, v4

    if-lez v2, :cond_2

    .line 550
    const-string v2, "TTS.AudioPlaybackHandler"

    const-string v3, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0           #estimatedTimeMs:J
    .end local v13           #sleepTimeMs:J
    :cond_0
    :goto_1
    return-void

    .line 555
    .restart local v0       #estimatedTimeMs:J
    .restart local v13       #sleepTimeMs:J
    :cond_1
    const-wide/16 v7, 0x0

    .line 557
    :cond_2
    move v12, v9

    .line 563
    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v10

    .line 565
    .local v10, ie:Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 491
    iget-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    if-gtz v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    if-eqz v0, :cond_2

    .line 507
    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_0

    .line 509
    :cond_2
    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_0
.end method

.method private static blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 5
    .parameter "params"

    .prologue
    .line 514
    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v2, v3, v4

    .line 515
    .local v2, lengthInFrames:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    .line 520
    .local v0, estimatedTimeMs:J
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static clip(FFF)F
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 639
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method private static final clip(JJJ)J
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 571
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 579
    .end local p2
    :goto_0
    return-wide p2

    .line 575
    .restart local p2
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    .line 576
    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 579
    goto :goto_0
.end method

.method private static createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    .line 583
    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mChannelCount:I

    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->getChannelConfig(I)I

    move-result v3

    .line 584
    .local v3, channelConfig:I
    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    .line 585
    .local v2, sampleRateInHz:I
    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioFormat:I

    .line 587
    .local v4, audioFormat:I
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 589
    .local v8, minBufferSizeInBytes:I
    const/16 v1, 0x2000

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 591
    .local v5, bufferSizeInBytes:I
    const/4 v0, 0x0

    .line 593
    .local v0, audioTrack:Landroid/media/AudioTrack;
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    .end local v0           #audioTrack:Landroid/media/AudioTrack;
    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mStreamType:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .restart local v0       #audioTrack:Landroid/media/AudioTrack;
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 602
    const-string v1, "TTS.AudioPlaybackHandler"

    const-string v6, "Unable to create audio track."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 604
    const/4 v0, 0x0

    .line 609
    .end local v0           #audioTrack:Landroid/media/AudioTrack;
    :goto_1
    return-object v0

    .line 595
    :catch_0
    move-exception v7

    .line 596
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "TTS.AudioPlaybackHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retry, ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Landroid/speech/tts/SynthesisMessageParams;->mStreamType:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") to Stream_Music "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .restart local v0       #audioTrack:Landroid/media/AudioTrack;
    goto :goto_0

    .line 606
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    iput v5, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    .line 608
    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mVolume:F

    iget v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mPan:F

    invoke-static {v0, v1, v6}, Landroid/speech/tts/AudioPlaybackHandler;->setupVolume(Landroid/media/AudioTrack;FF)V

    goto :goto_1
.end method

.method static getChannelConfig(I)I
    .locals 1
    .parameter "channelCount"

    .prologue
    .line 613
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 614
    const/4 v0, 0x4

    .line 619
    :goto_0
    return v0

    .line 615
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 616
    const/16 v0, 0xc

    goto :goto_0

    .line 619
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentParams()Landroid/speech/tts/MessageParams;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    return-object v0
.end method

.method private handleAudio(Landroid/speech/tts/MessageParams;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 341
    move-object v0, p1

    check-cast v0, Landroid/speech/tts/AudioMessageParams;

    .line 342
    .local v0, params:Landroid/speech/tts/AudioMessageParams;
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 346
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/BlockingMediaPlayer;->startAndWait()Z

    .line 347
    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    .line 349
    return-void
.end method

.method private handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 310
    iget-object v0, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    .line 311
    .local v0, msg:Landroid/speech/tts/MessageParams;
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 312
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisStart(Landroid/speech/tts/MessageParams;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 314
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    .line 315
    :cond_2
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 316
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    .line 317
    :cond_3
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 318
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleAudio(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    .line 319
    :cond_4
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 320
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSilence(Landroid/speech/tts/MessageParams;)V

    goto :goto_0
.end method

.method private handleSilence(Landroid/speech/tts/MessageParams;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 329
    move-object v0, p1

    check-cast v0, Landroid/speech/tts/SilenceMessageParams;

    .line 330
    .local v0, params:Landroid/speech/tts/SilenceMessageParams;
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 331
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    .line 336
    return-void
.end method

.method private handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 386
    move-object v3, p1

    check-cast v3, Landroid/speech/tts/SynthesisMessageParams;

    .line 387
    .local v3, param:Landroid/speech/tts/SynthesisMessageParams;
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    if-nez v6, :cond_0

    .line 388
    const-string v6, "TTS.AudioPlaybackHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error : null audio track in handleDataAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eq v3, v6, :cond_1

    .line 393
    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "Call to dataAvailable without done() / start()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 398
    .local v0, audioTrack:Landroid/media/AudioTrack;
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getNextBuffer()Landroid/speech/tts/SynthesisMessageParams$ListEntry;

    move-result-object v1

    .line 400
    .local v1, bufferCopy:Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    if-nez v1, :cond_2

    .line 401
    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "No buffers available to play."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    .line 406
    .local v4, playState:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 408
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 410
    :cond_3
    const/4 v2, 0x0

    .line 411
    .local v2, count:I
    :goto_1
    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 414
    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    iget-object v7, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 415
    .local v5, written:I
    if-gtz v5, :cond_5

    .line 420
    .end local v5           #written:I
    :cond_4
    iget v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    .line 421
    iget-object v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v6}, Landroid/speech/tts/EventLogger;->onPlaybackStart()V

    goto :goto_0

    .line 418
    .restart local v5       #written:I
    :cond_5
    add-int/2addr v2, v5

    .line 419
    goto :goto_1
.end method

.method private handleSynthesisDone(Landroid/speech/tts/MessageParams;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 426
    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    .line 429
    .local v1, params:Landroid/speech/tts/SynthesisMessageParams;
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 431
    .local v0, audioTrack:Landroid/media/AudioTrack;
    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 437
    :cond_0
    iget v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, v1, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    if-ge v2, v3, :cond_1

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    .line 441
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 446
    :cond_1
    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V

    .line 453
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 460
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    .line 467
    :goto_1
    iput-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 468
    iget-object v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onWriteData()V

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 465
    :cond_2
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_1
.end method

.method private handleSynthesisStart(Landroid/speech/tts/MessageParams;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 362
    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    .line 367
    .local v1, param:Landroid/speech/tts/SynthesisMessageParams;
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "TTS.AudioPlaybackHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : Missing call to done() for request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-direct {p0, v2}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    .line 373
    :cond_0
    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 376
    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;

    move-result-object v0

    .line 380
    .local v0, audioTrack:Landroid/media/AudioTrack;
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 381
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 382
    return-void
.end method

.method private declared-synchronized removeAllMessages()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(Ljava/lang/String;)V
    .locals 3
    .parameter "callingApp"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    .line 243
    .local v0, current:Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    invoke-virtual {v2}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v0           #current:Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 248
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/speech/tts/AudioPlaybackHandler$ListEntry;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private setCurrentParams(Landroid/speech/tts/MessageParams;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 297
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    .line 298
    return-void
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .locals 7
    .parameter "audioTrack"
    .parameter "volume"
    .parameter "pan"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 623
    invoke-static {p1, v6, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v1

    .line 624
    .local v1, vol:F
    const/high16 v4, -0x4080

    invoke-static {p2, v4, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v0

    .line 625
    .local v0, panning:F
    move v2, v1

    .line 626
    .local v2, volLeft:F
    move v3, v1

    .line 627
    .local v3, volRight:F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_2

    .line 628
    sub-float v4, v5, v0

    mul-float/2addr v2, v4

    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v4

    if-eqz v4, :cond_1

    .line 634
    const-string v4, "TTS.AudioPlaybackHandler"

    const-string v5, "Failed to set volume"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    return-void

    .line 629
    :cond_2
    cmpg-float v4, v0, v6

    if-gez v4, :cond_0

    .line 630
    add-float v4, v5, v0

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method private stop(Landroid/speech/tts/MessageParams;)V
    .locals 8
    .parameter "token"

    .prologue
    const/4 v2, 0x3

    .line 77
    if-nez p1, :cond_1

    .line 105
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 84
    check-cast v0, Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    .line 85
    .local v6, current:Landroid/media/AudioTrack;
    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 97
    :cond_2
    iget-object v7, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v6           #current:Landroid/media/AudioTrack;
    :cond_3
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 99
    check-cast p1, Landroid/speech/tts/AudioMessageParams;

    .end local p1
    invoke-virtual {p1}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/BlockingMediaPlayer;->stop()V

    goto :goto_0

    .line 101
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 102
    check-cast p1, Landroid/speech/tts/SilenceMessageParams;

    .end local p1
    invoke-virtual {p1}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized enqueueAudio(Landroid/speech/tts/AudioMessageParams;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSilence(Landroid/speech/tts/SilenceMessageParams;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDataAvailable(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisStart(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized quit()V
    .locals 7

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 157
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 158
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllItems()V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 135
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    .line 136
    .local v0, current:Landroid/speech/tts/MessageParams;
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 137
    .local v1, lastSynthesis:Landroid/speech/tts/MessageParams;
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 139
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 140
    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    .end local v0           #current:Landroid/speech/tts/MessageParams;
    .end local v1           #lastSynthesis:Landroid/speech/tts/MessageParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removePlaybackItems(Ljava/lang/String;)V
    .locals 3
    .parameter "callingApp"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->removeMessages(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    .line 119
    .local v0, current:Landroid/speech/tts/MessageParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    .line 123
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    .line 125
    .local v1, lastSynthesis:Landroid/speech/tts/MessageParams;
    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {v1}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    monitor-exit p0

    return-void

    .line 116
    .end local v0           #current:Landroid/speech/tts/MessageParams;
    .end local v1           #lastSynthesis:Landroid/speech/tts/MessageParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

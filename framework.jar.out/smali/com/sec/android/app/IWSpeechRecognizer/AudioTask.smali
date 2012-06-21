.class Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0

.field public static final cmdAlarm:I = 0x3

.field public static final cmdCall:I = 0x2

.field public static final cmdCamera:I = 0x7

.field public static final cmdMusic:I = 0x4

.field public static final cmdRadio:I = 0x5

.field public static final cmdVedio:I = 0x6

.field public static final cmdVoiceTalk_all:I = 0x0

.field public static final cmdVoiceTalk_schedule:I = 0x1


# instance fields
.field private AUDIO_RECORD_FOR_BARGE_IN:I

.field public BargeinAct:[S

.field public TAG:Ljava/lang/String;

.field private aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

.field public block_size:I

.field public buf:[B

.field public cmResult:[F

.field public done:Z

.field public f:Ljava/io/File;

.field public handler:Landroid/os/Handler;

.field public isMakePCM:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mFileOutputStream:Ljava/io/FileOutputStream;

.field public mLanguage:I

.field private m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field public modelPath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field public rec:Landroid/media/AudioRecord;

.field public speech:[S

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field public wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V
    .locals 7
    .parameter "listener"
    .parameter "path"
    .parameter "command"
    .parameter "language"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 20
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 21
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 22
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 24
    new-array v0, v4, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    .line 28
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 30
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 31
    const-string v0, "AudioTask"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    .line 35
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 36
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 38
    const-string/jumbo v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    .line 39
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 50
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 51
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 55
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 57
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 58
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 288
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    .line 61
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    return-object v0
.end method

.method public static twoBytesToShort(BB)S
    .locals 2
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 285
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public SendHandlerMessage([Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 304
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 305
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V
    .locals 9
    .parameter
    .parameter "block_size"
    .parameter "listener"
    .parameter "path"
    .parameter "command"
    .parameter "Language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, q:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v8, 0x0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 70
    iput p5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 79
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x2000

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 83
    iput-object p3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 84
    iput-object p4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 85
    iput p6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, -0x1

    aput-short v1, v0, v8

    .line 89
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 91
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    const-string/jumbo v2, "testPCM.pcm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 105
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 106
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    .line 108
    const/4 v7, 0x0

    .line 110
    .local v7, result:I
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0, p6}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 111
    invoke-virtual {p0, p6}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setFilePath(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Load Model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v7

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Model result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Load Wordlist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v7

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Wordlist result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 151
    return-void

    .line 98
    .end local v7           #result:I
    :catch_0
    move-exception v6

    .line 100
    .local v6, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v6           #e1:Ljava/io/FileNotFoundException;
    .restart local v7       #result:I
    :pswitch_0
    const-string/jumbo v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 123
    :pswitch_1
    const-string/jumbo v0, "nameList_voicetalk_schedule.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 126
    :pswitch_2
    const-string/jumbo v0, "nameList_call.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 129
    :pswitch_3
    const-string/jumbo v0, "nameList_alarm.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 132
    :pswitch_4
    const-string/jumbo v0, "nameList_music.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 135
    :pswitch_5
    const-string/jumbo v0, "nameList_radio.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 138
    :pswitch_6
    const-string/jumbo v0, "nameList_video.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 141
    :pswitch_7
    const-string/jumbo v0, "nameList_camera.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method readByteBlock()I
    .locals 13

    .prologue
    const/16 v12, 0x5f

    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v10, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    .line 200
    .local v8, nshorts:I
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nshorts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 207
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0x140

    if-ge v7, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    div-int/lit8 v1, v7, 0x2

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    aget-byte v2, v2, v7

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    add-int/lit8 v4, v7, 0x1

    aget-byte v3, v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->twoBytesToShort(BB)S

    move-result v2

    aput-short v2, v0, v1

    .line 207
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 212
    :cond_1
    if-lez v8, :cond_6

    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v0, :cond_2

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 226
    .local v9, result:I
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_3

    .line 228
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v9

    .line 234
    :cond_3
    const/4 v0, -0x2

    if-ne v9, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 244
    :cond_4
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sasr/input.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 255
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v10

    aput-object v1, v0, v10

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    aget v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    aget v0, v0, v10

    float-to-double v0, v0

    const-wide/high16 v2, -0x4008

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 281
    .end local v9           #result:I
    :cond_6
    return v8

    .line 218
    :catch_0
    move-exception v6

    .line 220
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 271
    .end local v6           #e:Ljava/io/IOException;
    .restart local v9       #result:I
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const-string v1, "TH-Reject"

    aput-object v1, v0, v10

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, -0x1

    aput-short v1, v0, v10

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readByteBlock()I

    move-result v0

    .line 180
    .local v0, nshorts:I
    if-gtz v0, :cond_0

    .line 184
    .end local v0           #nshorts:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.stop start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.stop end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.release start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.release end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 193
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 194
    return-void
.end method

.method public setBlockSize(I)V
    .locals 0
    .parameter "block_size"

    .prologue
    .line 158
    iput p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 159
    return-void
.end method

.method public setFilePath(I)V
    .locals 1
    .parameter "language"

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    :pswitch_0
    return-void

    .line 315
    :pswitch_1
    const-string v0, "/sasr/kor/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 316
    const-string v0, "/sasr/kor/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 319
    :pswitch_2
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 320
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 323
    :pswitch_3
    const-string v0, "/sasr/chi/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 324
    const-string v0, "/sasr/chi/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_4
    const-string v0, "/sasr/spa/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 328
    const-string v0, "/sasr/spa/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 331
    :pswitch_5
    const-string v0, "/sasr/fra/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 332
    const-string v0, "/sasr/fra/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 335
    :pswitch_6
    const-string v0, "/sasr/ger/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 336
    const-string v0, "/sasr/ger/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 339
    :pswitch_7
    const-string v0, "/sasr/ita/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 340
    const-string v0, "/sasr/ita/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 168
    return-void
.end method

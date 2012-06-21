.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final SEEK:I = 0x65

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TEARDOWN:I = 0x6b

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 632
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    .line 636
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 638
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 640
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 642
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mAudioManager:Landroid/media/AudioManager;

    .line 643
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 646
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 679
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 686
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 687
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 688
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    .line 797
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebView;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnStopFullscreen(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 693
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 694
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 695
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public dispatchOnStopFullScreen()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    return-void
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 787
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebView;)V

    .line 788
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 384
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 387
    :sswitch_0
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getVideoView()Landroid/webkit/HTML5VideoView;

    move-result-object v5

    .line 388
    .local v5, videoView:Landroid/webkit/HTML5VideoView;
    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isReady()Z

    move-result v6

    if-nez v6, :cond_1

    .line 390
    const-string v6, "HTML5VideoViewProxy"

    const-string/jumbo v7, "play() : videoView not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_1
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, p0, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 396
    .local v1, result:I
    if-ne v1, v8, :cond_0

    .line 397
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, url:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 399
    .local v0, client:Landroid/webkit/WebChromeClient;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 400
    .local v4, videoLayerID:I
    if-eqz v0, :cond_2

    .line 401
    const-string v6, "HTML5VideoViewProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : PLAY - videoLayerID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v3, v6, p0, v0, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .line 405
    :cond_2
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : PLAY - client == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v1           #result:I
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #videoLayerID:I
    .end local v5           #videoView:Landroid/webkit/HTML5VideoView;
    :sswitch_1
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : SEEK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 412
    .local v2, time:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 413
    iget v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v6, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 417
    .end local v2           #time:Ljava/lang/Integer;
    :sswitch_2
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 418
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : PAUSE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v8, :cond_3

    .line 423
    invoke-static {v8}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    .line 425
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 426
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 431
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_3
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 432
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : ENDED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 436
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_4

    .line 437
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 439
    :cond_4
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : ERROR"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_5
    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 444
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 450
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_6
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 456
    :sswitch_7
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v8}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    .line 457
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : BUFFERING_START"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :sswitch_8
    const/4 v6, 0x0

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    .line 462
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "handleMessage : BUFFERING_END"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    :sswitch_9
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->teardown()V

    goto/16 :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_6
    .end sparse-switch
.end method

.method public isFullScreenMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getVideoView()Landroid/webkit/HTML5VideoView;

    move-result-object v0

    .line 826
    .local v0, videoView:Landroid/webkit/HTML5VideoView;
    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 369
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v0

    return v0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 763
    if-nez p1, :cond_0

    .line 764
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 775
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 773
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 774
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 339
    :pswitch_0
    const-string v0, "HTML5VideoViewProxy"

    const-string/jumbo v1, "onAudioFocusChange() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "HTML5VideoViewProxy"

    const-string/jumbo v1, "onAudioFocusChange() - pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->pause()V

    .line 343
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 326
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 327
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 331
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 378
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 816
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 817
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 821
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 818
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 819
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 310
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 311
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 312
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 365
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 735
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 737
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    .line 783
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    .line 784
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "videoLayerID"

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 719
    :goto_0
    return-void

    .line 712
    :cond_0
    if-lez p2, :cond_1

    .line 713
    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 715
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 716
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 717
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 726
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 727
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 729
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 779
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 780
    return-void
.end method

.method public teardown()V
    .locals 3

    .prologue
    .line 743
    const-string v1, "HTML5VideoViewProxy"

    const-string/jumbo v2, "teardown()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 751
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 752
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 755
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 756
    return-void
.end method

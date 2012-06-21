.class Landroid/webkit/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CallbackProxy$12;,
        Landroid/webkit/CallbackProxy$UploadFile;,
        Landroid/webkit/CallbackProxy$UploadFileMessageData;,
        Landroid/webkit/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final JS_ALERT:I = 0x70

.field private static final JS_CONFIRM:I = 0x71

.field private static final JS_PROMPT:I = 0x72

.field private static final JS_TIMEOUT:I = 0x80

.field private static final JS_UNLOAD:I = 0x73

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFICATION_CANCEL_PROMPT:I = 0x97

.field private static final NOTIFICATION_HIDE_PROMPT:I = 0x98

.field private static final NOTIFICATION_PERMISSIONS_SHOW_PROMPT:I = 0x95

.field private static final NOTIFICATION_SEND_RESPONSE_BACK:I = 0x96

.field private static final NOTIFY:I = 0xc8

.field private static final NOTIFY_SEARCHBOX_LISTENERS:I = 0x8b

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final READER_DATA:I = 0x92

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final RECOG_DATA:I = 0x93

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SEARCHBOX_DISPATCH_COMPLETE_CALLBACK:I = 0x8f

.field private static final SEARCHBOX_IS_SUPPORTED_CALLBACK:I = 0x8e

.field private static final SET_INSTALLABLE_WEBAPP:I = 0x8a

.field private static final SPELLCHECK_FINISH:I = 0x91

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_URL:I = 0x94

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkit/WebBackForwardList;

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkit/DownloadListener;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private mWebFeedLinks:[Landroid/webkit/WebFeedLink;

.field private final mWebView:Landroid/webkit/WebView;

.field private volatile mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "w"

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 188
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    .line 190
    new-instance v0, Landroid/webkit/WebBackForwardList;

    invoke-direct {v0, p0}, Landroid/webkit/WebBackForwardList;-><init>(Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 191
    return-void
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 1003
    move-object v1, p1

    .line 1004
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1006
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10403d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    :goto_0
    return-object v1

    .line 1009
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, aUrl:Ljava/net/URL;
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10403d8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1013
    .end local v0           #aUrl:Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 1837
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1847
    :goto_0
    return-void

    .line 1841
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1842
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method canShowAlertDialog()Z
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 10
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1437
    iget-object v8, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v8, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-object v5

    .line 1441
    :cond_1
    new-instance v3, Landroid/webkit/WebView$WebViewTransport;

    iget-object v8, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v8}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    .line 1442
    .local v3, transport:Landroid/webkit/WebView$WebViewTransport;
    const/16 v8, 0xc8

    invoke-virtual {p0, v8}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1443
    .local v2, msg:Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1444
    monitor-enter p0

    .line 1445
    const/16 v9, 0x6d

    if-eqz p1, :cond_2

    move v8, v6

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    :try_start_0
    invoke-virtual {p0, v9, v8, v6, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1454
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1456
    invoke-virtual {v3}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 1457
    .local v4, w:Landroid/webkit/WebView;
    if-eqz v4, :cond_0

    .line 1458
    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    .line 1461
    .local v0, core:Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->initializeSubwindow()V

    .line 1463
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    goto :goto_0

    .end local v0           #core:Landroid/webkit/WebViewCore;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_2
    move v8, v7

    .line 1445
    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    .line 1449
    :catch_0
    move-exception v1

    .line 1450
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "CallbackProxy"

    const-string v7, "Caught exception while waiting for createWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v6, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1454
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1247
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 3
    .parameter "readerData"

    .prologue
    .line 1120
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1121
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1124
    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 3
    .parameter "recogData"

    .prologue
    .line 1130
    const/16 v1, 0x93

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    return-void
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1869
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1872
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1873
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1874
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 1414
    monitor-enter p0

    .line 1415
    :try_start_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebFeedLinks:[Landroid/webkit/WebFeedLink;

    monitor-exit p0

    return-object v0

    .line 1416
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 75
    .parameter "msg"

    .prologue
    .line 304
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 986
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 306
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 307
    .local v67, startedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->onPageStarted(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v67

    invoke-virtual {v9, v10, v0, v4}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 314
    .end local v67           #startedUrl:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 315
    .local v40, finishedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->onPageFinished(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v40

    invoke-virtual {v4, v9, v0}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v40           #finishedUrl:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 328
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4, v9}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 335
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 343
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .line 344
    .local v60, reasonCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "description"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 345
    .local v36, description:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "failingUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 346
    .local v39, failUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move/from16 v0, v60

    move-object/from16 v1, v36

    move-object/from16 v2, v39

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v36           #description:Ljava/lang/String;
    .end local v39           #failUrl:Ljava/lang/String;
    .end local v60           #reasonCode:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "data"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 354
    .local v58, readerData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v58

    invoke-virtual {v4, v9, v0}, Landroid/webkit/WebViewClient;->onReceivedReaderData(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    .end local v58           #readerData:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "data"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 361
    .local v61, recogData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v61

    invoke-virtual {v4, v9, v0}, Landroid/webkit/WebViewClient;->onReceivedRecognizeData(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v61           #recogData:Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "resend"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v62

    check-cast v62, Landroid/os/Message;

    .line 369
    .local v62, resend:Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "dontResend"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v37

    check-cast v37, Landroid/os/Message;

    .line 371
    .local v37, dontResend:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_2

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v37

    move-object/from16 v1, v62

    invoke-virtual {v4, v9, v0, v1}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 375
    :cond_2
    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 380
    .end local v37           #dontResend:Landroid/os/Message;
    .end local v62           #resend:Landroid/os/Message;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 381
    .local v55, overrideUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v54

    .line 382
    .local v54, override:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/webkit/CallbackProxy$ResultTransport;

    .line 384
    .local v63, result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 385
    :try_start_0
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Landroid/webkit/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 387
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 391
    .end local v54           #override:Z
    .end local v55           #overrideUrl:Ljava/lang/String;
    .end local v63           #result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 392
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/HttpAuthHandler;

    .line 393
    .local v41, handler:Landroid/webkit/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "host"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 394
    .local v42, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 395
    .local v59, realm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v59

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v41           #handler:Landroid/webkit/HttpAuthHandler;
    .end local v42           #host:Ljava/lang/String;
    .end local v59           #realm:Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 402
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 404
    .local v48, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    const-string v4, "handler"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/SslErrorHandler;

    const-string v9, "error"

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/SslError;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4, v9}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 411
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslError;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 418
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 419
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 421
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    const-string v4, "handler"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/ClientCertRequestHandler;

    const-string/jumbo v9, "host_and_port"

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4, v9}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_f
    monitor-enter p0

    .line 432
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v9, v10}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 436
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 437
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 441
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4, v9}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 448
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-eqz v4, :cond_0

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "userAgent"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, userAgent:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "contentDisposition"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, contentDisposition:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "mimetype"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, mimetype:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "contentLength"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 462
    .local v34, contentLength:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface/range {v4 .. v10}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 468
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #userAgent:Ljava/lang/String;
    .end local v7           #contentDisposition:Ljava/lang/String;
    .end local v8           #mimetype:Ljava/lang/String;
    .end local v34           #contentLength:Ljava/lang/Long;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    const/4 v4, 0x1

    move v9, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_7

    const/4 v4, 0x1

    move v10, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9, v10, v4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 472
    monitor-enter p0

    .line 473
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 474
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 476
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->dismissZoomControl()V

    goto/16 :goto_0

    .line 469
    :cond_6
    const/4 v4, 0x0

    move v9, v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    move v10, v4

    goto :goto_4

    .line 474
    :catchall_2
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 481
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 487
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 493
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    .line 494
    .local v31, bundle:Landroid/os/Bundle;
    const-string/jumbo v4, "host"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 495
    .local v64, schemePlusHost:Ljava/lang/String;
    const-string/jumbo v4, "username"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 496
    .local v72, username:Ljava/lang/String;
    const-string/jumbo v4, "password"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 499
    .local v56, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v64

    move-object/from16 v1, v72

    move-object/from16 v2, v56

    invoke-virtual {v9, v0, v1, v2, v4}, Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 501
    monitor-enter p0

    .line 502
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 503
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 508
    .end local v31           #bundle:Landroid/os/Bundle;
    .end local v56           #password:Ljava/lang/String;
    .end local v64           #schemePlusHost:Ljava/lang/String;
    .end local v72           #username:Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 515
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 516
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 518
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 520
    .local v11, databaseIdentifier:Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 521
    .restart local v5       #url:Ljava/lang/String;
    const-string v4, "currentQuota"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 523
    .local v12, currentQuota:J
    const-string/jumbo v4, "totalUsedQuota"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 525
    .local v16, totalUsedQuota:J
    const-string v4, "estimatedSize"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 527
    .local v14, estimatedSize:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 530
    .local v18, quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v10, v5

    invoke-virtual/range {v9 .. v18}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 537
    .end local v5           #url:Ljava/lang/String;
    .end local v11           #databaseIdentifier:Ljava/lang/String;
    .end local v12           #currentQuota:J
    .end local v14           #estimatedSize:J
    .end local v16           #totalUsedQuota:J
    .end local v18           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 538
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 540
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "spaceNeeded"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 542
    .local v20, spaceNeeded:J
    const-string/jumbo v4, "totalUsedQuota"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 544
    .restart local v16       #totalUsedQuota:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 547
    .restart local v18       #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v19, v0

    move-wide/from16 v22, v16

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 553
    .end local v16           #totalUsedQuota:J
    .end local v18           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v20           #spaceNeeded:J
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 554
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 556
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 557
    .local v53, origin:Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/webkit/GeolocationPermissions$Callback;

    .line 560
    .local v33, callback:Landroid/webkit/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 566
    .end local v33           #callback:Landroid/webkit/GeolocationPermissions$Callback;
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53           #origin:Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 573
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "notificationID"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v51

    .line 575
    .local v51, notificationID:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Landroid/webkit/WebChromeClient;->onNotificationManagerCancelPrompt(I)V

    goto/16 :goto_0

    .line 580
    .end local v51           #notificationID:I
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onNotificationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 586
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 590
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 592
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 593
    .restart local v53       #origin:Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/webkit/NotificationPermissions$Callback;

    .line 596
    .local v33, callback:Landroid/webkit/NotificationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebChromeClient;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    .line 602
    .end local v33           #callback:Landroid/webkit/NotificationPermissions$Callback;
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53           #origin:Ljava/lang/String;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 606
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/HashMap;

    .line 608
    .restart local v48       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "iconUrl"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 609
    .local v43, iconUrl:Ljava/lang/String;
    const-string/jumbo v4, "titleStr"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/String;

    .line 610
    .local v71, titleStr:Ljava/lang/String;
    const-string v4, "bodyStr"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 612
    .local v30, bodyStr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "counter"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v57

    .line 613
    .local v57, pointerInt:I
    const-string v4, "callback"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/webkit/NotificationPermissions$Callback;

    .line 618
    .restart local v33       #callback:Landroid/webkit/NotificationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v71

    move-object/from16 v1, v30

    move/from16 v2, v57

    move-object/from16 v3, v33

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkit/WebChromeClient;->onNotificationManagerShowPrompt(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    .line 626
    .end local v30           #bodyStr:Ljava/lang/String;
    .end local v33           #callback:Landroid/webkit/NotificationPermissions$Callback;
    .end local v43           #iconUrl:Ljava/lang/String;
    .end local v48           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v57           #pointerInt:I
    .end local v71           #titleStr:Ljava/lang/String;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 627
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/JsResult;

    .line 628
    .local v27, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 629
    .local v25, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 630
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_8

    .line 633
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->cancel()V

    .line 634
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 637
    :cond_8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$2;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$1;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 657
    :cond_9
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 662
    .end local v5           #url:Ljava/lang/String;
    .end local v25           #message:Ljava/lang/String;
    .end local v27           #res:Landroid/webkit/JsResult;
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 663
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/JsResult;

    .line 664
    .restart local v27       #res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 665
    .restart local v25       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 666
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_a

    .line 669
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->cancel()V

    .line 670
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 673
    :cond_a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$6;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$5;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$4;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$3;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 715
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 720
    .end local v5           #url:Ljava/lang/String;
    .end local v25           #message:Ljava/lang/String;
    .end local v27           #res:Landroid/webkit/JsResult;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/JsPromptResult;

    .line 722
    .local v27, res:Landroid/webkit/JsPromptResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 723
    .restart local v25       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "default"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 724
    .local v26, defaultVal:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 725
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v27}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_c

    .line 728
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 729
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsPromptResult;->setReady()V

    goto/16 :goto_0

    .line 732
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v38

    .line 734
    .local v38, factory:Landroid/view/LayoutInflater;
    const v4, 0x109004c

    const/4 v9, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v74

    .line 736
    .local v74, view:Landroid/view/View;
    const v4, 0x10202a5

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v73

    check-cast v73, Landroid/widget/EditText;

    .line 738
    .local v73, v:Landroid/widget/EditText;
    move-object/from16 v0, v73

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const v4, 0x102000b

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v73

    invoke-direct {v10, v0, v1, v2}, Landroid/webkit/CallbackProxy$9;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$8;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$7;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 772
    .end local v38           #factory:Landroid/view/LayoutInflater;
    .end local v73           #v:Landroid/widget/EditText;
    .end local v74           #view:Landroid/view/View;
    :cond_d
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsPromptResult;->setReady()V

    goto/16 :goto_0

    .line 777
    .end local v5           #url:Ljava/lang/String;
    .end local v25           #message:Ljava/lang/String;
    .end local v26           #defaultVal:Ljava/lang/String;
    .end local v27           #res:Landroid/webkit/JsPromptResult;
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 778
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/JsResult;

    .line 779
    .local v27, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 780
    .restart local v25       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_e

    .line 784
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->cancel()V

    .line 785
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 788
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v9, 0x10403da

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v25, v10, v19

    invoke-virtual {v4, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 790
    .local v47, m:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$11;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$10;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 810
    .end local v47           #m:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 815
    .end local v5           #url:Ljava/lang/String;
    .end local v25           #message:Ljava/lang/String;
    .end local v27           #res:Landroid/webkit/JsResult;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 816
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/JsResult;

    .line 817
    .restart local v27       #res:Landroid/webkit/JsResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 818
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->confirm()V

    .line 822
    :goto_5
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 820
    :cond_10
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_5

    .line 827
    .end local v27           #res:Landroid/webkit/JsResult;
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 831
    :pswitch_26
    monitor-enter p0

    .line 832
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 833
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .line 837
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v19, "old"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string/jumbo v22, "new"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v9, v10, v0}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 844
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 848
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 852
    .restart local v25       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "sourceID"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 853
    .local v66, sourceID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "lineNumber"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 854
    .local v44, lineNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "msgLevel"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v50

    .line 855
    .local v50, msgLevel:I
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v52, v0

    .line 857
    .local v52, numberOfMessageLevels:I
    if-ltz v50, :cond_11

    move/from16 v0, v50

    move/from16 v1, v52

    if-lt v0, v1, :cond_12

    .line 858
    :cond_11
    const/16 v50, 0x0

    .line 861
    :cond_12
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v49, v4, v50

    .line 864
    .local v49, messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v9, Landroid/webkit/ConsoleMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, v66

    move/from16 v2, v44

    move-object/from16 v3, v49

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v9}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 868
    const-string v46, "Web Console"

    .line 869
    .local v46, logTag:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " at "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 871
    .local v45, logMessage:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CallbackProxy$12;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v49 .. v49}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v9

    aget v4, v4, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 873
    :pswitch_2a
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 876
    :pswitch_2b
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    :pswitch_2c
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 882
    :pswitch_2d
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 885
    :pswitch_2e
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 893
    .end local v25           #message:Ljava/lang/String;
    .end local v44           #lineNumber:I
    .end local v45           #logMessage:Ljava/lang/String;
    .end local v46           #logTag:Ljava/lang/String;
    .end local v49           #messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    .end local v50           #msgLevel:I
    .end local v52           #numberOfMessageLevels:I
    .end local v66           #sourceID:Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 894
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/ValueCallback;

    invoke-virtual {v9, v4}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 899
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 900
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    .line 901
    .local v35, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual/range {v35 .. v35}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkit/CallbackProxy$UploadFile;

    move-result-object v9

    invoke-virtual/range {v35 .. v35}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 907
    .end local v35           #data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    :pswitch_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 908
    .local v32, cUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 912
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 913
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    invoke-virtual {v9, v4}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 919
    .end local v32           #cUrl:Ljava/lang/String;
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v4, v10}, Landroid/webkit/WebBackForwardListClient;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 925
    :pswitch_33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "host"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 926
    .restart local v42       #host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 927
    .restart local v59       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "username"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 928
    .restart local v72       #username:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "password"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 929
    .restart local v56       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v42

    move-object/from16 v1, v59

    move-object/from16 v2, v72

    move-object/from16 v3, v56

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 934
    .end local v42           #host:Ljava/lang/String;
    .end local v56           #password:Ljava/lang/String;
    .end local v59           #realm:Ljava/lang/String;
    .end local v72           #username:Ljava/lang/String;
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->setInstallableWebApp()V

    goto/16 :goto_0

    .line 939
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v65

    check-cast v65, Landroid/webkit/SearchBoxImpl;

    .line 942
    .local v65, searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Ljava/util/List;

    .line 943
    .local v69, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "query"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v65

    move-object/from16 v1, v69

    invoke-virtual {v0, v4, v1}, Landroid/webkit/SearchBoxImpl;->handleSuggestions(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 947
    .end local v65           #searchBox:Landroid/webkit/SearchBoxImpl;
    .end local v69           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 949
    .restart local v59       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "account"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 950
    .local v28, account:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "args"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 951
    .local v29, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v59

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    .end local v28           #account:Ljava/lang/String;
    .end local v29           #args:Ljava/lang/String;
    .end local v59           #realm:Ljava/lang/String;
    :pswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v9, v10}, Landroid/webkit/WebViewClient;->onSpellCheckFinish(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    .line 964
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v65

    check-cast v65, Landroid/webkit/SearchBoxImpl;

    .line 965
    .restart local v65       #searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Ljava/lang/Boolean;

    .line 966
    .local v70, supported:Ljava/lang/Boolean;
    invoke-virtual/range {v70 .. v70}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/webkit/SearchBoxImpl;->handleIsSupportedCallback(Z)V

    goto/16 :goto_0

    .line 970
    .end local v65           #searchBox:Landroid/webkit/SearchBoxImpl;
    .end local v70           #supported:Ljava/lang/Boolean;
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v65

    check-cast v65, Landroid/webkit/SearchBoxImpl;

    .line 971
    .restart local v65       #searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Ljava/lang/Boolean;

    .line 972
    .local v68, success:Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "function"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, v65

    invoke-virtual {v0, v4, v9, v10}, Landroid/webkit/SearchBoxImpl;->handleDispatchCompleteCallback(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 978
    .end local v65           #searchBox:Landroid/webkit/SearchBoxImpl;
    .end local v68           #success:Ljava/lang/Boolean;
    :pswitch_3a
    const-string v4, "CallbackProxy"

    const-string v9, "UPDATE_URL"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 980
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 981
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClient;->onUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_17
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_14
        :pswitch_27
        :pswitch_25
        :pswitch_28
        :pswitch_18
        :pswitch_19
        :pswitch_24
        :pswitch_29
        :pswitch_1a
        :pswitch_1b
        :pswitch_4
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_e
        :pswitch_38
        :pswitch_39
        :pswitch_d
        :pswitch_37
        :pswitch_7
        :pswitch_8
        :pswitch_3a
        :pswitch_1e
        :pswitch_1f
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
    .end packed-switch

    .line 871
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1485
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1321
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-nez v2, :cond_0

    .line 1323
    const/4 v2, 0x0

    .line 1334
    :goto_0
    return v2

    .line 1326
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1327
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1328
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1332
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1334
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1643
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1644
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1658
    :goto_0
    return-void

    .line 1648
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1649
    .local v0, exceededQuota:Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1650
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-string v2, "currentQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    const-string v2, "estimatedSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1657
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 1141
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1142
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    :goto_0
    return-void

    .line 1146
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1147
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1148
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1149
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1150
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1817
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1822
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1695
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1699
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1701
    .local v1, showMessage:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1702
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1705
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 3
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1941
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1944
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1945
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIsSupportedCallback(Z)V
    .locals 2
    .parameter "isSupported"

    .prologue
    .line 1974
    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1975
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1976
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1977
    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    .line 1538
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1541
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1542
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x70

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1543
    .local v0, alert:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    monitor-enter p0

    .line 1546
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1553
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1549
    :catch_0
    move-exception v1

    .line 1550
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsAlert"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 1604
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1620
    :goto_0
    return v3

    .line 1607
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1608
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x73

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1609
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    monitor-enter p0

    .line 1612
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1619
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1620
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v1

    .line 1616
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1619
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 1559
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1575
    :goto_0
    return v3

    .line 1562
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1563
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x71

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1564
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    monitor-enter p0

    .line 1567
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1574
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1575
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1570
    :catch_0
    move-exception v1

    .line 1571
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsConfirm"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1574
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 1581
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1582
    const/4 v3, 0x0

    .line 1598
    :goto_0
    return-object v3

    .line 1584
    :cond_0
    new-instance v2, Landroid/webkit/JsPromptResult;

    invoke-direct {v2, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/CallbackProxy;)V

    .line 1585
    .local v2, result:Landroid/webkit/JsPromptResult;
    const/16 v3, 0x72

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1586
    .local v1, prompt:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    monitor-enter p0

    .line 1590
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1597
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1598
    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsPrompt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1597
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsTimeout()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1851
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1865
    :goto_0
    return v3

    .line 1854
    :cond_0
    new-instance v1, Landroid/webkit/JsResult;

    invoke-direct {v1, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1855
    .local v1, result:Landroid/webkit/JsResult;
    const/16 v3, 0x80

    invoke-virtual {p0, v3, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1856
    .local v2, timeout:Landroid/os/Message;
    monitor-enter p0

    .line 1857
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1864
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1865
    invoke-virtual {v1}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1864
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1933
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1938
    :goto_0
    return-void

    .line 1936
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1937
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 3
    .parameter "notificationID"

    .prologue
    .line 1786
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1789
    :cond_0
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1790
    .local v0, cancelMessage:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "notificationID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1791
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/NotificationPermissions$Callback;)V
    .locals 4
    .parameter "iconUrl"
    .parameter "titleStr"
    .parameter "bodyStr"
    .parameter "counter"
    .parameter "callback"

    .prologue
    .line 1749
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1774
    :goto_0
    return-void

    .line 1752
    :cond_0
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1754
    .local v1, showMessage:Landroid/os/Message;
    const-string v2, "CallbackProxy"

    const-string v3, "Inside CallbackProxy before send message 1 "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1756
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "iconUrl"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    const-string/jumbo v2, "titleStr"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    const-string v2, "bodyStr"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    const-string v2, "callback"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1772
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "counter"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1773
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1804
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1809
    :goto_0
    return-void

    .line 1807
    :cond_0
    const/16 v1, 0x98

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1808
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/NotificationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1721
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1725
    :cond_0
    const/16 v2, 0x95

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1727
    .local v1, showMessage:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1728
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1731
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1090
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1091
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1074
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1075
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1076
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1213
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1216
    :cond_0
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1217
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 1387
    monitor-enter p0

    .line 1390
    :try_start_0
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    .line 1391
    monitor-exit p0

    .line 1402
    :goto_0
    return-void

    .line 1393
    :cond_0
    iput p1, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 1394
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1395
    monitor-exit p0

    goto :goto_0

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1397
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1398
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 1401
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1672
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1673
    const-wide/16 v2, 0x0

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1684
    :goto_0
    return-void

    .line 1677
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1678
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1679
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "spaceNeeded"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1683
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 1238
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    .line 1224
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1225
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 1234
    :goto_0
    return-void

    .line 1228
    :cond_0
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1229
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1230
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string/jumbo v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1233
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1104
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1108
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1109
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1110
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1373
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1374
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1379
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "hostName"
    .parameter "realmName"

    .prologue
    .line 1187
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1188
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 1195
    :goto_0
    return-void

    .line 1191
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1491
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1492
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1497
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1501
    :goto_0
    return-void

    .line 1500
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1293
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1296
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1297
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1298
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1200
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1201
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1210
    :goto_0
    return-void

    .line 1204
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1205
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1206
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1532
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v2, 0x0

    .line 1506
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1514
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_2

    .line 1515
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebHistoryItem;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1519
    :cond_2
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 1522
    const/16 v3, 0x84

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1477
    :goto_0
    return-void

    .line 1476
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 5
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    .line 1350
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1352
    const/16 v3, 0x6f

    invoke-virtual {p0, v3, p4}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1353
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1354
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "host"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    monitor-enter p0

    .line 1358
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1366
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1368
    const/4 v3, 0x0

    return v3

    .line 1361
    :catch_0
    move-exception v1

    .line 1362
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for onSavePassword"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1366
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 1280
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1283
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1284
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1285
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1286
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1287
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onSearchboxDispatchCompleteCallback(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "function"
    .parameter "id"
    .parameter "success"

    .prologue
    .line 1980
    const/16 v1, 0x8f

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1981
    .local v0, msg:Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1982
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "function"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1985
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    return-void
.end method

.method onSearchboxSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1966
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x8b

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1967
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1968
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1971
    return-void
.end method

.method onSpellCheckFinish(I)V
    .locals 2
    .parameter "misspelledWordCount"

    .prologue
    .line 1305
    const/16 v0, 0x91

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1306
    return-void
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 1098
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1274
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onUpdateUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1989
    const/16 v1, 0x94

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1990
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1992
    return-void
.end method

.method openFileChooser(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "acceptType"

    .prologue
    const/4 v4, 0x0

    .line 1912
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v5, :cond_0

    .line 1929
    :goto_0
    return-object v4

    .line 1915
    :cond_0
    const/16 v5, 0x86

    invoke-virtual {p0, v5}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1916
    .local v2, myMessage:Landroid/os/Message;
    new-instance v3, Landroid/webkit/CallbackProxy$UploadFile;

    invoke-direct {v3, p0, v4}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1917
    .local v3, uploadFile:Landroid/webkit/CallbackProxy$UploadFile;
    new-instance v0, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v3, p1}, Landroid/webkit/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkit/CallbackProxy$UploadFile;Ljava/lang/String;)V

    .line 1918
    .local v0, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1919
    monitor-enter p0

    .line 1920
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1928
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1929
    invoke-virtual {v3}, Landroid/webkit/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 1923
    :catch_0
    move-exception v1

    .line 1924
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "CallbackProxy"

    const-string v5, "Caught exception while waiting for openFileChooser"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const-string v4, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1928
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 230
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 231
    return-void
.end method

.method setInstallableWebApp()V
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1953
    :goto_0
    return-void

    .line 1952
    :cond_0
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 242
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 243
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 214
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 215
    return-void
.end method

.method public setWebFeedLinks([Landroid/webkit/WebFeedLink;)V
    .locals 1
    .parameter "links"

    .prologue
    .line 1428
    monitor-enter p0

    .line 1429
    :try_start_0
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebFeedLinks:[Landroid/webkit/WebFeedLink;

    .line 1430
    monitor-exit p0

    .line 1431
    return-void

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 198
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 199
    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 1252
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-object v0

    .line 1256
    :cond_1
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 1262
    .local v0, r:Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    .line 1263
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 1158
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1180
    :goto_0
    return v3

    .line 1164
    :cond_0
    new-instance v2, Landroid/webkit/CallbackProxy$ResultTransport;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 1165
    .local v2, res:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1166
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1168
    monitor-enter p0

    .line 1170
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1179
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1180
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1179
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 999
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1000
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 292
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .parameter "overrideUrl"

    .prologue
    const/4 v1, 0x0

    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    :cond_2
    const/4 v1, 0x0

    .line 265
    .local v1, override:Z
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 269
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :try_start_0
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const/4 v1, 0x1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    goto :goto_0
.end method

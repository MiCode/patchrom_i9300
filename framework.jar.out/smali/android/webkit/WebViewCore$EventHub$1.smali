.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 91
    .parameter "msg"

    .prologue
    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$900(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$1000(Landroid/webkit/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6d

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 1603
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1625
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRevealSelection()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1605
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1609
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDrawLayers()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1615
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v4

    .line 1616
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$902(Landroid/webkit/WebViewCore;I)I

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$802(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1621
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1629
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1630
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v66, v0

    .line 1631
    .local v66, nodePointer:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move/from16 v0, v66

    #calls: Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;
    invoke-static {v2, v4, v0}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v60

    .line 1633
    .local v60, label:Ljava/lang/String;
    if-eqz v60, :cond_0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1634
    const-string v2, "\n"

    const-string v4, ""

    move-object/from16 v0, v60

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7d

    const/4 v6, 0x0

    move/from16 v0, v66

    move-object/from16 v1, v60

    invoke-static {v2, v4, v0, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1643
    .end local v60           #label:Ljava/lang/String;
    .end local v66           #nodePointer:I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1648
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 1649
    const/16 v90, 0x0

    .line 1653
    .local v90, xPercent:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v90

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V
    invoke-static {v2, v0, v4}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_0

    .line 1651
    .end local v90           #xPercent:F
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v90

    .restart local v90       #xPercent:F
    goto :goto_1

    .line 1657
    .end local v90           #xPercent:F
    :sswitch_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1658
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1659
    .local v69, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v69

    iget-object v4, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v69

    iget-object v6, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1664
    .end local v69           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1665
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1666
    .local v69, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v69

    iget-object v4, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v69

    iget-object v6, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v6}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 1670
    .end local v69           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1672
    .local v61, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v61

    iget-object v3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1673
    .local v3, baseUrl:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1674
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v54

    .line 1675
    .local v54, i:I
    if-lez v54, :cond_4

    .line 1683
    const/4 v2, 0x0

    move/from16 v0, v54

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v82

    .line 1684
    .local v82, scheme:Ljava/lang/String;
    const-string/jumbo v2, "http"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ftp"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "about"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "javascript"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v82

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1692
    .end local v54           #i:I
    .end local v82           #scheme:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v61

    iget-object v5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v61

    iget-object v7, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1705
    .end local v3           #baseUrl:Ljava/lang/String;
    .end local v61           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1710
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    .line 1714
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1718
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1722
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1726
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    #calls: Landroid/webkit/WebViewCore;->nativeClick(IIZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    .line 1730
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeClick(IIZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    .line 1734
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$ViewSizeData;

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 1740
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/graphics/Point;

    .line 1741
    .local v71, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v71

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v71

    iget v10, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v6, v2, v9, v10}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;IZII)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1746
    .end local v71           #pt:Landroid/graphics/Point;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v89, v0

    check-cast v89, Ljava/lang/String;

    .line 1747
    .local v89, word:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v89

    #calls: Landroid/webkit/WebViewCore;->nativeUnmarkWord(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1750
    .end local v89           #word:Ljava/lang/String;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/graphics/Rect;

    .line 1751
    .local v72, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v72

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v72

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v72 .. v72}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v72 .. v72}, Landroid/graphics/Rect;->height()I

    move-result v10

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1758
    .end local v72           #r:Landroid/graphics/Rect;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_7

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1763
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRecalcWidthAndForceLayout()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1771
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1776
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$3100(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$3002(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$3100(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1779
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1780
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1781
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x6f

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1784
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1789
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$3100(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$3000(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1790
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1791
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1792
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x70

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1798
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePause()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1802
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeResume()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1806
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;Z)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1812
    :sswitch_1b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1818
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1819
    .local v29, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v70

    .line 1820
    .local v70, params:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v70, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1821
    .local v14, count:I
    const/4 v2, 0x1

    aget-object v2, v70, v2

    check-cast v2, Landroid/webkit/WebView$CursorDirection;

    sget-object v4, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    if-ne v2, v4, :cond_9

    const/16 v56, 0x1

    .line 1822
    .local v56, isBefore:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move/from16 v0, v56

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;
    invoke-static {v2, v14, v0}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v85

    .line 1824
    .local v85, str:Ljava/lang/String;
    monitor-enter v29

    .line 1826
    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1827
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1829
    monitor-exit v29

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1821
    .end local v56           #isBefore:Z
    .end local v85           #str:Ljava/lang/String;
    :cond_9
    const/16 v56, 0x0

    goto :goto_3

    .line 1836
    .end local v14           #count:I
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v70           #params:[Ljava/lang/Object;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1841
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1845
    .local v24, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v80

    .line 1847
    .local v80, result:Landroid/graphics/Point;
    monitor-enter v24

    .line 1849
    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1850
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1852
    monitor-exit v24

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1857
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v80           #result:Landroid/graphics/Point;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1858
    .local v25, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v70

    .line 1859
    .restart local v70       #params:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v76, v70, v2

    check-cast v76, Landroid/graphics/Rect;

    .line 1860
    .local v76, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v76

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v76

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v76

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v76 .. v76}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    move-object/from16 v0, v76

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v76 .. v76}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffsetImage(IIII)V
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;IIII)V

    .line 1862
    monitor-enter v25

    .line 1865
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1867
    monitor-exit v25

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1873
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v70           #params:[Ljava/lang/Object;
    .end local v76           #rect:Landroid/graphics/Rect;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1874
    .restart local v29       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v85

    .line 1876
    .restart local v85       #str:Ljava/lang/String;
    monitor-enter v29

    .line 1878
    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1879
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1881
    monitor-exit v29

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 1887
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v85           #str:Ljava/lang/String;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1888
    .restart local v29       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v85

    .line 1890
    .restart local v85       #str:Ljava/lang/String;
    monitor-enter v29

    .line 1892
    :try_start_5
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1893
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1895
    monitor-exit v29

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 1900
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v85           #str:Ljava/lang/String;
    :sswitch_22
    const/16 v57, 0x0

    .line 1901
    .local v57, isBodyEmpty:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 1902
    .local v27, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;)Z

    move-result v57

    .line 1904
    monitor-enter v27

    .line 1906
    :try_start_6
    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1907
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 1909
    monitor-exit v27

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 1914
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v57           #isBodyEmpty:Z
    :sswitch_23
    const/16 v84, -0x1

    .line 1915
    .local v84, selectedType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 1916
    .local v28, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentSelectionType()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;)I

    move-result v84

    .line 1918
    monitor-enter v28

    .line 1920
    :try_start_7
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1921
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 1923
    monitor-exit v28

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 1930
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84           #selectedType:I
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1931
    .restart local v25       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v70

    .line 1932
    .restart local v70       #params:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v51, v70, v2

    check-cast v51, Ljava/lang/Boolean;

    .line 1933
    .local v51, giveContentRect:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v42

    .line 1935
    .local v42, cursurRect:Landroid/graphics/Rect;
    monitor-enter v25

    .line 1937
    :try_start_8
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1938
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1940
    monitor-exit v25

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 1947
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v42           #cursurRect:Landroid/graphics/Rect;
    .end local v51           #giveContentRect:Ljava/lang/Boolean;
    .end local v70           #params:[Ljava/lang/Object;
    :sswitch_25
    const/16 v58, 0x0

    .line 1948
    .local v58, isCommandSuces:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebView$CmdVal;

    .line 1949
    .local v39, cmdVal:Landroid/webkit/WebView$CmdVal;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v6, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v58

    .line 1950
    monitor-enter v39

    .line 1952
    :try_start_9
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->notify()V

    .line 1954
    monitor-exit v39

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v39
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 1959
    .end local v39           #cmdVal:Landroid/webkit/WebView$CmdVal;
    .end local v58           #isCommandSuces:Z
    :sswitch_26
    const/16 v34, 0x0

    .line 1960
    .local v34, canUndo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 1961
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanUndo()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;)Z

    move-result v34

    .line 1962
    monitor-enter v27

    .line 1964
    :try_start_a
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1965
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 1967
    monitor-exit v27

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 1973
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v34           #canUndo:Z
    :sswitch_27
    const/16 v33, 0x0

    .line 1974
    .local v33, canRedo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 1975
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanRedo()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;)Z

    move-result v33

    .line 1976
    monitor-enter v27

    .line 1978
    :try_start_b
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1979
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 1981
    monitor-exit v27

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 1986
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v33           #canRedo:Z
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1990
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v88, v0

    check-cast v88, Ljava/lang/String;

    .line 1991
    .local v88, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v88

    #calls: Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1998
    .end local v88           #url:Ljava/lang/String;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2002
    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 2003
    .local v26, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v85

    .line 2005
    .local v85, str:Landroid/webkit/WebHTMLMarkupData;
    monitor-enter v26

    .line 2007
    :try_start_c
    move-object/from16 v0, v26

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2008
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2010
    monitor-exit v26

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 2015
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    .end local v85           #str:Landroid/webkit/WebHTMLMarkupData;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    const/4 v2, 0x1

    :goto_4
    #calls: Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 2019
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Point;

    .line 2020
    .local v74, recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v74

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v74

    iget v6, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;II)V

    .line 2021
    monitor-enter v74

    .line 2023
    :try_start_d
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->notify()V

    .line 2025
    monitor-exit v74

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v74
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 2032
    .end local v74           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2037
    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Point;

    .line 2038
    .restart local v74       #recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v74

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v74

    iget v6, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;II)V

    .line 2039
    monitor-enter v74

    .line 2041
    :try_start_e
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->notify()V

    .line 2043
    monitor-exit v74

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v74
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 2047
    .end local v74           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2051
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2052
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v80, 0x0

    .line 2053
    .local v80, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionNone()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;)Z

    move-result v80

    .line 2055
    monitor-enter v27

    .line 2056
    :try_start_f
    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2057
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2058
    monitor-exit v27

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v27
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 2066
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v80           #result:Z
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2070
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2075
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2079
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2083
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2084
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v80, -0x1

    .line 2085
    .local v80, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;)I

    move-result v80

    .line 2087
    monitor-enter v28

    .line 2089
    :try_start_10
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2090
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2092
    monitor-exit v28

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    .line 2097
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v80           #result:I
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$EditableParams;

    .line 2098
    .local v46, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v6, v0, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    move-object/from16 v0, v46

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    #calls: Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v80

    .line 2099
    .local v80, result:Landroid/graphics/Point;
    monitor-enter v46

    .line 2100
    :try_start_11
    move-object/from16 v0, v80

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    .line 2101
    move-object/from16 v0, v80

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    .line 2102
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->notify()V

    .line 2103
    monitor-exit v46

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v46
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    .line 2108
    .end local v46           #editableParams:Landroid/webkit/WebViewCore$EditableParams;
    .end local v80           #result:Landroid/graphics/Point;
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectedClosestWord()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2113
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2114
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v80, 0x0

    .line 2115
    .local v80, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetStateInRichlyEditableText()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;)I

    move-result v80

    .line 2117
    monitor-enter v28

    .line 2118
    :try_start_12
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2119
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2120
    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    .line 2125
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v80           #result:I
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 2126
    .local v40, command:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v40

    #calls: Landroid/webkit/WebViewCore;->nativeinsertImageContent(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2131
    .end local v40           #command:Ljava/lang/String;
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeresizeImage(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2137
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2138
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v49, 0x0

    .line 2139
    .local v49, fontSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativegetCurrentFontSize()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)I

    move-result v49

    .line 2140
    monitor-enter v28

    .line 2141
    :try_start_13
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2142
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2143
    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    .line 2148
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v49           #fontSize:I
    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2149
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v50, 0x0

    .line 2150
    .local v50, fontValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativegetCurrentFontValue()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;)I

    move-result v50

    .line 2151
    monitor-enter v28

    .line 2152
    :try_start_14
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2153
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2154
    monitor-exit v28

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v28
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    .line 2159
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v50           #fontValue:I
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitActionBarDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2164
    :sswitch_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2165
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v80, 0x0

    .line 2166
    .local v80, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeCheckEndOfWordAtPosition(II)Z
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;II)Z

    move-result v80

    .line 2168
    monitor-enter v27

    .line 2169
    :try_start_15
    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2170
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2171
    monitor-exit v27

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v27
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v2

    .line 2175
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v80           #result:Z
    :sswitch_40
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_b

    .line 2176
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2179
    :cond_b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 2184
    :sswitch_41
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_d

    .line 2185
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2188
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Ljava/util/Map;

    .line 2189
    .local v62, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v62

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v62

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2194
    .end local v62           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_6
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 2198
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_0

    .line 2203
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 2204
    .local v78, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v78

    iget-object v7, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v78

    iget v9, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v78

    iget v10, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V
    invoke-static/range {v4 .. v10}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 2210
    .end local v78           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_45
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$JSKeyData;

    .line 2211
    .local v59, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v47, v0

    .line 2212
    .local v47, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 2213
    .local v7, keyCode:I
    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    .line 2214
    .local v8, keyValue:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 2215
    .local v5, generation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v59

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isDown()Z

    move-result v9

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v11

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v12

    #calls: Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v12}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    .line 2226
    .end local v5           #generation:I
    .end local v7           #keyCode:I
    .end local v8           #keyValue:I
    .end local v47           #evt:Landroid/view/KeyEvent;
    .end local v59           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$CursorData;

    .line 2227
    .local v31, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v31

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2232
    .end local v31           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_47
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2235
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/SslCertLookupTable;->clear()V

    .line 2236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2238
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_0

    .line 2243
    :sswitch_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Landroid/webkit/WebViewCore$TouchUpData;

    .line 2244
    .local v87, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, v87

    iget v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    if-eqz v2, :cond_10

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v87

    iget v4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    move-object/from16 v0, v87

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    .line 2248
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v87

    iget v10, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move-object/from16 v0, v87

    iget v11, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move-object/from16 v0, v87

    iget v12, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move-object/from16 v0, v87

    iget v13, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move-object/from16 v0, v87

    iget v14, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move-object/from16 v0, v87

    iget-boolean v15, v0, Landroid/webkit/WebViewCore$TouchUpData;->mUseLightTouch:Z

    #calls: Landroid/webkit/WebViewCore;->nativeTouchUp(IIIIIZ)V
    invoke-static/range {v9 .. v15}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;IIIIIZ)V

    goto/16 :goto_0

    .line 2257
    .end local v87           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v86, v0

    check-cast v86, Landroid/webkit/WebViewCore$TouchEventData;

    .line 2258
    .local v86, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    array-length v14, v2

    .line 2259
    .restart local v14       #count:I
    new-array v12, v14, [I

    .line 2260
    .local v12, xArray:[I
    new-array v13, v14, [I

    .line 2261
    .local v13, yArray:[I
    const/16 v30, 0x0

    .local v30, c:I
    :goto_7
    move/from16 v0, v30

    if-ge v0, v14, :cond_11

    .line 2262
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v12, v30

    .line 2263
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v13, v30

    .line 2261
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 2265
    :cond_11
    move-object/from16 v0, v86

    iget v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    if-eqz v2, :cond_12

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v86

    iget v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v86

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    .line 2269
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v86

    iget v10, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v86

    iget-object v11, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v86

    iget v15, v0, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    move-object/from16 v0, v86

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move/from16 v16, v0

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z
    invoke-static/range {v9 .. v16}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;I[I[I[IIII)Z

    move-result v2

    move-object/from16 v0, v86

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v4, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v86

    iget v9, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v86

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v86

    invoke-static {v4, v6, v9, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2278
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 2279
    const-string/jumbo v2, "webcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TOUCH_EVENT handled in webcore  ted.mSequence = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-wide v9, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeResult  = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeLayer = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeLayerRect = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2271
    :cond_13
    const/4 v2, 0x0

    goto :goto_8

    .line 2290
    .end local v12           #xArray:[I
    .end local v13           #yArray:[I
    .end local v14           #count:I
    .end local v30           #c:I
    .end local v86           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_14

    const/4 v2, 0x1

    :goto_9
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$8200(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 2294
    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 2295
    .local v59, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v59

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v59

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2300
    .end local v59           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 2301
    .restart local v59       #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v59

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2306
    .end local v59           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2311
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2315
    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewCore$CursorData;

    .line 2316
    .local v48, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v48

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v48

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$8300(Landroid/webkit/WebViewCore;II)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2323
    .end local v48           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$CursorData;

    .line 2324
    .local v41, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v41

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 2329
    .end local v41           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 2330
    .local v32, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v32

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v32

    iget v10, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;IIII)V

    .line 2333
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2339
    .end local v32           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/os/Message;

    .line 2340
    .local v53, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "url"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "title"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "src"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2351
    .end local v53           #hrefMsg:Landroid/os/Message;
    :sswitch_53
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->postInvalidate()V

    .line 2356
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2360
    :sswitch_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Message;

    .line 2361
    .local v55, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v55

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2363
    invoke-virtual/range {v55 .. v55}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2361
    :cond_16
    const/4 v2, 0x0

    goto :goto_a

    .line 2367
    .end local v55           #imageResult:Landroid/os/Message;
    :sswitch_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 2369
    .local v45, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v4, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v45

    iget v6, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$9200(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 2374
    .end local v45           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2378
    :sswitch_57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$9400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v64

    .line 2380
    .local v64, modifiedSelectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    move-object/from16 v0, v64

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2385
    .end local v64           #modifiedSelectionString:Ljava/lang/String;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/util/SparseBooleanArray;

    .line 2387
    .local v35, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 2388
    .local v37, choicesSize:I
    move/from16 v0, v37

    new-array v0, v0, [Z

    move-object/from16 v36, v0

    .line 2389
    .local v36, choicesArray:[Z
    const/16 v30, 0x0

    .restart local v30       #c:I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    .line 2390
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v36, v30

    .line 2389
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 2392
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    move/from16 v1, v37

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V
    invoke-static {v2, v0, v1}, Landroid/webkit/WebViewCore;->access$9500(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_0

    .line 2397
    .end local v30           #c:I
    .end local v35           #choices:Landroid/util/SparseBooleanArray;
    .end local v36           #choicesArray:[Z
    .end local v37           #choicesSize:I
    :sswitch_59
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$9600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2401
    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$9700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2405
    :sswitch_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_18

    const/4 v2, 0x1

    :goto_c
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    .line 2409
    :sswitch_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_19

    const/4 v2, 0x1

    :goto_d
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9900(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_d

    .line 2413
    :sswitch_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpNavTree()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2417
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2421
    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$10200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2425
    :sswitch_60
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2429
    :sswitch_61
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v81, v0

    check-cast v81, Landroid/webkit/WebView$SaveWebArchiveMessage;

    .line 2431
    .local v81, saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v81

    iget-object v4, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v81

    iget-boolean v6, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mAutoname:Z

    #calls: Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10300(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v81

    iput-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x84

    move-object/from16 v0, v81

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2438
    .end local v81           #saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    :sswitch_62
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 2440
    .local v44, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v44

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$10400(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2446
    .end local v44           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_63
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    .line 2448
    .local v68, notifydata:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v68

    iget-object v4, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v68

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10500(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2453
    .end local v68           #notifydata:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    :sswitch_64
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Landroid/webkit/WebViewCore$InvokeEventparams;

    .line 2455
    .local v79, responsedata:Landroid/webkit/WebViewCore$InvokeEventparams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v79

    iget-object v4, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    move-object/from16 v0, v79

    iget v6, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mPointer:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10600(Landroid/webkit/WebViewCore;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2459
    .end local v79           #responsedata:Landroid/webkit/WebViewCore$InvokeEventparams;
    :sswitch_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/WebViewCore$InvokeNotifyID;

    .line 2461
    .local v67, notifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v67

    iget v4, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mnotificationID:I

    move-object/from16 v0, v67

    iget v6, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mcounter:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationIDback(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2465
    .end local v67           #notifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    :sswitch_66
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSplitContent(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10800(Landroid/webkit/WebViewCore;I)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10902(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_0

    .line 2475
    :sswitch_67
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeClearContent()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2479
    :sswitch_68
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2483
    :sswitch_69
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$11100(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2487
    :sswitch_6a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Landroid/webkit/WebViewCore$MotionUpData;

    .line 2488
    .local v65, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v65

    iget v4, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move-object/from16 v0, v65

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move-object/from16 v0, v65

    iget-object v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$11200(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2491
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;)V

    .line 2493
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x77

    move-object/from16 v0, v65

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move-object/from16 v0, v65

    iget v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v63

    .line 2496
    .local v63, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, v63

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2502
    .end local v63           #message:Landroid/os/Message;
    .end local v65           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2506
    :sswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2510
    :sswitch_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$900(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2514
    :sswitch_6e
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_1b

    .line 2515
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2518
    :cond_1b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 2523
    :sswitch_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$TouchHighlightData;

    .line 2524
    .local v43, d:Landroid/webkit/WebViewCore$TouchHighlightData;
    move-object/from16 v0, v43

    iget v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    if-eqz v2, :cond_1c

    .line 2525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, v43

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    .line 2528
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    move-object/from16 v0, v43

    iget v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    move-object/from16 v0, v43

    iget v9, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    #calls: Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$11600(Landroid/webkit/WebViewCore;III)Ljava/util/ArrayList;

    move-result-object v77

    .line 2531
    .local v77, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x83

    move-object/from16 v0, v77

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v63

    .line 2533
    .restart local v63       #message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, v63

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2538
    .end local v43           #d:Landroid/webkit/WebViewCore$TouchHighlightData;
    .end local v63           #message:Landroid/os/Message;
    .end local v77           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :sswitch_70
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2542
    :sswitch_71
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11800(Landroid/webkit/WebViewCore;I)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x86

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2550
    :sswitch_72
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/webkit/WebViewCore$CopyParams;

    .line 2551
    .local v70, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move/from16 v16, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move/from16 v17, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move/from16 v18, v0

    move-object/from16 v0, v70

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v19, v0

    move-object/from16 v0, v70

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v20, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v22, v0

    #calls: Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V
    invoke-static/range {v15 .. v22}, Landroid/webkit/WebViewCore;->access$11900(Landroid/webkit/WebViewCore;IIIZZFI)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v70

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2559
    .end local v70           #params:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_73
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Landroid/webkit/WebViewCore$CopyParams;

    .line 2560
    .local v83, selAllValue:Landroid/webkit/WebViewCore$CopyParams;
    const/16 v52, 0x0

    .line 2561
    .local v52, haveselection:I
    move-object/from16 v0, v83

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    if-nez v2, :cond_1d

    .line 2562
    const/16 v52, 0x1

    .line 2564
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v83

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v83

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    const/4 v9, 0x0

    move/from16 v0, v52

    #calls: Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V
    invoke-static {v2, v4, v6, v0, v9}, Landroid/webkit/WebViewCore;->access$12000(Landroid/webkit/WebViewCore;IIII)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2569
    .end local v52           #haveselection:I
    .end local v83           #selAllValue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_74
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$CopyParams;

    .line 2570
    .local v23, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move-object/from16 v0, v23

    iget v10, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move-object/from16 v0, v23

    iget-boolean v11, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    #calls: Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z
    invoke-static {v4, v6, v9, v10, v11}, Landroid/webkit/WebViewCore;->access$12100(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2576
    .end local v23           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_75
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$CopyParams;

    .line 2577
    .local v38, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v38

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$12200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2582
    .end local v38           #clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_76
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2592
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->applyreadability(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$12300(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 2593
    .local v73, readerData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v73

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2597
    .end local v73           #readerData:Ljava/lang/String;
    :sswitch_78
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->loadinitialJs(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$12400(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 2598
    .local v75, recogData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2607
    .end local v75           #recogData:Ljava/lang/String;
    :sswitch_79
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendColorPickerChoice(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$12500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1603
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_4
        0x62 -> :sswitch_5
        0x63 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_10
        0x6a -> :sswitch_14
        0x6b -> :sswitch_11
        0x6c -> :sswitch_15
        0x6d -> :sswitch_16
        0x6e -> :sswitch_17
        0x6f -> :sswitch_42
        0x70 -> :sswitch_43
        0x71 -> :sswitch_56
        0x72 -> :sswitch_44
        0x73 -> :sswitch_45
        0x74 -> :sswitch_13
        0x75 -> :sswitch_53
        0x76 -> :sswitch_f
        0x77 -> :sswitch_40
        0x78 -> :sswitch_54
        0x79 -> :sswitch_e
        0x7a -> :sswitch_55
        0x7b -> :sswitch_58
        0x7c -> :sswitch_59
        0x7d -> :sswitch_68
        0x7e -> :sswitch_5a
        0x7f -> :sswitch_4f
        0x80 -> :sswitch_46
        0x82 -> :sswitch_1
        0x84 -> :sswitch_8
        0x85 -> :sswitch_66
        0x86 -> :sswitch_67
        0x87 -> :sswitch_50
        0x88 -> :sswitch_51
        0x89 -> :sswitch_52
        0x8a -> :sswitch_4b
        0x8b -> :sswitch_9
        0x8c -> :sswitch_48
        0x8d -> :sswitch_49
        0x8e -> :sswitch_4a
        0x8f -> :sswitch_18
        0x90 -> :sswitch_19
        0x91 -> :sswitch_1a
        0x92 -> :sswitch_6a
        0x93 -> :sswitch_61
        0x94 -> :sswitch_2
        0x95 -> :sswitch_4c
        0x96 -> :sswitch_47
        0xa0 -> :sswitch_4d
        0xa1 -> :sswitch_4e
        0xaa -> :sswitch_5b
        0xab -> :sswitch_5c
        0xac -> :sswitch_5d
        0xad -> :sswitch_5e
        0xae -> :sswitch_5f
        0xaf -> :sswitch_60
        0xb4 -> :sswitch_62
        0xb5 -> :sswitch_69
        0xb6 -> :sswitch_6b
        0xb7 -> :sswitch_41
        0xb8 -> :sswitch_6e
        0xbb -> :sswitch_6f
        0xbe -> :sswitch_57
        0xbf -> :sswitch_70
        0xc0 -> :sswitch_71
        0xc2 -> :sswitch_76
        0xc3 -> :sswitch_6c
        0xc4 -> :sswitch_6d
        0xc5 -> :sswitch_63
        0xc6 -> :sswitch_64
        0xc7 -> :sswitch_65
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_79
        0xd2 -> :sswitch_72
        0xd3 -> :sswitch_75
        0xd4 -> :sswitch_74
        0xd5 -> :sswitch_72
        0xd8 -> :sswitch_73
        0xd9 -> :sswitch_77
        0xda -> :sswitch_78
        0xf0 -> :sswitch_12
        0x1fc -> :sswitch_1b
        0x1fd -> :sswitch_1c
        0x1fe -> :sswitch_2d
        0x1ff -> :sswitch_1d
        0x200 -> :sswitch_21
        0x201 -> :sswitch_1e
        0x202 -> :sswitch_20
        0x203 -> :sswitch_25
        0x204 -> :sswitch_29
        0x205 -> :sswitch_2a
        0x206 -> :sswitch_2b
        0x207 -> :sswitch_2c
        0x209 -> :sswitch_24
        0x20b -> :sswitch_30
        0x20c -> :sswitch_31
        0x20d -> :sswitch_26
        0x20f -> :sswitch_27
        0x211 -> :sswitch_28
        0x212 -> :sswitch_22
        0x213 -> :sswitch_23
        0x214 -> :sswitch_33
        0x215 -> :sswitch_34
        0x217 -> :sswitch_36
        0x218 -> :sswitch_37
        0x219 -> :sswitch_32
        0x21a -> :sswitch_35
        0x21b -> :sswitch_2f
        0x21c -> :sswitch_2e
        0x21d -> :sswitch_1f
        0x21e -> :sswitch_39
        0x21f -> :sswitch_3e
        0x220 -> :sswitch_3a
        0x221 -> :sswitch_3b
        0x222 -> :sswitch_3c
        0x223 -> :sswitch_38
        0x224 -> :sswitch_3f
        0x225 -> :sswitch_3d
    .end sparse-switch
.end method

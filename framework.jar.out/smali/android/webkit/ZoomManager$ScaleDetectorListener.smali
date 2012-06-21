.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1367
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v4, v4, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1368
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v4, v4, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    invoke-interface {v4, p1, v5}, Landroid/webkit/PinchZoomListener;->handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1369
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 1370
    const-string v2, "ZoomManager"

    const-string v4, "handleScale mWebView.mPinchZoomListener.handleScale FALSE"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    :goto_0
    return v3

    .line 1377
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1378
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x430c

    div-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    add-float v1, v4, v5

    .line 1381
    .local v1, scale:F
    :goto_1
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, v4, Landroid/webkit/ZoomManager;->mWebProperties:Landroid/webkit/WebProperties;

    iget-boolean v4, v4, Landroid/webkit/WebProperties;->ENABLE_TILT_LOG:Z

    if-eqz v4, :cond_2

    .line 1382
    const-string/jumbo v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detector.getTiltUse() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mActualScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_2
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, v4, Landroid/webkit/ZoomManager;->mWebProperties:Landroid/webkit/WebProperties;

    iget-boolean v4, v4, Landroid/webkit/WebProperties;->ENABLE_TILT_LOG:Z

    if-eqz v4, :cond_3

    .line 1384
    const-string/jumbo v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getCurrTilt() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getScaleFactor() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_3
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_8

    :cond_4
    move v0, v3

    .line 1392
    .local v0, isScaleLimited:Z
    :goto_2
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1394
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$1400(Landroid/webkit/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1395
    :cond_5
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v4, v3}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;Z)Z

    .line 1397
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_9

    .line 1398
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    const/high16 v5, 0x3fa0

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1402
    :goto_3
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    .line 1404
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1500()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 1405
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_6

    .line 1406
    const-string v2, "ZoomManager"

    const-string v3, "handleScale return isScaleLimited !! Changed scale is too small"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v0

    .line 1407
    goto/16 :goto_0

    .line 1380
    .end local v0           #isScaleLimited:Z
    .end local v1           #scale:F
    :cond_7
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    .restart local v1       #scale:F
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 1388
    goto :goto_2

    .line 1400
    .restart local v0       #isScaleLimited:Z
    :cond_9
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    .line 1410
    :cond_a
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 1411
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1414
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-boolean v4, v4, Landroid/webkit/WebView;->mBlockWebViewUpdate:Z

    if-ne v4, v3, :cond_b

    .line 1416
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    .line 1420
    :cond_b
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 1422
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 1423
    const-string v2, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleScale return TRUE!! mFocusX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocusY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1426
    :cond_c
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_d

    .line 1427
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScale return isScaleLimited = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v3, v0

    .line 1428
    goto/16 :goto_0
.end method

.method public isPanningOnly(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 12
    .parameter "detector"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1327
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v4

    .line 1328
    .local v4, prevFocusX:F
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v5

    .line 1329
    .local v5, prevFocusY:F
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v9

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v8, v9}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    .line 1330
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v9

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v8, v9}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;F)F

    .line 1331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1335
    .local v0, currentTime:J
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$1100(Landroid/webkit/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1336
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    #setter for: Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8, v9, v10}, Landroid/webkit/ZoomManager;->access$1102(Landroid/webkit/ZoomManager;J)J

    .line 1338
    :cond_0
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$1100(Landroid/webkit/ZoomManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 1340
    sget-boolean v7, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_1

    .line 1341
    const-string v7, "ZoomManager"

    const-string/jumbo v8, "isPanningOnly just return because of PANNING_BLOCKING_TIME "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_1
    :goto_0
    return v6

    .line 1347
    :cond_2
    cmpl-float v8, v4, v7

    if-nez v8, :cond_4

    cmpl-float v8, v5, v7

    if-nez v8, :cond_4

    move v3, v7

    .line 1350
    .local v3, focusDelta:F
    :goto_1
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v8

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v8, v3}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1200(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    .line 1351
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v2, v8, v9

    .line 1353
    .local v2, deltaSpan:F
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v8

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v8}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1300(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    const/4 v6, 0x1

    .line 1354
    .local v6, result:Z
    :cond_3
    if-eqz v6, :cond_5

    .line 1355
    iget v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v7, v2

    iput v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1359
    :goto_2
    sget-boolean v7, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_1

    .line 1360
    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isPanningOnly result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1347
    .end local v2           #deltaSpan:F
    .end local v3           #focusDelta:F
    .end local v6           #result:Z
    :cond_4
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v4

    iget-object v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v9}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v4

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v9}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v9

    sub-float/2addr v9, v5

    iget-object v10, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v10}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v10

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    goto :goto_1

    .line 1357
    .restart local v2       #deltaSpan:F
    .restart local v3       #focusDelta:F
    .restart local v6       #result:Z
    :cond_5
    iput v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1432
    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1433
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1434
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_1

    .line 1435
    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return TRUE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_1
    const/4 v0, 0x1

    .line 1441
    :goto_0
    return v0

    .line 1439
    :cond_2
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_3

    .line 1440
    const-string v0, "ZoomManager"

    const-string/jumbo v1, "onScale return FALSE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    .line 1293
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 1294
    const-string v2, "ZoomManager"

    const-string/jumbo v3, "onScaleBegin enter!! "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1297
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/webkit/PinchZoomListener;->onScaleBegin(FFF)Z

    .line 1301
    :cond_1
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$602(Landroid/webkit/ZoomManager;Z)Z

    .line 1302
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1303
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v2

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v2}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1304
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    .line 1305
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;F)F

    .line 1306
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->startZoom()V

    .line 1307
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->onPinchToZoomAnimationStart()V

    .line 1308
    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1312
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const-wide/16 v3, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v2, v3, v4}, Landroid/webkit/ZoomManager;->access$1102(Landroid/webkit/ZoomManager;J)J

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1317
    .local v0, tiltStart:J
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltStartTime(J)J

    .line 1318
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->registerTiltListener()V

    .line 1319
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_2

    .line 1320
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onScaleBegin end!! mFocusX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mFocusY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ScaleFactor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1447
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1448
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    invoke-interface {v3, p1}, Landroid/webkit/PinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 1451
    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1400(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1452
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;Z)Z

    .line 1453
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1602(Landroid/webkit/ZoomManager;I)I

    .line 1454
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1900(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1802(Landroid/webkit/ZoomManager;I)I

    .line 1457
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$2000(Landroid/webkit/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_4

    :cond_1
    move v0, v2

    .line 1460
    .local v0, reflowNow:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {v3, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 1464
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 1467
    .end local v0           #reflowNow:Z
    :cond_2
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 1468
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onPinchToZoomAnimationEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 1470
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->unregisterTiltListener()V

    .line 1471
    invoke-virtual {p1, v1}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    .line 1473
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const-wide/16 v2, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v1, v2, v3}, Landroid/webkit/ZoomManager;->access$1102(Landroid/webkit/ZoomManager;J)J

    .line 1475
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_3

    .line 1476
    const-string v1, "ZoomManager"

    const-string/jumbo v2, "onScaleEnd !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 1457
    goto :goto_0

    .restart local v0       #reflowNow:Z
    :cond_5
    move v2, v1

    .line 1460
    goto :goto_1
.end method

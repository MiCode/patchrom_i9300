.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field private static final ENABLE_TEXT_WRAP_WITH_AUTOFIT:Z = false

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final PANNING_BLOCKING_TIME:J = 0x32L

.field private static final TILT_ZOOM_SCALE_FACTOR:I = 0x8c

.field private static final ZOOM_ANIMATION_LENGTH:I = 0xfa

.field private static final mBlockZoomPadding:I = 0x5

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private cnt:I

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mBlockZoomStartScale:F

.field private mBlockZoomStartScrollX:I

.field private mBlockZoomStartScrollY:I

.field private mBlockZoomTargetScale:F

.field private mBlockZoomTargetScrollX:I

.field private mBlockZoomTargetScrollY:I

.field private mBlockZooming:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapMaxScale:F

.field private mDoubleTapZoomFactor:F

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

.field private mStartTimePannigCheck:J

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field mWebProperties:Landroid/webkit/WebProperties;

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private motionListener1:Landroid/hardware/motion/MRListener;

.field private motionListener2:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    .line 178
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 192
    const v0, 0x3be56042

    sput v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 198
    const/4 v0, 0x0

    sput v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 257
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V
    .locals 2
    .parameter "webView"
    .parameter "callbackProxy"

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 96
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 106
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 172
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 227
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    .line 229
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 230
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 234
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 243
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 245
    iput v1, p0, Landroid/webkit/ZoomManager;->cnt:I

    .line 258
    new-instance v0, Landroid/webkit/ZoomManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$1;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->motionListener1:Landroid/hardware/motion/MRListener;

    .line 273
    new-instance v0, Landroid/webkit/ZoomManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$2;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->motionListener2:Landroid/hardware/motion/MRListener;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mWebProperties:Landroid/webkit/WebProperties;

    .line 332
    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    .line 333
    iget-object v0, p1, Landroid/webkit/WebView;->mWebProperties:Landroid/webkit/WebProperties;

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mWebProperties:Landroid/webkit/WebProperties;

    .line 334
    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 341
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 343
    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    .line 344
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/WebviewScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/ZoomManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J

    return-wide v0
.end method

.method static synthetic access$1102(Landroid/webkit/ZoomManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J

    return-wide p1
.end method

.method static synthetic access$1400(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1500()F
    .locals 1

    .prologue
    .line 57
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1602(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1700(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$1900(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2000(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/ZoomManager;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$602(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$902(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method private animateBlockZoom(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    .line 738
    iget-wide v8, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 739
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 741
    :cond_0
    const/16 v1, 0xfa

    .line 742
    .local v1, period:I
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    .line 743
    const/4 v1, 0x1

    .line 748
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 749
    .local v0, elapsed:I
    int-to-float v8, v0

    int-to-float v9, v1

    div-float v2, v8, v9

    .line 750
    .local v2, ratio:F
    cmpl-float v8, v2, v13

    if-lez v8, :cond_2

    .line 751
    const/high16 v2, 0x3f80

    .line 754
    :cond_2
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    sub-float v9, v13, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    .line 755
    .local v7, zoomScale:F
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    int-to-float v8, v8

    sub-float v9, v13, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v3, v8

    .line 756
    .local v3, scrollX:I
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    int-to-float v8, v8

    sub-float v9, v13, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 758
    .local v4, scrollY:I
    if-ge v0, v1, :cond_7

    .line 760
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 761
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 762
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/ZoomManager;->cnt:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/webkit/ZoomManager;->cnt:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setInvalidatedCountByDoubleTap(I)V

    .line 770
    :cond_3
    :goto_0
    iget-boolean v8, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_8

    .line 771
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    sub-int v5, v8, v3

    .line 772
    .local v5, tx:I
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int v6, v8, v4

    .line 773
    .local v6, ty:I
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v3, v4}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 774
    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 775
    :cond_4
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 776
    :cond_5
    invoke-virtual {p0, v7, v12}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 777
    iget-boolean v8, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-nez v8, :cond_6

    .line 778
    iput-boolean v12, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 782
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v12}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 788
    .end local v5           #tx:I
    .end local v6           #ty:I
    :cond_6
    :goto_1
    return-void

    .line 765
    :cond_7
    iput-boolean v12, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 766
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V

    .line 767
    iput v12, p0, Landroid/webkit/ZoomManager;->cnt:I

    goto :goto_0

    .line 785
    :cond_8
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 786
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2
    .parameter "scaleA"
    .parameter "scaleB"

    .prologue
    .line 494
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1809
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1814
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1822
    :goto_0
    return-object v0

    .line 1816
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_2

    .line 1817
    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    .line 1819
    :cond_2
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_0

    .line 1822
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultZoomScale(F)V
    .locals 5
    .parameter "defaultScale"

    .prologue
    const-wide/16 v3, 0x0

    .line 390
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 391
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 392
    const/high16 v1, 0x3f80

    div-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    .line 393
    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 394
    const/high16 v1, 0x3e80

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    .line 395
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 397
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 401
    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 403
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 407
    :goto_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 410
    :cond_0
    return-void

    .line 399
    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    .line 405
    :cond_2
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_1
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 1125
    if-nez p1, :cond_0

    .line 1126
    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1130
    :goto_0
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    .line 1131
    return-void

    .line 1128
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 15
    .parameter "scale"
    .parameter "reflowText"
    .parameter "force"

    .prologue
    .line 948
    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v11, p1, v11

    if-gez v11, :cond_6

    const/4 v1, 0x1

    .line 949
    .local v1, isScaleLessThanMinZoom:Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 952
    if-eqz v1, :cond_7

    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    .line 953
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 958
    :goto_1
    if-eqz p2, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_0

    .line 960
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 970
    :cond_0
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-nez v11, :cond_1

    if-eqz p3, :cond_5

    .line 971
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 972
    .local v3, oldScale:F
    iget v2, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 974
    .local v2, oldInvScale:F
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v11, :cond_2

    .line 975
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v12, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 977
    :cond_2
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v11, :cond_3

    .line 978
    const-string v11, "ZoomManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setZoomScale mActualScale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "scale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_3
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 981
    const/high16 v11, 0x3f80

    div-float v11, v11, p1

    iput v11, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 983
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v11

    if-nez v11, :cond_4

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v11, :cond_4

    .line 991
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    .line 992
    .local v4, oldX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    .line 993
    .local v5, oldY:I
    mul-float v6, p1, v2

    .line 994
    .local v6, ratio:F
    int-to-float v11, v4

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v12, v13

    add-float v9, v11, v12

    .line 995
    .local v9, sx:F
    int-to-float v11, v5

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v14, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v10, v11, v12

    .line 999
    .local v10, sy:F
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v11}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 1003
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v7

    .line 1004
    .local v7, scrollX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v8

    .line 1005
    .local v8, scrollY:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11, v7, v8}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1009
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 1015
    .end local v4           #oldX:I
    .end local v5           #oldY:I
    .end local v6           #ratio:F
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    .end local v9           #sx:F
    .end local v10           #sy:F
    :cond_4
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 1017
    .end local v2           #oldInvScale:F
    .end local v3           #oldScale:F
    :cond_5
    return-void

    .line 948
    .end local v1           #isScaleLessThanMinZoom:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 955
    .restart local v1       #isScaleLessThanMinZoom:Z
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v11

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_8
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .locals 4
    .parameter "drawData"
    .parameter "viewWidth"

    .prologue
    .line 1666
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1667
    .local v1, settings:Landroid/webkit/WebSettings;
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1668
    .local v0, newZoomOverviewWidth:I
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1669
    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    .line 1672
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1679
    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    .line 1680
    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1681
    const/4 v2, 0x1

    .line 1683
    :goto_1
    return v2

    .line 1677
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1683
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startSmoothZoomAnimation(ZZF)V
    .locals 36
    .parameter "reflowText"
    .parameter "force"
    .parameter "forceScale"

    .prologue
    .line 564
    const/16 v28, 0x0

    .line 565
    .local v28, newScale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v30

    .line 567
    .local v30, settings:Landroid/webkit/WebSettings;
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    .line 568
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSmoothZoomAnimation start Scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mBlockRect:Landroid/graphics/Rect;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mAnchorX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mAnchorY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v10

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/webkit/WebView;->nativeGetBlockLeftTopEdge(IIFFZII)Landroid/graphics/Rect;

    move-result-object v15

    .line 572
    .local v15, cBlockRect:Landroid/graphics/Rect;
    :goto_0
    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebSettings;->enableDoubleTapBlockZoom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v15, Landroid/graphics/Rect;->left:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_1

    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_6

    .line 573
    :cond_1
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_2

    .line 574
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSmoothZoomAnimation end GoogleOriginal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_2
    move/from16 v28, p3

    .line 578
    const/high16 v3, 0x3f80

    mul-float v3, v3, v28

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v29, v3, v4

    .line 579
    .local v29, scale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v3, v4

    mul-float v3, v3, v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v32

    .line 580
    .local v32, tx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v28

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move/from16 v0, v32

    invoke-static {v0, v3, v4}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v3

    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    add-int v32, v3, v4

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v31

    .line 583
    .local v31, titleHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v3, v4

    move/from16 v0, v31

    int-to-float v4, v0

    sub-float/2addr v3, v4

    mul-float v3, v3, v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    move/from16 v0, v31

    int-to-float v5, v0

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v33

    .line 586
    .local v33, ty:I
    move/from16 v0, v33

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    const/4 v3, 0x0

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    add-int v33, v3, v4

    .line 590
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    .line 591
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    sub-int v3, v3, v32

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    sub-int v3, v3, v33

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    .line 711
    .end local v29           #scale:F
    .end local v31           #titleHeight:I
    .end local v32           #tx:I
    .end local v33           #ty:I
    :goto_2
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 712
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 714
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v3, :cond_15

    .line 715
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 723
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationStart()V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->cnt:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/ZoomManager;->cnt:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInvalidatedCountByDoubleTap(I)V

    .line 731
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_3

    .line 732
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSmoothZoomAnimation END new scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3
    return-void

    .line 570
    .end local v15           #cBlockRect:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v15, v3, Landroid/webkit/WebView;->mBlockRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 586
    .restart local v15       #cBlockRect:Landroid/graphics/Rect;
    .restart local v29       #scale:F
    .restart local v31       #titleHeight:I
    .restart local v32       #tx:I
    .restart local v33       #ty:I
    :cond_5
    sub-int v3, v33, v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v3

    add-int v3, v3, v31

    goto/16 :goto_1

    .line 599
    .end local v29           #scale:F
    .end local v31           #titleHeight:I
    .end local v32           #tx:I
    .end local v33           #ty:I
    :cond_6
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_7

    .line 600
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSmoothZoomAnimation start mBlockRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v5, v5, Landroid/webkit/WebView;->mBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mAnchorX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emptyAreaScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contentsWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contentsHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_7
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_8

    .line 613
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSmoothZoomAnimation end mBlockRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 617
    .local v16, cBlockWidth:I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 620
    .local v14, cBlockHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v35, v0

    .line 621
    .local v35, viewWidth:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    int-to-float v0, v3

    move/from16 v34, v0

    .line 623
    .local v34, viewHeight:F
    const/16 v21, 0x0

    .line 624
    .local v21, cPadding:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    move/from16 v0, p3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 625
    .local v25, doubleTapMaxScale:F
    if-nez p2, :cond_12

    .line 626
    add-int/lit8 v3, v16, 0xa

    int-to-float v3, v3

    div-float v28, v35, v3

    .line 627
    cmpl-float v3, v28, v25

    if-lez v3, :cond_10

    .line 629
    move/from16 v28, v25

    .line 641
    :cond_9
    :goto_4
    iget v3, v15, Landroid/graphics/Rect;->left:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v12, v3, v4

    .line 642
    .local v12, cBlockCenterX:F
    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 643
    .local v13, cBlockCenterY:F
    div-float v24, v35, v28

    .line 644
    .local v24, cViewportWidth:F
    div-float v23, v34, v28

    .line 649
    .local v23, cViewportHeight:F
    if-nez p2, :cond_b

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v23, v3

    if-gez v3, :cond_b

    .line 650
    add-int/lit8 v3, v14, 0xa

    int-to-float v3, v3

    div-float v28, v34, v3

    .line 651
    cmpl-float v3, v28, v25

    if-lez v3, :cond_13

    .line 653
    move/from16 v28, v25

    .line 661
    :cond_a
    :goto_5
    div-float v24, v35, v28

    .line 662
    div-float v23, v34, v28

    .line 665
    :cond_b
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 666
    .local v11, cBestViewport:Landroid/graphics/RectF;
    const/high16 v3, 0x4000

    div-float v3, v24, v3

    sub-float v3, v12, v3

    iput v3, v11, Landroid/graphics/RectF;->left:F

    .line 667
    const/high16 v3, 0x4000

    div-float v3, v23, v3

    sub-float v3, v13, v3

    iput v3, v11, Landroid/graphics/RectF;->top:F

    .line 668
    iget v3, v11, Landroid/graphics/RectF;->left:F

    add-float v3, v3, v24

    iput v3, v11, Landroid/graphics/RectF;->right:F

    .line 669
    iget v3, v11, Landroid/graphics/RectF;->top:F

    add-float v3, v3, v23

    iput v3, v11, Landroid/graphics/RectF;->bottom:F

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v22, v3, v28

    .line 674
    .local v22, cTitleHeight:F
    const/16 v19, 0x0

    .line 675
    .local v19, cMinX:F
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v20, v0

    .line 676
    .local v20, cMinY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    .line 677
    .local v17, cMaxX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    .line 683
    .local v18, cMaxY:F
    iget v3, v11, Landroid/graphics/RectF;->right:F

    sub-float v26, v3, v17

    .line 684
    .local v26, extraX:F
    const/4 v3, 0x0

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 685
    move/from16 v0, v26

    neg-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 687
    :cond_c
    iget v3, v11, Landroid/graphics/RectF;->bottom:F

    sub-float v27, v3, v18

    .line 688
    .local v27, extraY:F
    const/4 v3, 0x0

    cmpl-float v3, v27, v3

    if-lez v3, :cond_d

    .line 689
    const/4 v3, 0x0

    move/from16 v0, v27

    neg-float v4, v0

    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 693
    :cond_d
    iget v3, v11, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v19

    if-gez v3, :cond_e

    .line 694
    iget v3, v11, Landroid/graphics/RectF;->left:F

    sub-float v3, v19, v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 696
    :cond_e
    iget v3, v11, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v20

    if-gez v3, :cond_f

    .line 697
    const/4 v3, 0x0

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sub-float v4, v20, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 701
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    .line 702
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    .line 706
    iget v3, v11, Landroid/graphics/RectF;->left:F

    mul-float v3, v3, v28

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 707
    iget v3, v11, Landroid/graphics/RectF;->top:F

    mul-float v3, v3, v28

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    goto/16 :goto_2

    .line 630
    .end local v11           #cBestViewport:Landroid/graphics/RectF;
    .end local v12           #cBlockCenterX:F
    .end local v13           #cBlockCenterY:F
    .end local v17           #cMaxX:F
    .end local v18           #cMaxY:F
    .end local v19           #cMinX:F
    .end local v20           #cMinY:F
    .end local v22           #cTitleHeight:F
    .end local v23           #cViewportHeight:F
    .end local v24           #cViewportWidth:F
    .end local v26           #extraX:F
    .end local v27           #extraY:F
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v3, v28, v3

    if-gtz v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 631
    move/from16 v28, p3

    goto/16 :goto_4

    .line 632
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v3, v28, v3

    if-gez v3, :cond_9

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v28, v0

    goto/16 :goto_4

    .line 636
    :cond_12
    move/from16 v28, p3

    goto/16 :goto_4

    .line 654
    .restart local v12       #cBlockCenterX:F
    .restart local v13       #cBlockCenterY:F
    .restart local v23       #cViewportHeight:F
    .restart local v24       #cViewportWidth:F
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v3, v28, v3

    if-gtz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 655
    move/from16 v28, p3

    goto/16 :goto_5

    .line 656
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v3, v28, v3

    if-gez v3, :cond_a

    .line 657
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v28, v0

    goto/16 :goto_5

    .line 719
    .end local v12           #cBlockCenterX:F
    .end local v13           #cBlockCenterY:F
    .end local v14           #cBlockHeight:I
    .end local v16           #cBlockWidth:I
    .end local v21           #cPadding:F
    .end local v23           #cViewportHeight:F
    .end local v24           #cViewportWidth:F
    .end local v25           #doubleTapMaxScale:F
    .end local v34           #viewHeight:F
    .end local v35           #viewWidth:F
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    goto/16 :goto_3
.end method

.method private zoom(F)Z
    .locals 4
    .parameter "zoomMultiplier"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    .line 519
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 521
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 523
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 524
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 525
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 526
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 527
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1143
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 1144
    .local v0, scrollY:I
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1145
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 1150
    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    .line 1152
    return-void
.end method

.method private zoomToReadingLevelOrMore()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1156
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1158
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->enableDoubleTapBlockZoom()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1159
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sget v8, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1162
    .local v3, zoomScale:F
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v8, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v4, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 1163
    .local v0, left:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1165
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v4

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    sub-int v2, v4, v7

    .line 1169
    .local v2, viewLeft:I
    if-lez v2, :cond_2

    .line 1170
    int-to-float v4, v2

    mul-float/2addr v4, v3

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v7, v3, v7

    div-float/2addr v4, v7

    iput v4, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1179
    .end local v2           #viewLeft:I
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    :goto_2
    invoke-direct {p0, v4, v5, v3}, Landroid/webkit/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    .line 1186
    .end local v0           #left:I
    :goto_3
    return-void

    .line 1165
    .restart local v0       #left:I
    :cond_1
    add-int/lit8 v4, v0, -0x5

    goto :goto_0

    .line 1172
    .restart local v2       #viewLeft:I
    :cond_2
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2, v5}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1173
    const/4 v4, 0x0

    iput v4, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_1

    .end local v2           #viewLeft:I
    :cond_3
    move v4, v5

    .line 1179
    goto :goto_2

    .line 1181
    .end local v0           #left:I
    .end local v3           #zoomScale:F
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sget v8, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1183
    .restart local v3       #zoomScale:F
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    invoke-direct {p0, v6, v5, v3}, Landroid/webkit/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_3

    :cond_5
    move v6, v5

    goto :goto_4
.end method


# virtual methods
.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 847
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-boolean v7, v7, Landroid/webkit/WebView;->mBlockWebViewUpdate:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 849
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    .line 852
    :cond_0
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 854
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-eqz v7, :cond_2

    .line 855
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->animateBlockZoom(Landroid/graphics/Canvas;)V

    .line 919
    :cond_1
    :goto_0
    return-void

    .line 860
    :cond_2
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_3

    .line 861
    const-string/jumbo v7, "webviewZoom"

    const-string v8, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :cond_3
    iget-wide v7, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 872
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v7, v9

    long-to-int v0, v7

    .line 873
    .local v0, interval:I
    const/16 v7, 0xfa

    if-ge v0, v7, :cond_5

    .line 874
    int-to-float v7, v0

    const/high16 v8, 0x437a

    div-float v1, v7, v8

    .line 875
    .local v1, ratio:F
    const/high16 v7, 0x3f80

    iget v8, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    div-float v6, v7, v8

    .line 878
    .local v6, zoomScale:F
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 887
    .end local v1           #ratio:F
    :goto_1
    iget v7, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v2, v6, v7

    .line 888
    .local v2, scale:F
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 889
    .local v4, tx:I
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    add-int v4, v7, v8

    .line 891
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    .line 892
    .local v3, titleHeight:I
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v7, v8

    int-to-float v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 895
    .local v5, ty:I
    if-gt v5, v3, :cond_6

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int v5, v7, v8

    .line 899
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v7, :cond_7

    .line 900
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v4

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 903
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 904
    invoke-virtual {p0, v6, v11}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 906
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_1

    .line 908
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 913
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    .line 880
    .end local v2           #scale:F
    .end local v3           #titleHeight:I
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v6           #zoomScale:F
    :cond_5
    iget v6, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 882
    .restart local v6       #zoomScale:F
    iput v12, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 883
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    .line 895
    .restart local v2       #scale:F
    .restart local v3       #titleHeight:I
    .restart local v4       #tx:I
    .restart local v5       #ty:I
    :cond_6
    sub-int v7, v5, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_2

    .line 916
    :cond_7
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 917
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 465
    return-void
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 477
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 478
    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 482
    :cond_0
    :goto_0
    return p1

    .line 479
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 480
    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    .prologue
    .line 1833
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1834
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1835
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    .line 1837
    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    .prologue
    .line 1864
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1865
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1866
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1868
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMultiTouchGestureDetector()Landroid/webkit/WebviewScaleGestureDetector;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRegisterTiltListener()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method getZoomOverviewScale()F
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public handleDoubleTap(FF)V
    .locals 5
    .parameter "lastTouchX"
    .parameter "lastTouchY"

    .prologue
    const/4 v4, 0x0

    .line 1046
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1047
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1048
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    .line 1052
    const-string v1, "ZoomManager"

    const-string v2, "handleDoubleTap start "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_2
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mBlockRect:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 1055
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 1056
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v2, p1

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1057
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v2, p2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1059
    :cond_3
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 1062
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1109
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1116
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    .line 1120
    :goto_1
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_0

    .line 1121
    const-string v1, "ZoomManager"

    const-string v2, "handleDoubleTap END "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_4
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto :goto_1
.end method

.method public init(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 354
    sget-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 357
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 358
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 359
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 361
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 363
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 364
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1826
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1827
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1828
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1830
    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 3

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1023
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    .prologue
    .line 926
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    .prologue
    .line 1235
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 486
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    .prologue
    .line 1840
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1841
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    .prologue
    .line 1857
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1858
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1859
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1861
    :cond_0
    return-void
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 10
    .parameter "drawData"

    .prologue
    const/4 v9, 0x0

    .line 1695
    sget-boolean v7, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1696
    :cond_0
    sget-boolean v7, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    iget-object v7, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1697
    :cond_1
    sget-boolean v7, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1699
    :cond_2
    const/4 v4, 0x0

    .line 1702
    .local v4, textWrapScaleChanged:Z
    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 1703
    .local v6, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1704
    .local v5, viewSize:Landroid/graphics/Point;
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    .line 1705
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    invoke-direct {p0, p1, v7}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    .line 1706
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1707
    .local v0, overviewScale:F
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 1708
    .local v3, settings:Landroid/webkit/WebSettings;
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1709
    :cond_3
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_8

    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_0
    iput v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1711
    iget v7, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v8, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1714
    :cond_4
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1716
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_9

    .line 1717
    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 1748
    .local v2, scale:F
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 1749
    .local v1, reflowText:Z
    iget-boolean v7, v6, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v7, :cond_6

    .line 1750
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1752
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1753
    iget v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1759
    iget v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v7, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1766
    :cond_6
    :goto_2
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v7

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1782
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1787
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1789
    .end local v1           #reflowText:Z
    .end local v2           #scale:F
    :cond_7
    return-void

    :cond_8
    move v7, v0

    .line 1709
    goto :goto_0

    .line 1718
    :cond_9
    iget-boolean v7, v6, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v7, :cond_a

    iget v7, v6, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_d

    .line 1719
    :cond_a
    iget v7, v6, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_b

    iget v2, v6, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 1721
    .restart local v2       #scale:F
    :goto_4
    iget v7, v6, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_c

    iget v7, v6, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_5
    iput v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .end local v2           #scale:F
    :cond_b
    move v2, v0

    .line 1719
    goto :goto_4

    .line 1721
    .restart local v2       #scale:F
    :cond_c
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v7

    goto :goto_5

    .line 1724
    .end local v2           #scale:F
    :cond_d
    move v2, v0

    .line 1725
    .restart local v2       #scale:F
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v7

    if-nez v7, :cond_f

    .line 1727
    :cond_e
    iget v7, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1729
    :cond_f
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1743
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v7

    iput v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .line 1762
    .restart local v1       #reflowText:Z
    :cond_10
    iget v7, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v7, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    goto :goto_2

    .line 1766
    :cond_11
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 11
    .parameter "drawData"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1605
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    .line 1606
    .local v5, viewWidth:I
    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1607
    .local v6, zoomOverviewWidthChanged:Z
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1608
    .local v1, newZoomOverviewScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 1609
    .local v4, settings:Landroid/webkit/WebSettings;
    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    .line 1614
    :cond_0
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1616
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1622
    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1623
    :cond_3
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1624
    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1628
    :cond_4
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1630
    .local v2, scaleHasDiff:Z
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    move v3, v7

    .line 1634
    .local v3, scaleLessThanOverview:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    .line 1636
    .local v0, mobileSiteInOverview:Z
    :goto_2
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    .line 1646
    :cond_7
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1647
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1652
    :goto_4
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1655
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1657
    :cond_8
    return-void

    .line 1618
    .end local v0           #mobileSiteInOverview:Z
    .end local v2           #scaleHasDiff:Z
    .end local v3           #scaleLessThanOverview:Z
    :cond_9
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_0

    .restart local v2       #scaleHasDiff:Z
    :cond_a
    move v3, v8

    .line 1630
    goto :goto_1

    .restart local v3       #scaleLessThanOverview:Z
    :cond_b
    move v0, v8

    .line 1634
    goto :goto_2

    .restart local v0       #mobileSiteInOverview:Z
    :cond_c
    move v7, v8

    .line 1647
    goto :goto_3

    .line 1650
    :cond_d
    if-nez v2, :cond_e

    :goto_5
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1882
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1483
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1484
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    .line 1485
    .local v0, visibleTitleHeight:I
    iput v6, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1486
    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 1487
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1488
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1492
    .end local v0           #visibleTitleHeight:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_1

    .line 1497
    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1501
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1502
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1520
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1529
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 1530
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1531
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_4

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_5

    :goto_2
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 1535
    :cond_2
    return-void

    .line 1497
    :cond_3
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1531
    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public refreshZoomScale(Z)V
    .locals 2
    .parameter "reflowText"

    .prologue
    .line 940
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 941
    return-void
.end method

.method public registerTiltListener()V
    .locals 3

    .prologue
    .line 286
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener1:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    .line 290
    :cond_0
    return-void
.end method

.method public registerTockTockListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 309
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 310
    const-string/jumbo v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 312
    :cond_0
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener2:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 313
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    const/high16 v1, 0x3f80

    .line 1801
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 1802
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 1803
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1804
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 1805
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1792
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1793
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1794
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1795
    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    .prologue
    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 1874
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2
    .parameter "scaleInPercent"

    .prologue
    .line 473
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 474
    return-void
.end method

.method public setMotionAngleForTockTock()V
    .locals 3

    .prologue
    .line 324
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener2:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 1
    .parameter "calledInBrowserTab"

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->setNativeBrowser(Z)V

    .line 1284
    :cond_0
    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 468
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 469
    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 470
    return-void
.end method

.method public setZoomScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 945
    return-void
.end method

.method public startZoomAnimation(FZ)Z
    .locals 5
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 798
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 799
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 800
    .local v0, oldScale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    .line 801
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    .line 804
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 805
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 808
    :cond_0
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v3, :cond_1

    .line 809
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 812
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 814
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 818
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 820
    div-float v2, v4, v0

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    .line 821
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    .line 822
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 823
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationStart()V

    .line 825
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidateUrgent()V

    .line 828
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public unregisterTiltListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener1:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 300
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-virtual {v0, v2}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    .line 302
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    .line 304
    :cond_1
    return-void
.end method

.method public unregisterTockTockListener()V
    .locals 2

    .prologue
    .line 316
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener2:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 319
    :cond_0
    return-void
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6
    .parameter "density"

    .prologue
    .line 376
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 378
    :cond_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 380
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 382
    .local v0, originalDefault:F
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 383
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    .line 385
    .local v1, scaleChange:F
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 387
    .end local v0           #originalDefault:F
    .end local v1           #scaleChange:F
    :cond_1
    return-void

    .line 383
    .restart local v0       #originalDefault:F
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5
    .parameter "doubleTapZoom"

    .prologue
    const/4 v2, 0x1

    .line 930
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    .line 931
    .local v1, zoomIn:Z
    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 932
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 933
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 934
    if-eqz v1, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 936
    .local v0, newScale:F
    :goto_1
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 937
    return-void

    .line 930
    .end local v0           #newScale:F
    .end local v1           #zoomIn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 934
    .restart local v1       #zoomIn:Z
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1190
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1192
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1193
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1194
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 1198
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    .line 1202
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-nez v2, :cond_6

    .line 1203
    new-instance v2, Landroid/webkit/WebviewScaleGestureDetector;

    new-instance v3, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v3, p0, v5}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v2, p1, v3}, Landroid/webkit/WebviewScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    .line 1205
    sget-object v2, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v2, :cond_4

    .line 1206
    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1212
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v4

    .line 1194
    goto :goto_0

    .line 1209
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v2, :cond_4

    .line 1210
    iput-object v5, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    .prologue
    .line 1845
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1846
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1847
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    .line 1849
    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .locals 4
    .parameter "viewState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1576
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1577
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_1

    .line 1578
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1579
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1580
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1593
    :goto_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1594
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1598
    :goto_1
    return-void

    .line 1582
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1583
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1586
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1587
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1590
    :cond_2
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1591
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1596
    :cond_3
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 498
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 510
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 514
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

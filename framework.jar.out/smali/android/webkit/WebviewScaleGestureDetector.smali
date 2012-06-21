.class public Landroid/webkit/WebviewScaleGestureDetector;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "WebviewScaleGestureDetector"


# instance fields
.field private detectTiltUse_spanChange:I

.field private detectTiltUse_sumTiltVaue:I

.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private mCalledInBrowserTab:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field private mMotionUse:Z

.field mOnScaleBeginStart:J

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mPreventMoveEvent:Z

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTiltUse:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    .line 94
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 95
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 97
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 98
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 99
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 100
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 182
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 187
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 188
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 191
    return-void

    .line 182
    .end local v0           #config:Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 10
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 526
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 527
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 530
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 531
    if-eq v2, p3, :cond_1

    if-eq v2, v4, :cond_1

    .line 532
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 533
    .local v1, edgeSlop:F
    iget v6, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 534
    .local v6, rightSlop:F
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 535
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 536
    .local v7, x:F
    invoke-static {p1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 537
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_1

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_1

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_1

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_1

    .line 538
    move v3, v2

    .line 544
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_0
    return v3

    .line 530
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 551
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 554
    :goto_0
    return v1

    .line 552
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 554
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 561
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 564
    :goto_0
    return v1

    .line 562
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 564
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private initTiltDecisionValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 140
    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 141
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 619
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 621
    iput-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 625
    iput-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 627
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 628
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 629
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 630
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 631
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 632
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 571
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 573
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 574
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 575
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 577
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 579
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 580
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 581
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 582
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 584
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 585
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 586
    const-string v20, "WebviewScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 616
    :cond_2
    :goto_0
    return-void

    .line 593
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 594
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 595
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 596
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 597
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 598
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 599
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 600
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 602
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 603
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 604
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 605
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 606
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 607
    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 608
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 609
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 611
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 612
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 614
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    .line 615
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public SetReadyToFinishZoom(Z)V
    .locals 3
    .parameter "bIsFinishZoom"

    .prologue
    .line 654
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetReadyToFinishZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    .line 658
    return-void
.end method

.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 697
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 698
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 699
    .local v0, cvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 700
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 702
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getMotionUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    .line 135
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 732
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 733
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 734
    .local v0, pvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 735
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 737
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 768
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 771
    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTiltUse()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 781
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public isReadyToFinishZoom()Z
    .locals 3

    .prologue
    .line 647
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isReadyToFinishZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    return v0
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 6
    .parameter "motionEvent"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getMotionUse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 122
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->tiltUseDecision()V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .parameter "event"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 198
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 200
    .local v3, action:I
    if-nez v3, :cond_1

    .line 201
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 204
    :cond_1
    const/4 v11, 0x1

    .line 205
    .local v11, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 206
    const/4 v11, 0x0

    .line 516
    :cond_2
    :goto_0
    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    move/from16 v28, v11

    .line 519
    :goto_1
    return v28

    .line 207
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v28, v0

    if-nez v28, :cond_1e

    .line 208
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 210
    :pswitch_1
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 211
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto :goto_0

    .line 223
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 224
    .local v15, metrics:Landroid/util/DisplayMetrics;
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 225
    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 228
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 229
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 232
    .local v14, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 233
    .local v13, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 234
    if-ltz v13, :cond_6

    if-ne v13, v14, :cond_7

    .line 236
    :cond_6
    if-ne v13, v14, :cond_a

    const/16 v28, -0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v13}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v13

    .line 240
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    const/4 v13, 0x0

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 251
    :cond_7
    :goto_3
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 253
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 259
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 260
    .local v9, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v22, v0

    .line 261
    .local v22, rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 262
    .local v7, bottomSlop:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 263
    .local v24, x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 264
    .local v26, y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 265
    .local v25, x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 267
    .local v27, y1:F
    cmpg-float v28, v24, v9

    if-ltz v28, :cond_8

    cmpg-float v28, v26, v9

    if-ltz v28, :cond_8

    cmpl-float v28, v24, v22

    if-gtz v28, :cond_8

    cmpl-float v28, v26, v7

    if-lez v28, :cond_b

    :cond_8
    const/16 v19, 0x1

    .line 269
    .local v19, p0sloppy:Z
    :goto_4
    cmpg-float v28, v25, v9

    if-ltz v28, :cond_9

    cmpg-float v28, v27, v9

    if-ltz v28, :cond_9

    cmpl-float v28, v25, v22

    if-gtz v28, :cond_9

    cmpl-float v28, v27, v7

    if-lez v28, :cond_c

    :cond_9
    const/16 v20, 0x1

    .line 272
    .local v20, p1sloppy:Z
    :goto_5
    if-eqz v19, :cond_d

    if-eqz v20, :cond_d

    .line 273
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 274
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 275
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 236
    .end local v7           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    goto/16 :goto_2

    .line 242
    :catch_0
    move-exception v8

    .line 243
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    const/4 v13, 0x0

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_3

    .line 246
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v28

    const/4 v13, 0x0

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    throw v28

    .line 267
    .restart local v7       #bottomSlop:F
    .restart local v9       #edgeSlop:F
    .restart local v22       #rightSlop:F
    .restart local v24       #x0:F
    .restart local v25       #x1:F
    .restart local v26       #y0:F
    .restart local v27       #y1:F
    :cond_b
    const/16 v19, 0x0

    goto :goto_4

    .line 269
    .restart local v19       #p0sloppy:Z
    :cond_c
    const/16 v20, 0x0

    goto :goto_5

    .line 276
    .restart local v20       #p1sloppy:Z
    :cond_d
    if-eqz v19, :cond_e

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 279
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 280
    :cond_e
    if-eqz v20, :cond_f

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 283
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 285
    :cond_f
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 292
    .end local v7           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v13           #index0:I
    .end local v14           #index1:I
    .end local v15           #metrics:Landroid/util/DisplayMetrics;
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 295
    .restart local v9       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v22, v0

    .line 296
    .restart local v22       #rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 297
    .restart local v7       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 298
    .restart local v13       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 300
    .restart local v14       #index1:I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 301
    .restart local v24       #x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 302
    .restart local v26       #y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 303
    .restart local v25       #x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 305
    .restart local v27       #y1:F
    cmpg-float v28, v24, v9

    if-ltz v28, :cond_10

    cmpg-float v28, v26, v9

    if-ltz v28, :cond_10

    cmpl-float v28, v24, v22

    if-gtz v28, :cond_10

    cmpl-float v28, v26, v7

    if-lez v28, :cond_14

    :cond_10
    const/16 v19, 0x1

    .line 307
    .restart local v19       #p0sloppy:Z
    :goto_6
    cmpg-float v28, v25, v9

    if-ltz v28, :cond_11

    cmpg-float v28, v27, v9

    if-ltz v28, :cond_11

    cmpl-float v28, v25, v22

    if-gtz v28, :cond_11

    cmpl-float v28, v27, v7

    if-lez v28, :cond_15

    :cond_11
    const/16 v20, 0x1

    .line 310
    .restart local v20       #p1sloppy:Z
    :goto_7
    if-eqz v19, :cond_12

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v13}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 313
    .local v12, index:I
    if-ltz v12, :cond_12

    .line 314
    move v13, v12

    .line 315
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 316
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 317
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 318
    const/16 v19, 0x0

    .line 322
    .end local v12           #index:I
    :cond_12
    if-eqz v20, :cond_13

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v14}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 325
    .restart local v12       #index:I
    if-ltz v12, :cond_13

    .line 326
    move v14, v12

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 328
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 329
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 330
    const/16 v20, 0x0

    .line 334
    .end local v12           #index:I
    :cond_13
    if-eqz v19, :cond_16

    if-eqz v20, :cond_16

    .line 335
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 336
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 305
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 307
    .restart local v19       #p0sloppy:Z
    :cond_15
    const/16 v20, 0x0

    goto :goto_7

    .line 337
    .restart local v20       #p1sloppy:Z
    :cond_16
    if-eqz v19, :cond_17

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 340
    :cond_17
    if-eqz v20, :cond_18

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 344
    :cond_18
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 351
    .end local v7           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v13           #index0:I
    .end local v14           #index1:I
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 353
    .local v21, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 354
    .local v5, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 356
    .local v4, actionId:I
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_1a

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_19

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 359
    .local v16, newIndex:I
    if-ltz v16, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_0

    .line 360
    .end local v16           #newIndex:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 362
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_0

    .line 366
    .end local v16           #newIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 368
    .restart local v12       #index:I
    if-gez v12, :cond_1d

    .line 369
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 370
    const-string v28, "WebviewScaleGestureDetector"

    const-string v29, "Invalid MotionEvent stream detected."

    new-instance v30, Ljava/lang/Throwable;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v28 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 374
    :cond_1b
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 366
    .end local v12           #index:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    goto :goto_8

    .line 377
    .restart local v12       #index:I
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 379
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 380
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 381
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 382
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 389
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v12           #index:I
    .end local v21           #pointerCount:I
    :cond_1e
    packed-switch v3, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 493
    :pswitch_7
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    .line 494
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 392
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v17, v0

    .line 394
    .local v17, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v18, v0

    .line 395
    .local v18, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 397
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .end local v17           #oldActive0:I
    :goto_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 400
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 403
    .restart local v13       #index0:I
    if-ltz v13, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 405
    :cond_1f
    const-string v28, "WebviewScaleGestureDetector"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Got "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Did you forget to pass an event to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    const/16 v28, -0x1

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v13}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v13

    .line 411
    const/16 v28, -0x1

    move/from16 v0, v28

    if-le v13, v0, :cond_23

    .line 412
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 423
    :cond_20
    :goto_b
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .end local v13           #index0:I
    .restart local v17       #oldActive0:I
    :cond_21
    move/from16 v17, v18

    .line 398
    goto/16 :goto_9

    .line 409
    .end local v17           #oldActive0:I
    .restart local v13       #index0:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    goto :goto_a

    .line 414
    :cond_23
    const-string v28, "WebviewScaleGestureDetector"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(mActiveId0="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mActiveId1="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", event.getPointerId(event.getActionIndex())="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", event.getPointerCount()="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") Got "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " with bad state. "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Did you forget to pass an event to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 430
    .end local v13           #index0:I
    .end local v18           #oldActive1:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 431
    .restart local v21       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 432
    .restart local v5       #actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 434
    .restart local v4       #actionId:I
    const/4 v10, 0x0

    .line 435
    .local v10, gestureEnded:Z
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_28

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_26

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 438
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_25

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 440
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 441
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 442
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 443
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 461
    .end local v16           #newIndex:I
    :cond_24
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 462
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 463
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 468
    :goto_d
    if-eqz v10, :cond_2

    .line 470
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_29

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 474
    .local v6, activeId:I
    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 475
    .restart local v12       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 476
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 479
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 480
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 481
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 482
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPreventMoveEvent:Z

    goto/16 :goto_0

    .line 446
    .end local v6           #activeId:I
    .end local v12           #index:I
    .restart local v16       #newIndex:I
    :cond_25
    const/4 v10, 0x1

    goto :goto_c

    .line 448
    .end local v16           #newIndex:I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_24

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 450
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_27

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 452
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 453
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 454
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 455
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_c

    .line 458
    :cond_27
    const/4 v10, 0x1

    goto/16 :goto_c

    .line 465
    .end local v16           #newIndex:I
    :cond_28
    const/4 v10, 0x1

    goto/16 :goto_d

    .line 473
    :cond_29
    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_e

    .line 488
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v10           #gestureEnded:Z
    .end local v21           #pointerCount:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 489
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 498
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    move/from16 v29, v0

    div-float v28, v28, v29

    const v29, 0x3f2b851f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v23

    .line 506
    .local v23, updatePrevious:Z
    if-eqz v23, :cond_2

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 508
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setCurrTilt(I)V
    .locals 0
    .parameter "newTilt"

    .prologue
    .line 107
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 108
    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 0
    .parameter "mCalledInBrowserTab"

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 130
    return-void
.end method

.method public setTiltStartTime(J)J
    .locals 2
    .parameter "start"

    .prologue
    .line 111
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 112
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    return-wide v0
.end method

.method public setTiltUse(Z)V
    .locals 1
    .parameter "TiltUse"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)V

    .line 166
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 167
    return-void
.end method

.method public tiltUseDecision()V
    .locals 4

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f7cac083126e979L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 147
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 150
    :goto_0
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 151
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    .line 153
    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->initTiltDecisionValue()V

    .line 162
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->initTiltDecisionValue()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    neg-int v0, v0

    goto :goto_1
.end method

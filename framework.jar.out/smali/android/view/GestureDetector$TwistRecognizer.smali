.class Landroid/view/GestureDetector$TwistRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwistRecognizer"
.end annotation


# instance fields
.field public mAngleTemp:[I

.field public mAverDiffAngleFromInitAngle:I

.field public mAverSampDiffAngle:I

.field public mCntZero:I

.field public mDetectedCnt:I

.field public mInitAngle:I

.field public mInitTwist:Z

.field public mInitTwistAngle:I

.field public mInitX:I

.field public mInitY:I

.field public mMaxTouchN:I

.field public mPreFilteredAngle:I

.field public mRotatedAngle:F

.field public mSumDiffAngleFromInitAngle:I

.field public mSumSampDiffAngle:I

.field public mTwistCancel:Z

.field public mTwistCase1Down:Z

.field public mTwistCase2Down:Z

.field public mTwistDisX:I

.field public mTwistDisY:I

.field public mTwistDown:Z

.field public mTwistInitTime:J

.field public mTwistStart:Z

.field public mTwistTempDown:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 758
    iput-object p1, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 761
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 762
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 763
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 764
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 765
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    .line 767
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 768
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 769
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 770
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 771
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    .line 772
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 773
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 774
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverDiffAngleFromInitAngle:I

    .line 775
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverSampDiffAngle:I

    .line 776
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    .line 777
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    .line 779
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    .line 780
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 781
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 783
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 785
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 758
    invoke-direct {p0, p1}, Landroid/view/GestureDetector$TwistRecognizer;-><init>(Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public AngleFilter(Landroid/view/GestureDetector$SurfaceTouchSharingData;I)I
    .locals 5
    .parameter "data"
    .parameter "angle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, tFilteredAngle:I
    iget v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v1, v3, :cond_0

    .line 943
    move v0, p2

    .line 950
    :goto_0
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v2, v2, v3

    aput v2, v1, v4

    .line 951
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aput p2, v1, v3

    .line 953
    return v0

    .line 944
    :cond_0
    iget v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v1, v4, :cond_1

    .line 945
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v1, v1, v3

    add-int/2addr v1, p2

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 947
    :cond_1
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v1, v1, v3

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x3

    goto :goto_0
.end method

.method public CompensatedAngle(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x0

    .line 912
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-ne v0, v3, :cond_2

    .line 913
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 914
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-gez v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    add-int/lit16 v1, v1, 0xb4

    aput v1, v0, v2

    goto :goto_0

    .line 918
    :cond_2
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-nez v0, :cond_4

    .line 919
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-lez v0, :cond_3

    .line 920
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 921
    :cond_3
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-gez v0, :cond_0

    .line 922
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 924
    :cond_4
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-lez v0, :cond_6

    .line 925
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    if-ge v0, v3, :cond_5

    .line 926
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 928
    :cond_5
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    add-int/lit16 v1, v1, 0xb4

    aput v1, v0, v2

    goto :goto_0

    .line 930
    :cond_6
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-gez v0, :cond_0

    .line 931
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    const/16 v1, -0x5a

    if-le v0, v1, :cond_7

    .line 932
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto/16 :goto_0

    .line 934
    :cond_7
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    rsub-int v1, v1, 0xb4

    neg-int v1, v1

    aput v1, v0, v2

    goto/16 :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 957
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 958
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 959
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 960
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    .line 961
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 962
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 963
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 964
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 965
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 966
    iput v3, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 967
    iput v3, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 968
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 969
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 970
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverDiffAngleFromInitAngle:I

    .line 971
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 972
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverSampDiffAngle:I

    .line 973
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 974
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 975
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/MotionEvent;Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 12
    .parameter "ev"
    .parameter "data"

    .prologue
    .line 789
    const/4 v5, 0x0

    .line 790
    .local v5, tDist:I
    const/4 v6, 0x0

    .line 791
    .local v6, tFilteredAngle:I
    const/4 v2, 0x0

    .line 792
    .local v2, tDiffAngleFromInitAngle:I
    const/4 v7, 0x0

    .line 794
    .local v7, tSampDiffAngle:I
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-nez v8, :cond_0

    .line 795
    iget-object v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v9, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v9}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    #setter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v8, v9}, Landroid/view/GestureDetector;->access$002(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 796
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 797
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 798
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    .line 802
    :cond_0
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    .line 803
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    .line 804
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 806
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    iget-object v9, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ge v8, v9, :cond_1

    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 809
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector$TwistRecognizer;->CompensatedAngle(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 810
    iget-object v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p0, p2, v8}, Landroid/view/GestureDetector$TwistRecognizer;->AngleFilter(Landroid/view/GestureDetector$SurfaceTouchSharingData;I)I

    move-result v6

    .line 813
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    if-nez v8, :cond_10

    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 814
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    const-wide v10, 0x3ffccccccccccccdL

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    const/high16 v9, 0x4248

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, 0x10

    if-ge v8, v9, :cond_3

    :cond_2
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    if-eqz v8, :cond_10

    .line 816
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 819
    .local v0, tCurTime:J
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 820
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 821
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 822
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 823
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 824
    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    .line 827
    :cond_4
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v3, v0, v8

    .line 829
    .local v3, tDiffTime:J
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    sub-int v2, v6, v8

    .line 830
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    sub-int v7, v6, v8

    .line 832
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 833
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    add-int/2addr v8, v2

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 835
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 836
    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    .line 839
    :cond_5
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v3, v0, v8

    .line 841
    if-nez v7, :cond_6

    .line 842
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 846
    :cond_6
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 847
    const/4 v8, 0x0

    iput v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    .line 853
    :goto_0
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x16

    if-lt v8, v9, :cond_8

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-nez v8, :cond_8

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v9, 0x5

    if-le v8, v9, :cond_8

    .line 854
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 855
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 856
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mDetectedCnt:I

    .line 857
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_7

    const-wide/16 v8, 0x190

    cmp-long v8, v3, v8

    if-gtz v8, :cond_7

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v9, 0x1e

    if-le v8, v9, :cond_8

    .line 858
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 863
    :cond_8
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-eqz v8, :cond_9

    .line 864
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_12

    .line 865
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 871
    :cond_9
    :goto_1
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    if-eqz v8, :cond_b

    .line 872
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 876
    :cond_b
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    if-eqz v8, :cond_d

    .line 877
    const/16 v8, 0x78

    if-le v5, v8, :cond_c

    .line 878
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 879
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 881
    :cond_c
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_d

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-nez v8, :cond_d

    .line 882
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 883
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 887
    :cond_d
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mDetectedCnt:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-gt v8, v9, :cond_e

    .line 888
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 891
    :cond_e
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_f

    .line 892
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 893
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 897
    :cond_f
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    if-eqz v8, :cond_10

    .line 898
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_13

    .line 899
    const-string v8, "GestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Surface Touch Event] Twist - Right, DiffAngle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    #getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v9}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-interface {v8, v9, p1, v10}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    .line 908
    .end local v0           #tCurTime:J
    .end local v3           #tDiffTime:J
    :cond_10
    :goto_2
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 909
    return-void

    .line 849
    .restart local v0       #tCurTime:J
    .restart local v3       #tDiffTime:J
    :cond_11
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iput v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    goto/16 :goto_0

    .line 866
    :cond_12
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 867
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    goto/16 :goto_1

    .line 902
    :cond_13
    const-string v8, "GestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Surface Touch Event] Twist - Left, DiffAngle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    #getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v9}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-interface {v8, v9, p1, v10}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    goto :goto_2
.end method

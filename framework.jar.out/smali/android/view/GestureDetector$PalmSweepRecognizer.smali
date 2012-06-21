.class Landroid/view/GestureDetector$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mInitDiffx:F

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field public final mSweepSizeTH:I

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    iput-object p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 582
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 584
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepSizeTH:I

    .line 587
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 588
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 591
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 592
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 593
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 594
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 595
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 596
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 597
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 598
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 599
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 600
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 601
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 602
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 603
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    invoke-direct {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;-><init>(Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 664
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 665
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x4348

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 666
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 667
    iput-boolean v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 669
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 673
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v0, v3, :cond_1

    .line 674
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x420c

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 675
    iput-boolean v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 676
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v0, :cond_1

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 681
    :cond_1
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v0, v3, :cond_3

    .line 682
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 683
    :cond_2
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 685
    :cond_3
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    const/high16 v1, 0x43c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput-boolean v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 686
    :cond_4
    return-void
.end method

.method public GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I
    .locals 5
    .parameter "data"

    .prologue
    .line 620
    const/16 v0, 0x500

    .line 621
    .local v0, height:I
    const/16 v2, 0x2d0

    .line 623
    .local v2, width:I
    const/4 v1, 0x0

    .line 624
    .local v1, result:I
    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v3, v4

    .line 626
    .local v3, x:I
    iget-boolean v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v4, :cond_2

    .line 628
    const/16 v4, 0xf0

    if-ge v3, v4, :cond_0

    .line 630
    const/4 v1, 0x0

    .line 660
    :goto_0
    return v1

    .line 632
    :cond_0
    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_1

    .line 634
    const/4 v1, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 643
    :cond_2
    const/16 v4, 0x140

    if-ge v3, v4, :cond_3

    .line 645
    const/4 v1, 0x0

    goto :goto_0

    .line 647
    :cond_3
    const/16 v4, 0x280

    if-ge v3, v4, :cond_4

    .line 649
    const/4 v1, 0x1

    goto :goto_0

    .line 651
    :cond_4
    const/16 v4, 0x3c0

    if-ge v3, v4, :cond_5

    .line 653
    const/4 v1, 0x2

    goto :goto_0

    .line 657
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 738
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 739
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 740
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 741
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 742
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 743
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 744
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 745
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 746
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 747
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 748
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 749
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 751
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v2, v1, v0

    .line 752
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v2, v1, v0

    .line 753
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aput v2, v1, v0

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 730
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 731
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 732
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 735
    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x3

    const/high16 v4, 0x4396

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 689
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 690
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 691
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 694
    :cond_0
    const/4 v1, 0x0

    .line 695
    .local v1, validMajorCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 697
    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 699
    add-int/lit8 v1, v1, 0x1

    .line 695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_2
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v5, :cond_3

    .line 703
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    iget v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 704
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    if-lt v1, v6, :cond_3

    .line 705
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    .line 706
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 708
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 716
    :cond_3
    :goto_1
    return-void

    .line 709
    :cond_4
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 710
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 712
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1
.end method

.method public SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I

    move-result v0

    .line 607
    .local v0, range:I
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 609
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 611
    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 613
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 614
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 616
    :cond_1
    return-void
.end method

.method public UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 719
    iget-boolean v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v0, :cond_0

    .line 720
    const/16 v0, 0x15e

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 725
    :goto_0
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 726
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 727
    return-void

    .line 722
    :cond_0
    const/16 v0, 0x258

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    goto :goto_0
.end method

.class public Lcom/android/internal/widget/SignView;
.super Landroid/view/View;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SignView$SignatureInput;,
        Lcom/android/internal/widget/SignView$OnSignatureListener;
    }
.end annotation


# static fields
.field private static final ADD_ONE_SIGN:I = 0x0

.field private static final BORDER_WIDTH:I = 0x3

.field private static final DBG:Z = true

.field private static final DBG_PUSH:Z = true

.field private static final DBG_TOUCH:Z = false

.field private static final DEFAULT_THRESHOLD:I = 0x1f4

.field private static final DEF_PEN_WIDTH:I = 0x8

.field private static final MAX_POINT:I = 0x400

.field private static final MAX_SIGNDB_NUMBER:I = 0x2

.field private static final MIN_SIGNATURE_NUM:I = 0x3

.field private static final MIN_XY:I = 0xc8

.field private static final RECOG_TIMER_DELAY:I = 0x2bc

.field private static final SIGN_DATA_PATH:Ljava/lang/String; = "/data/data/com.sec.android.signaturelock/data/"

.field private static final TAG:Ljava/lang/String; = "SignView"

.field static final THRESHOLDS:[[I = null

.field private static final TOUCH_TOLERANCE:F = 20.0f

.field public static final USER_ID:I = 0xa

.field public static final VERIFY_FAIL_DIFFERENT:I = 0x2

.field public static final VERIFY_FAIL_ENGINE:I = 0x0

.field public static final VERIFY_FAIL_STROKE:I = 0x1

.field public static final VERIFY_FAIL_TOO_SIMPLE:I = 0x4

.field public static final VERIFY_FAIL_TOO_SMALL:I = 0x3

.field private static final VERIFY_ONE_SIGN:I = 0x1


# instance fields
.field private mBackgroundResourceID:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCompensationEnabled:Z

.field private mCurrentStroke:I

.field private mCurrentTime:J

.field private mFirstDraw:Z

.field private mHasOutLine:Z

.field private mInputOneStrokStamp:I

.field private mInputType:I

.field private mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

.field private mPath:Landroid/graphics/Path;

.field private mPenWidth:I

.field private mPersistentShow:Z

.field private mPreTime:J

.field private mRecognized:Z

.field private mRect:Landroid/graphics/Rect;

.field private mSavedInputType:I

.field private mSavedSignatureCount:I

.field private mSavedStrokeCount:I

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mSignBmpWrite:Landroid/graphics/Bitmap;

.field private mSignHandler:Landroid/os/Handler;

.field private mSignPaint:Landroid/graphics/Paint;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private mSignViewX:I

.field private mSignViewY:I

.field private mSignatureInputData:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSignatureVisible:Z

.field private mStartStamp:I

.field private mStartTime:J

.field private mStatus:I

.field private mThresholdValue:I

.field private mTimeGap:I

.field private mTimeOneStrokTap:I

.field private mTimeStamp:J

.field private mUserInputEnabled:Z

.field private mVerificationLevel:I

.field private mVerifyVOffsetRegisterViewX:I

.field private mVerifyVOffsetRegisterViewY:I

.field private mWriteStart:Z

.field private mWritingAreaHeight:I

.field private mWritingAreaWidth:I

.field private mX:F

.field private mY:F

.field private signUpdateTimeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/widget/SignView;->THRESHOLDS:[[I

    return-void

    :array_0
    .array-data 0x4
        0xcft 0x1t 0x0t 0x0t
        0x73t 0x2t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xc2t 0x1t 0x0t 0x0t
        0x62t 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4et 0x1t 0x0t 0x0t
        0xc4t 0x1t 0x0t 0x0t
        0xet 0x2t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x78t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
        0x50t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 709
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    .line 709
    new-instance v0, Lcom/android/internal/widget/SignView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SignView$1;-><init>(Lcom/android/internal/widget/SignView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SignView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SignView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SignView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SignView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    return p1
.end method

.method private fillAreaBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 681
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillAreaBackground mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 687
    :cond_0
    return-void
.end method

.method private insertDataToEngine(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 957
    const-string v5, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert points to engine from array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v4, 0x1

    .line 960
    .local v4, startWriting:Z
    const/4 v3, 0x0

    .line 963
    .local v3, nCount:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 964
    .local v2, input:Lcom/android/internal/widget/SignView$SignatureInput;
    const-string v5, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget v5, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 968
    :pswitch_0
    if-eqz v4, :cond_0

    .line 969
    const/4 v4, 0x0

    .line 970
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 971
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 974
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v6, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    iget v7, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 992
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :catch_0
    move-exception v0

    .line 993
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 979
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :pswitch_1
    :try_start_1
    iget v5, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    rem-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 980
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    iget v6, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    float-to-int v6, v6

    iget v7, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    float-to-int v7, v7

    iget-wide v8, v2, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/internal/policy/ISignServiceInterface;->addOnePoint(IIJ)V

    .line 982
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 983
    goto :goto_0

    .line 986
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->endOneStroke()V

    goto :goto_0

    .line 991
    .end local v2           #input:Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->endWriting()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setThresholdWithType()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 856
    const-string v1, "SignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set threshold dynamically, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, index:I
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v4, :cond_2

    .line 871
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_1

    .line 872
    const/4 v0, 0x0

    .line 884
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/widget/SignView;->THRESHOLDS:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 885
    return-void

    .line 873
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_0

    .line 874
    const/4 v0, 0x3

    goto :goto_0

    .line 876
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    if-ne v1, v5, :cond_0

    .line 877
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v4, :cond_3

    .line 878
    const/4 v0, 0x2

    goto :goto_0

    .line 879
    :cond_3
    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    if-ne v1, v5, :cond_0

    .line 880
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkPreCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    if-nez v1, :cond_1

    .line 482
    const-string v1, "SignView"

    const-string v2, "mSignService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v1}, Lcom/android/internal/widget/SignView$OnSignatureListener;->notifySignServiceError()V

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x400

    if-lt v1, v2, :cond_2

    .line 496
    const-string v1, "SignView"

    const-string v2, "Too many points, can\'t handle it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearScreen()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 707
    return-void
.end method

.method doAddSign()V
    .locals 9

    .prologue
    .line 733
    const-string v5, "SignView"

    const-string v6, "doAddSign"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v6, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v6

    .line 751
    :try_start_0
    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-direct {p0, v5}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 753
    const/4 v2, 0x0

    .local v2, errCodePreCheck:I
    const/4 v1, 0x0

    .local v1, errCodeAdd:I
    const/4 v4, 0x0

    .line 756
    .local v4, signNum:I
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    const/16 v8, 0xc8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/policy/ISignServiceInterface;->checkSignatureData(II)I

    move-result v2

    .line 757
    if-gez v2, :cond_5

    .line 763
    :goto_0
    if-ltz v2, :cond_0

    if-eqz v1, :cond_8

    .line 764
    :cond_0
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign failed, precheck: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", add time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 769
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 770
    const/4 v3, 0x0

    .line 772
    .local v3, errorMessage:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    .line 773
    :cond_1
    const/4 v3, 0x2

    .line 779
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v3}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignFailed(I)V

    .line 797
    .end local v3           #errorMessage:I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 798
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v5}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 800
    iget-boolean v5, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    if-nez v5, :cond_4

    .line 801
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v1           #errCodeAdd:I
    .end local v2           #errCodePreCheck:I
    .end local v4           #signNum:I
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    return-void

    .line 759
    .restart local v1       #errCodeAdd:I
    .restart local v2       #errCodePreCheck:I
    .restart local v4       #signNum:I
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 760
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v7, 0xa

    invoke-interface {v5, v7}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v4

    goto :goto_0

    .line 774
    .restart local v3       #errorMessage:I
    :cond_6
    const/4 v5, -0x3

    if-ne v2, v5, :cond_7

    .line 775
    const/4 v3, 0x3

    goto :goto_1

    .line 776
    :cond_7
    const/4 v5, -0x4

    if-ne v2, v5, :cond_2

    .line 777
    const/4 v3, 0x4

    goto :goto_1

    .line 782
    .end local v3           #errorMessage:I
    :cond_8
    const-string v5, "SignView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add sign succeeded, sum of sign is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 787
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 788
    iget v5, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    iput v5, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 791
    :cond_9
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v5, :cond_3

    .line 792
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onAddSignSucceeded(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 804
    .end local v1           #errCodeAdd:I
    .end local v2           #errCodePreCheck:I
    .end local v4           #signNum:I
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method doVerifySign()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 811
    const-string v2, "SignView"

    const-string v3, "doVerifySign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 815
    const/4 v1, 0x0

    .line 818
    .local v1, errCode:I
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 821
    const-string v2, "SignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now getting verification result from engine with threshold "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v4, 0xa

    iget v5, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->verify(II)I

    move-result v1

    .line 826
    if-nez v1, :cond_1

    .line 827
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 828
    const-string v2, "SignView"

    const-string v4, "Identifying signature failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->reset()V

    .line 843
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->setPointZero()V

    .line 845
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 847
    invoke-direct {p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    return-void

    .line 829
    :cond_1
    if-ne v1, v6, :cond_0

    .line 836
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 837
    const-string v2, "SignView"

    const-string v4, "Identifying signature succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 852
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 505
    iget v1, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v1, :cond_0

    .line 506
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 511
    .local v0, index:I
    :goto_0
    return v0

    .line 508
    .end local v0           #index:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #index:I
    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    return v0
.end method

.method public getSignService()Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method public getStrokeCount()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    return v0
.end method

.method public getThresholdValue()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    return v0
.end method

.method public getVerifyResult()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mContext:Landroid/content/Context;

    .line 192
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    .line 203
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 204
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SignView;->mTimeGap:I

    .line 205
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 206
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mCurrentTime:J

    .line 207
    iput-wide v5, p0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 208
    iput v3, p0, Lcom/android/internal/widget/SignView;->mTimeOneStrokTap:I

    .line 209
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputOneStrokStamp:I

    .line 211
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 212
    iput v3, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 213
    iput v3, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 215
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 216
    iput v3, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 217
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 218
    iput v3, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 219
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 220
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 221
    iput v3, p0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 222
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 224
    iput v3, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 226
    iput v3, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 227
    new-array v1, v7, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 235
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 241
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 247
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAttachedToWindow] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 298
    const-string v0, "SignView"

    const-string v1, "SignView is detached from window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    if-eqz v0, :cond_2

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    if-eqz v0, :cond_1

    .line 311
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 313
    .local v5, paint:Landroid/graphics/Paint;
    const v0, -0x141415

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v9, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v10, v0

    move-object v6, p1

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 322
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 324
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 254
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinishInflate] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 261
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    .line 262
    sub-int v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    .line 265
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout WritingArea Size] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 273
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSizeChanged] w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 280
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    .line 281
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    .line 283
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create bitmap for drawing with mBackgroundResourceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    if-lez v0, :cond_1

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 292
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 330
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->checkPreCondition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const/4 v2, 0x1

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_0
    return v2

    .line 333
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 334
    .local v4, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 336
    .local v5, y:F
    const/4 v2, 0x0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_1

    .line 337
    const/4 v4, 0x0

    .line 339
    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_2

    .line 340
    const/4 v5, 0x0

    .line 342
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_3

    .line 343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    int-to-float v4, v2

    .line 345
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    .line 346
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    int-to-float v5, v2

    .line 349
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 474
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    const/4 v2, 0x1

    goto :goto_0

    .line 354
    .restart local v4       #x:F
    .restart local v5       #y:F
    :pswitch_0
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    if-eqz v2, :cond_8

    .line 355
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SignView;->mFirstDraw:Z

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->fillAreaBackground()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 360
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    .line 365
    .local v17, inputType:I
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getToolType(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", old: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SignView;->mInputType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mInputType:I

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 368
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SignView;->mInputType:I

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->setThresholdWithType()V

    .line 360
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 378
    .end local v17           #inputType:I
    :cond_7
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 381
    .end local v16           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SignView;->mRecognized:Z

    .line 383
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 384
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/SignView;->mX:F

    .line 385
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/SignView;->mY:F

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->isWriting()Z

    move-result v2

    if-nez v2, :cond_9

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    .line 392
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 398
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v9, v2, v3

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SignView;->mWritingAreaWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SignView;->mWritingAreaHeight:I

    invoke-interface {v2, v3, v6}, Lcom/android/internal/policy/ISignServiceInterface;->startWriting(II)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v2, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v2}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureStart()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 471
    .end local v4           #x:F
    .end local v5           #y:F
    :catch_0
    move-exception v15

    .line 472
    .local v15, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 474
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 412
    .restart local v4       #x:F
    .restart local v5       #y:F
    :pswitch_1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mCurrentTime:J

    .line 414
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v2, :cond_5

    .line 415
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mX:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 416
    .local v13, dx:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mY:F

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 417
    .local v14, dy:F
    const/high16 v2, 0x41a0

    cmpl-float v2, v13, v2

    if-gez v2, :cond_a

    const/high16 v2, 0x41a0

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_b

    .line 418
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SignView;->mX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SignView;->mY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SignView;->mX:F

    add-float/2addr v7, v4

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SignView;->mY:F

    add-float/2addr v8, v5

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 423
    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/SignView;->mX:F

    .line 424
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/SignView;->mY:F

    .line 425
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/widget/SignView;->mCurrentTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mPreTime:J

    .line 426
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/widget/SignView;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 431
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_c

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v6, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v8, v3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v9, v3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v10, v10, v19

    const/4 v12, 0x2

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 420
    .end local v16           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    float-to-int v3, v4

    int-to-float v3, v3

    float-to-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 439
    .restart local v16       #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v9, v2, v3

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    if-eqz v2, :cond_5

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    invoke-interface {v2}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureInputting()V

    goto/16 :goto_1

    .line 451
    .end local v13           #dx:F
    .end local v14           #dy:F
    .end local v16           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    if-eqz v2, :cond_5

    .line 452
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SignView;->mWriteStart:Z

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SignView;->mX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SignView;->mY:F

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->invalidate()V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v9, v2, v3

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v6, v10

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJI)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SignView;->mCurrentStroke:I

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SignView;->mSignHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/SignView;->signUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2bc

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetSignature()V
    .locals 8

    .prologue
    .line 888
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset signature, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_0

    .line 923
    :goto_0
    return-void

    .line 894
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    .line 896
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 898
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 901
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 904
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_1

    .line 905
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 908
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_2

    .line 909
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-input saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 914
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 915
    .local v1, errCode:I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 917
    .local v3, signNum:I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save signature again["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 919
    .end local v1           #errCode:I
    .end local v2           #i:I
    .end local v3           #signNum:I
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 922
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public restore()V
    .locals 8

    .prologue
    .line 926
    const-string v4, "SignView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore signatures, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-nez v4, :cond_0

    .line 954
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 934
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    .line 937
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 939
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SignView;->mSavedSignatureCount:I

    if-ge v2, v4, :cond_1

    .line 940
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore saved signatures: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SignView;->insertDataToEngine(I)V

    .line 945
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->addSignatureModel(I)I

    move-result v1

    .line 946
    .local v1, errCode:I
    iget-object v4, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v3

    .line 948
    .local v3, signNum:I
    const-string v4, "SignView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore signatures["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] errCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 950
    .end local v1           #errCode:I
    .end local v2           #i:I
    .end local v3           #signNum:I
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 953
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setAddSignStatus()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 557
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resourceID"

    .prologue
    .line 652
    iput p1, p0, Lcom/android/internal/widget/SignView;->mBackgroundResourceID:I

    .line 653
    return-void
.end method

.method public setCompensationEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mCompensationEnabled:Z

    .line 630
    return-void
.end method

.method public setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V
    .locals 0
    .parameter "onSignatureListener"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;

    .line 550
    return-void
.end method

.method public setOutLine(Z)V
    .locals 0
    .parameter "setOutLine"

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mHasOutLine:Z

    .line 596
    return-void
.end method

.method public setPenColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    return-void
.end method

.method public setPenWidth(I)V
    .locals 0
    .parameter "penWidth"

    .prologue
    .line 695
    if-lez p1, :cond_0

    .line 696
    iput p1, p0, Lcom/android/internal/widget/SignView;->mPenWidth:I

    .line 698
    :cond_0
    return-void
.end method

.method public setPersistentShow(Z)V
    .locals 3
    .parameter "isPersistent"

    .prologue
    .line 604
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPersistentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mPersistentShow:Z

    .line 606
    return-void
.end method

.method public setSettingInputType(I)V
    .locals 0
    .parameter "savedInputType"

    .prologue
    .line 664
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedInputType:I

    .line 665
    return-void
.end method

.method public setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V
    .locals 6
    .parameter "ISignService"

    .prologue
    .line 516
    const-string v2, "SignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSignService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/android/internal/widget/SignView;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, inited:Z
    if-eqz p1, :cond_0

    .line 522
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/SignView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v2}, Lcom/android/internal/policy/ISignServiceInterface;->initEngine()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 530
    if-eqz v1, :cond_1

    .line 531
    :try_start_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    monitor-exit v3

    .line 538
    return-void

    .line 533
    :cond_1
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 530
    if-eqz v1, :cond_2

    .line 531
    :try_start_4
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Succeed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_2
    const-string v2, "SignView"

    const-string v4, "Sign Engine init Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 531
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_1
    throw v2

    :cond_3
    const-string v4, "SignView"

    const-string v5, "Sign Engine init Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setSignViewXY(II)V
    .locals 0
    .parameter "viewX"
    .parameter "viewY"

    .prologue
    .line 586
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSignViewX:I

    .line 587
    iput p2, p0, Lcom/android/internal/widget/SignView;->mSignViewY:I

    .line 588
    return-void
.end method

.method public setSignatureVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 599
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignatureVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    .line 601
    return-void
.end method

.method public setStrokeCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 647
    const-string v0, "SignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set stroke count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iput p1, p0, Lcom/android/internal/widget/SignView;->mSavedStrokeCount:I

    .line 649
    return-void
.end method

.method public setThresholdValue(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 615
    iput p1, p0, Lcom/android/internal/widget/SignView;->mThresholdValue:I

    .line 616
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 656
    iput-boolean p1, p0, Lcom/android/internal/widget/SignView;->mUserInputEnabled:Z

    .line 657
    return-void
.end method

.method public setVerificationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 668
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerificationLevel:I

    .line 669
    return-void
.end method

.method public setVerifySign()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/SignView;->mStatus:I

    .line 564
    return-void
.end method

.method public setViewOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 576
    iput p1, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewX:I

    .line 577
    iput p2, p0, Lcom/android/internal/widget/SignView;->mVerifyVOffsetRegisterViewY:I

    .line 578
    return-void
.end method

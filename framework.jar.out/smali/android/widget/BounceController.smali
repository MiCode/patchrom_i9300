.class public Landroid/widget/BounceController;
.super Ljava/lang/Object;
.source "BounceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceController$BounceScrollRunnableDefault;,
        Landroid/widget/BounceController$AwakenScrollBarInterface;,
        Landroid/widget/BounceController$BOUNCETWEENER;,
        Landroid/widget/BounceController$Tweener;,
        Landroid/widget/BounceController$BounceRunnable;
    }
.end annotation


# static fields
.field private static final BOUNCE_EXTENT_ADJUSTMENT:F = 0.5f

.field public static final BOUNCE_FROM_DRAG_DURATION_MAX_DEF:I = 0x190

.field public static final BOUNCE_FROM_DRAG_DURATION_MIN_DEF:I = 0x190

.field public static final BOUNCE_FROM_FLING_DURATION_MAX_DEF:I = 0x258

.field public static final BOUNCE_FROM_FLING_DURATION_MIN_DEF:I = 0x258

.field public static final BOUNCE_RUNNABLE_DEFAULT:I = 0x0

.field public static final BOUNCE_RUNNABLE_NUM:I = 0x1

.field public static final DEBUG_BOUNCE:Z = true

.field public static final DEBUG_SCROLL:Z = false

.field private static final EFFECT_3D_ROTATE:I = 0x1

.field private static final EFFECT_BOUNCE:I = 0x0

.field public static final EXP_COEFFICIENT_1:F = -10.0f

.field public static final EXP_COEFFICIENT_2:F = 26.0f

.field public static final HORIZONTAL:I = 0x0

.field public static final ID_DRAG_MAX:I = 0x1

.field public static final ID_DRAG_MIN:I = 0x0

.field public static final ID_FLING_MAX:I = 0x3

.field public static final ID_FLING_MIN:I = 0x2

.field private static final MAX_BOUNCE_RATIO:F = 0.8f

.field private static final MAX_FLING_SPEED:F = 6000.0f

.field public static final MIN_BOUNCE_EXTENT:F = 1.0f

.field public static final SIN_COEFFICIENT:F = 0.01f

.field public static final TAG:Ljava/lang/String; = "BounceController"

.field public static final TRANSLATE_EDGEGLOW:Z = false

.field public static final VERTICAL:I = 0x1

.field public static mTweener:Landroid/widget/BounceController$Tweener;


# instance fields
.field final MAX_DEGREE:I

.field MAX_SHIFT:F

.field public mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

.field public final mBounceEnabled:Z

.field public mBounceExtent:F

.field private mBounceRunnableClasses:[Ljava/lang/Class;

.field private mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

.field private mCamera:Landroid/graphics/Camera;

.field private mDurations:[I

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEffectType:I

.field private mMaxBounceExtent:F

.field private mMaxBounceRatio:F

.field private mMaxFlingSpeed:F

.field private mOrientation:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 644
    sget-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    invoke-virtual {v0}, Landroid/widget/BounceController$BOUNCETWEENER;->getTweener()Landroid/widget/BounceController$Tweener;

    move-result-object v0

    sput-object v0, Landroid/widget/BounceController;->mTweener:Landroid/widget/BounceController$Tweener;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "bounceView"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    .line 28
    iput v3, p0, Landroid/widget/BounceController;->mBounceExtent:F

    .line 37
    iput v1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 53
    new-instance v0, Landroid/widget/BounceController$1;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$1;-><init>(Landroid/widget/BounceController;)V

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    .line 72
    new-array v0, v1, [Landroid/widget/BounceController$BounceRunnable;

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

    .line 78
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnableClasses:[Ljava/lang/Class;

    .line 111
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    .line 113
    const/16 v0, 0x2d

    iput v0, p0, Landroid/widget/BounceController;->MAX_DEGREE:I

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    .line 218
    iput v2, p0, Landroid/widget/BounceController;->mEffectType:I

    .line 324
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    .line 362
    const v0, 0x45bb8000

    iput v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    .line 377
    const v0, 0x3f4ccccd

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    .line 392
    iput v3, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 118
    iput-object p1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    .line 121
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceController;->mCamera:Landroid/graphics/Camera;

    .line 123
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 124
    return-void

    .line 324
    nop

    :array_0
    .array-data 0x4
        0x90t 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/BounceController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BounceController;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method


# virtual methods
.method public adjustBounceExtent()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 396
    iget v1, p0, Landroid/widget/BounceController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 401
    :cond_0
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 402
    .local v0, extent:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 403
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 405
    :cond_1
    return v0

    .line 396
    .end local v0           #extent:F
    :cond_2
    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public bounce(Landroid/graphics/Canvas;Z)I
    .locals 1
    .parameter "canvas"
    .parameter "clipToPadding"

    .prologue
    .line 274
    const/4 v0, -0x1

    return v0
.end method

.method public getBounceExtentRatio()F
    .locals 2

    .prologue
    .line 409
    iget v0, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBounceRunnable(III)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"
    .parameter "dragInterpolator"
    .parameter "flingInterpolator"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanvasShift()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 201
    invoke-virtual {p0}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v1

    mul-float v0, v3, v1

    .line 203
    .local v0, shift:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 204
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 209
    :cond_0
    mul-float v1, v0, v3

    return v1
.end method

.method public getDuration(I)I
    .locals 1
    .parameter "durationId"

    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method public getEdgeGlowMaxScale()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    sget v0, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxBounceRatio()F
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method

.method public getMaxFlingSpeed()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method public isBounceEnabled()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public makeScroller()Landroid/widget/OverScroller;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    .line 181
    iget-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public setDuration(II)V
    .locals 3
    .parameter "durationId"
    .parameter "duration"

    .prologue
    .line 334
    if-gez p2, :cond_0

    .line 335
    const-string v0, "BounceController"

    const-string v1, "Duration must be longer than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 340
    :cond_1
    const-string v0, "BounceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration with id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") doens\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 353
    :cond_3
    :pswitch_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aput p2, v0, p1

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    iget-object v1, p0, Landroid/widget/BounceController;->mDurations:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_3

    .line 348
    const-string v0, "BounceController"

    const-string v1, "Max value cannot be smaller than Min value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEdgeEffects(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V
    .locals 1
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 128
    iput-object p2, p0, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 130
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->setTouchWiz(Z)V

    .line 132
    invoke-virtual {p2, v0}, Landroid/widget/EdgeEffect;->setTouchWiz(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setEdgeGlowMaxScale(F)V
    .locals 1
    .parameter "maxScale"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    sput p1, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 139
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sput p1, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 141
    :cond_0
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 158
    return-void
.end method

.method public setMaxBounceRatio(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 384
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 385
    :cond_0
    const-string v0, "BounceController"

    const-string v1, "Bounce ratio must be within (0, 1)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_1
    iput p1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    goto :goto_0
.end method

.method public setMaxFlingSpeed(F)V
    .locals 2
    .parameter "maxSpeed"

    .prologue
    .line 369
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 370
    const-string v0, "BounceController"

    const-string v1, "Maximum Fling Speed must be larger than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iput p1, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 40
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 41
    iput p1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 47
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0
.end method

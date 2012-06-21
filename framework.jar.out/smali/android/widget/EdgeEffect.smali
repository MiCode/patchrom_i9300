.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field public static MAX_EDGE_SCALE_Y:F = 0.0f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field public static MAX_GLOW_SCALE_Y:F = 0.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field public static final STATE_ABSORB:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PULL:I = 0x1

.field public static final STATE_PULL_DECAY:I = 0x4

.field public static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowRecedeAnimationTrigger:Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    const/high16 v0, 0x3f80

    sput v0, Landroid/widget/EdgeEffect;->MAX_EDGE_SCALE_Y:F

    .line 244
    const/high16 v0, 0x40c0

    sput v0, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/EdgeEffect;->MIN_WIDTH:I

    .line 123
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 246
    iput-boolean v2, p0, Landroid/widget/EdgeEffect;->isTouchWiz:Z

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1080551

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 136
    const v1, 0x1080552

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4396

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 139
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 427
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 428
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 430
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 432
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 433
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 434
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 435
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 437
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 438
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 441
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 442
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 444
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 445
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 446
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 447
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 450
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 451
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 452
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 453
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 456
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 457
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 458
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 460
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 461
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 462
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 463
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 466
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 467
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 468
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 469
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 474
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 477
    .local v0, factor:F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 480
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 474
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 483
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private update2()V
    .locals 5

    .prologue
    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 409
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 410
    .local v0, t:F
    const v3, 0x3f7fbe77

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 411
    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mGlowRecedeAnimationTrigger:Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mGlowRecedeAnimationTrigger:Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;

    invoke-interface {v3}, Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;->onGlowRecedeAnimationStart()V

    .line 418
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 416
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "GlowRecedeAnimationTrigger need to be implemented"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    .line 365
    iget-boolean v8, p0, Landroid/widget/EdgeEffect;->isTouchWiz:Z

    if-eqz v8, :cond_0

    .line 366
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update2()V

    .line 371
    :goto_0
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 372
    .local v1, edgeHeight:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 373
    .local v3, edgeWidth:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 374
    .local v5, glowHeight:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 376
    .local v7, glowWidth:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 378
    int-to-float v8, v5

    iget v9, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 381
    .local v4, glowBottom:I
    iget v8, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 383
    iget v8, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 384
    .local v6, glowLeft:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    .end local v6           #glowLeft:I
    :goto_1
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 394
    int-to-float v8, v1

    iget v9, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 395
    .local v0, edgeBottom:I
    iget v8, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_2

    .line 397
    iget v8, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 398
    .local v2, edgeLeft:I
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 403
    .end local v2           #edgeLeft:I
    :goto_2
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    iget v8, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    return v8

    .line 368
    .end local v0           #edgeBottom:I
    .end local v1           #edgeHeight:I
    .end local v3           #edgeWidth:I
    .end local v4           #glowBottom:I
    .end local v5           #glowHeight:I
    .end local v7           #glowWidth:I
    :cond_0
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    goto/16 :goto_0

    .line 387
    .restart local v1       #edgeHeight:I
    .restart local v3       #edgeWidth:I
    .restart local v4       #glowBottom:I
    .restart local v5       #glowHeight:I
    .restart local v7       #glowWidth:I
    :cond_1
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 401
    .restart local v0       #edgeBottom:I
    :cond_2
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 405
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 173
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return v0
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    iget-boolean v2, p0, Landroid/widget/EdgeEffect;->isTouchWiz:Z

    if-eqz v2, :cond_2

    .line 162
    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 316
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 318
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 319
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 323
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 324
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 327
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 328
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 332
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 334
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 341
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 343
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 345
    return-void
.end method

.method public onAbsorb2()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 349
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    .line 186
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 187
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 229
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v10, :cond_1

    .line 191
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 193
    :cond_1
    iget-boolean v4, p0, Landroid/widget/EdgeEffect;->isTouchWiz:Z

    if-eqz v4, :cond_4

    .line 194
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->updatePullState()V

    .line 202
    :goto_1
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 203
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 205
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 206
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 209
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 213
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 214
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 215
    neg-float v1, v1

    .line 217
    :cond_2
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 218
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 222
    :cond_3
    const/high16 v4, 0x4080

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 225
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 226
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 227
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 228
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0

    .line 196
    .end local v0           #distance:F
    .end local v1           #glowChange:F
    :cond_4
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 198
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 199
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto/16 :goto_1
.end method

.method public onPull2(F)V
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 258
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 259
    const/high16 p1, 0x3f80

    .line 261
    :cond_0
    iput p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 263
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 265
    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 266
    sget v0, Landroid/widget/EdgeEffect;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 267
    sget v0, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 268
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 285
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 290
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 291
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 292
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 293
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 295
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 296
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 297
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 298
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 300
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 301
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public onRelease2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 272
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 274
    return-void
.end method

.method public setGlowRecedeAnimationTrigger(Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 489
    iput-object p1, p0, Landroid/widget/EdgeEffect;->mGlowRecedeAnimationTrigger:Landroid/widget/EdgeEffect$GlowRecedeAnimationTrigger;

    .line 490
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 149
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 150
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    .line 151
    return-void
.end method

.method public setTouchWiz(Z)V
    .locals 0
    .parameter "touchwiz"

    .prologue
    .line 249
    iput-boolean p1, p0, Landroid/widget/EdgeEffect;->isTouchWiz:Z

    .line 250
    return-void
.end method

.method public updatePullState()V
    .locals 4

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, now:J
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 238
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 239
    const/high16 v2, 0x4327

    iput v2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

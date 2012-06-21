.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"


# instance fields
.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mEnterAnimation:Landroid/view/animation/Animation;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mExitAnimation:Landroid/view/animation/Animation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mHeight:I

.field final mIsScreenOnFully:Z

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mSnapshotDeltaRotation:I

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mSnapshotRotation:I

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIIIZ)V
    .locals 11
    .parameter "context"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"
    .parameter "isScreenOnFully"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 55
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 58
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 61
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    .line 70
    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_4

    .line 72
    :cond_0
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 73
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 79
    :goto_0
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 80
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 81
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 82
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsScreenOnFully:Z

    .line 84
    if-nez p3, :cond_1

    .line 87
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 92
    :cond_1
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const-string v4, "FreezeSurface"

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v8, -0x1

    const v9, 0x30004

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_5

    .line 96
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    if-nez p3, :cond_3

    .line 112
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 117
    :cond_3
    :goto_1
    return-void

    .line 75
    :cond_4
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 76
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_0

    .line 99
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :goto_2
    :try_start_2
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-nez p3, :cond_3

    .line 112
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_1

    .line 101
    :catch_0
    move-exception v10

    .line 102
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v10}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 111
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v1

    if-nez p3, :cond_6

    .line 112
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_6
    throw v1
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 157
    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 158
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 161
    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 162
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 165
    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 166
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 124
    sub-int v0, p1, p0

    .line 125
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 126
    :cond_0
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .locals 8
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v5, :cond_0

    .line 254
    :goto_0
    return v4

    .line 196
    :cond_0
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 198
    .local v0, delta:I
    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 230
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 231
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 233
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 234
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 235
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 236
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 240
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 243
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, p5

    neg-int v5, p6

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v7, p6, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    .local v3, outer:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .local v2, inner:Landroid/graphics/Rect;
    new-instance v4, Lcom/android/server/wm/BlackFrame;

    const v5, 0x1e8480

    invoke-direct {v4, p1, v3, v2, v5}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 254
    .end local v2           #inner:Landroid/graphics/Rect;
    .end local v3           #outer:Landroid/graphics/Rect;
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002f

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 202
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a002e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 206
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0035

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 208
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0034

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 212
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0031

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 214
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0030

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 218
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0033

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 220
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, 0x10a0032

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    const-string v4, "ScreenRotationAnimation"

    const-string v5, "Unable to allocate black surface"

    invoke-static {v4, v5, v1}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_2

    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 263
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 270
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 274
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 276
    :cond_3
    return-void
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 178
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 179
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 183
    return-void
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .locals 6
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 148
    :cond_0
    return-void
.end method

.method public stepAnimation(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsScreenOnFully:Z

    if-nez v4, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_0

    .line 291
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v4, :cond_5

    .line 292
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    .line 293
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 295
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    .line 296
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 298
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 301
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, moreExit:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 304
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 306
    if-nez v1, :cond_6

    .line 308
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 309
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 311
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_6

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->hide()V

    .line 317
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, moreEnter:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_7

    .line 320
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 321
    if-nez v0, :cond_9

    .line 322
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 323
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 324
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 325
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_7

    .line 326
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 335
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 336
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 338
    if-nez v0, :cond_8

    if-eqz v1, :cond_0

    :cond_8
    move v2, v3

    goto/16 :goto_0

    .line 329
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_7

    .line 330
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

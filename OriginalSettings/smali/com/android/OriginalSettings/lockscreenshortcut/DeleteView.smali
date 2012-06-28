.class public Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsOnDeleting:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 239
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 239
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 239
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 5
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "bounds"
    .parameter "alpha"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 135
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 136
    .local v1, dy:I
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    return-void
.end method

.method private getTrashCanLidAngle()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 79
    const v2, 0x7f0201f3

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    .line 82
    const v2, 0x7f0201f2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 85
    const v2, 0x7f0201f4

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 88
    const v2, 0x7f0201f5

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 91
    const v2, 0x7f0201f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    return-void
.end method

.method private isTrashCanShakeMode()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    .line 147
    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 171
    return-void
.end method

.method private setTrashCanLidOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 166
    iput p2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 167
    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 151
    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 183
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 185
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 186
    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 187
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 109
    .local v2, r:Landroid/graphics/Rect;
    iget-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 111
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 114
    .local v0, lidCenterX:I
    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v3, 0x5

    .line 115
    .local v1, lidCenterY:I
    iget-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v3, :cond_2

    .line 116
    iget v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v4, 0x40a0

    div-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 118
    :cond_2
    iget v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 124
    .end local v0           #lidCenterX:I
    .end local v1           #lidCenterY:I
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 125
    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 127
    :cond_4
    iget v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 290
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 286
    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 159
    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 350
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 354
    return-void
.end method

.method public setOrienationMode(Z)V
    .locals 0
    .parameter "isLandscape"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 98
    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    .line 142
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 269
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 272
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    .line 224
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 227
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const v0, 0x7f060004

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    .line 232
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 9
    .parameter "value"

    .prologue
    const/high16 v8, 0x4100

    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 242
    const/high16 v2, 0x4100

    .line 243
    .local v2, kHalfCycles:F
    mul-float/2addr p1, v8

    .line 244
    const/high16 v3, 0x4140

    .line 245
    .local v3, kShakeMaxAngle:F
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getTrashCanLidAngle()F

    move-result v0

    .line 246
    .local v0, angle:F
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 247
    .local v1, dv:F
    iput p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 248
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 249
    cmpl-float v4, v0, v5

    if-lez v4, :cond_2

    .line 250
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 251
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 257
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 258
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 259
    cmpl-float v4, p1, v8

    if-ltz v4, :cond_1

    .line 260
    const v4, 0x7f060002

    const-wide/16 v5, 0x3c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    .line 262
    :cond_1
    return-void

    .line 253
    :cond_2
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 254
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 255
    iget v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x3f80

    .line 214
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 216
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    .line 218
    iput v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 219
    const v0, 0x7f060003

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    .line 221
    :cond_0
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 277
    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 278
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 279
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 281
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 301
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 305
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 308
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 314
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 318
    new-instance v3, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 341
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 345
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 346
    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    .line 194
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 195
    const v0, 0x7f060004

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    .line 197
    :cond_0
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    .line 207
    :cond_1
    return-void
.end method

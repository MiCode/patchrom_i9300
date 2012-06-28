.class public Lcom/android/OriginalSettings/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAnimationEnabled:I

.field private final mAnimationHandler:Landroid/os/Handler;

.field public mAnimationType:I

.field private mDummyView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionScale:F

.field private mViewDelay:J

.field private mViewDuration:J

.field private mViewFadeType:I

.field private mViewGlobalPosition:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewScaleFrom:F

.field private mViewScaleTo:F

.field private mViewStartOffset:I

.field private mViewTranslateFrom:F

.field private mViewTranslateTo:F

.field private mWindow:Landroid/view/View;

.field private mWindowDelay:J

.field private mWindowDuration:J

.field private mWindowFadeType:I

.field private mWindowScaleFrom:F

.field private mWindowScaleTo:F

.field private mWindowStartOffset:I

.field private mWindowTranslateFrom:F

.field private mWindowTranslateTo:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    .line 40
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 41
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    .line 42
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    .line 47
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    .line 48
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDelay:J

    .line 49
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleFrom:F

    .line 50
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleTo:F

    .line 51
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 52
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateTo:F

    .line 53
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowFadeType:I

    .line 54
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowStartOffset:I

    .line 55
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 60
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    .line 61
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDelay:J

    .line 62
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleFrom:F

    .line 63
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleTo:F

    .line 64
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateFrom:F

    .line 65
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateTo:F

    .line 66
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    .line 67
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewStartOffset:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 69
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewHeight:I

    .line 70
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 71
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/android/OriginalSettings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AnimationAdapter$1;-><init>(Lcom/android/OriginalSettings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    .line 40
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 41
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    .line 42
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    .line 47
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    .line 48
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDelay:J

    .line 49
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleFrom:F

    .line 50
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleTo:F

    .line 51
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 52
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateTo:F

    .line 53
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowFadeType:I

    .line 54
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowStartOffset:I

    .line 55
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 60
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    .line 61
    iput-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDelay:J

    .line 62
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleFrom:F

    .line 63
    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleTo:F

    .line 64
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateFrom:F

    .line 65
    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateTo:F

    .line 66
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    .line 67
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewStartOffset:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 69
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewHeight:I

    .line 70
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 71
    iput-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/android/OriginalSettings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AnimationAdapter$1;-><init>(Lcom/android/OriginalSettings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "AnimationLoader"

    const-string v1, "Construct : Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/AnimationAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/OriginalSettings/AnimationAdapter;->startAnimation()Z

    move-result v0

    return v0
.end method

.method private getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .parameter "fadeType"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 263
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 264
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 265
    return-object v0

    .line 263
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .parameter "fadeType"
    .parameter "duration"
    .parameter "startOffSet"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 269
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 270
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 271
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 272
    return-object v0

    .line 269
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getDummyViewFromView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 354
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 356
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, rImage:Landroid/widget/ImageView;
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 358
    invoke-virtual {p1, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewHeight:I

    .line 361
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 362
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    .line 282
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 285
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 286
    return-object v0
.end method

.method private getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .parameter "type"
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 257
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p1

    move v3, p1

    move v4, v2

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 258
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 259
    return-object v0
.end method

.method private initValues(I)V
    .locals 9
    .parameter "animationType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 115
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    .line 118
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 119
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #mWindowManager:Landroid/view/IWindowManager;
    :goto_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 125
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 126
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 127
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 128
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 129
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 130
    invoke-direct {p0, v5, v5}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowTranslate(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 131
    invoke-direct {p0, v5, v5}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewTranslate(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 132
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 133
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 135
    if-ne p1, v7, :cond_1

    .line 136
    const/high16 v2, 0x4355

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 137
    const v2, 0x3f8ccccd

    invoke-direct {p0, v4, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 138
    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 140
    const v2, 0x3f866666

    invoke-direct {p0, v4, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 141
    const/high16 v2, 0x42c8

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 142
    const/high16 v2, 0x42f0

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 143
    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 154
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/AnimationAdapter;->setOverridePendingTransition(I)Z

    .line 155
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AnimationLoader"

    const-string v3, "can\'t access WindowManger for getAnimationScale"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    if-ne p1, v8, :cond_0

    .line 146
    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 147
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 149
    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 150
    const/high16 v2, 0x4234

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;

    .line 151
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/AnimationAdapter;->setViewFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;

    goto :goto_1
.end method

.method private setViewDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "duration"

    .prologue
    .line 322
    iput-wide p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    .line 323
    return-object p0
.end method

.method private setViewFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "fadeType"

    .prologue
    .line 344
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    .line 345
    return-object p0
.end method

.method private setViewScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "scaleFrom"
    .parameter "scaleTo"

    .prologue
    .line 332
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleFrom:F

    .line 333
    iput p2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleTo:F

    .line 334
    return-object p0
.end method

.method private setViewStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 349
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewStartOffset:I

    .line 350
    return-object p0
.end method

.method private setViewTranslate(FF)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "translateFrom"
    .parameter "translateTo"

    .prologue
    .line 338
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateFrom:F

    .line 339
    iput p2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateTo:F

    .line 340
    return-object p0
.end method

.method private setWindowDuration(J)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "duration"

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    .line 291
    return-object p0
.end method

.method private setWindowFadeType(I)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "fadeType"

    .prologue
    .line 312
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowFadeType:I

    .line 313
    return-object p0
.end method

.method private setWindowScale(FF)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "scaleFrom"
    .parameter "scaleTo"

    .prologue
    .line 300
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleFrom:F

    .line 301
    iput p2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleTo:F

    .line 302
    return-object p0
.end method

.method private setWindowStartOffset(I)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowStartOffset:I

    .line 318
    return-object p0
.end method

.method private setWindowTranslate(FF)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 0
    .parameter "translateFrom"
    .parameter "translateTo"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 307
    iput p2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateTo:F

    .line 308
    return-object p0
.end method

.method private startAnimation()Z
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 184
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    if-nez v0, :cond_6

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 186
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 188
    .local v9, WindowAnimationSet:Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2

    .line 189
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateFrom:F

    iget v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowTranslateTo:F

    iget-wide v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_4

    .line 193
    :cond_3
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleFrom:F

    iget v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowScaleTo:F

    iget-wide v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/OriginalSettings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 195
    :cond_4
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowFadeType:I

    if-eqz v0, :cond_5

    .line 196
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowFadeType:I

    iget-wide v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindowStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 200
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 205
    .end local v9           #WindowAnimationSet:Landroid/view/animation/AnimationSet;
    :cond_6
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    if-ne v0, v1, :cond_8

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/AnimationAdapter;->getDummyViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 209
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewHeight:I

    iget-object v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_9

    .line 210
    :cond_7
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation only play."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_8
    :goto_0
    return v11

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 217
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_a

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_a
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 225
    .local v8, ViewAnimationSet:Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_c

    .line 226
    :cond_b
    iget v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateFrom:F

    iget v5, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewTranslateTo:F

    iget-wide v6, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    move-object v2, p0

    move v3, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/OriginalSettings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :cond_c
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_e

    .line 230
    :cond_d
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleFrom:F

    iget v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewScaleTo:F

    iget-wide v3, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/OriginalSettings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 233
    :cond_e
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    if-eqz v0, :cond_f

    .line 234
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_10

    .line 235
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/OriginalSettings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 240
    :cond_f
    :goto_1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 241
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 242
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 243
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 244
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const/4 v10, 0x1

    .local v10, i:I
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_11

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 245
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 237
    .end local v10           #i:I
    :cond_10
    iget v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewDuration:J

    iget v4, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mViewStartOffset:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/OriginalSettings/AnimationAdapter;->getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 248
    .restart local v10       #i:I
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 251
    .end local v10           #i:I
    :cond_12
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;I)Lcom/android/OriginalSettings/AnimationAdapter;
    .locals 2
    .parameter "selectedView"
    .parameter "animationType"

    .prologue
    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    .line 105
    iput-object p1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 110
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/AnimationAdapter;->initValues(I)V

    .line 111
    return-object p0

    .line 108
    :cond_1
    iput v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationEnabled:I

    goto :goto_0
.end method

.method public setOverridePendingTransition(I)Z
    .locals 4
    .parameter "animationType"

    .prologue
    const/4 v3, 0x1

    .line 175
    if-ne p1, v3, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x7f05

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    iget v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationType:I

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

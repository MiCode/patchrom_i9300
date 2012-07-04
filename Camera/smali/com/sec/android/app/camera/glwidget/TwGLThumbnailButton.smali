.class public Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLThumbnailButton"

.field private static final THUMBNAIL_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_BUTTON_WIDTH:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_POS_X:I

.field private static final THUMBNAIL_POS_Y:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonLocked:Z

.field private mFrameButton:Lcom/sec/android/glview/TwGLButton;

.field private mIdxNewThumbnail:I

.field private mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field private mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0601e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    .line 43
    const v0, 0x7f0601e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    .line 44
    const v0, 0x7f0601e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 45
    const v0, 0x7f0601e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 46
    const v0, 0x7f0601e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_BUTTON_WIDTH:I

    .line 47
    const v0, 0x7f0601ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "camera"
    .parameter "attachMode"

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_BUTTON_WIDTH:I

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_BUTTON_HEIGHT:I

    int-to-float v5, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 57
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 58
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 60
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 72
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;IZZ)V
    .locals 10
    .parameter "data"
    .parameter "orientation"
    .parameter "bSetOrientation"
    .parameter "bAnimation"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 250
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_2

    .line 252
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v8, v9

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 282
    :goto_0
    return-void

    .line 257
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 264
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    .line 265
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 266
    .local v7, transNewAnimation:Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 267
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 274
    .end local v7           #transNewAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 277
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02014e

    const v2, 0x7f020150

    const v3, 0x7f02014e

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 92
    :cond_2
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 93
    return-void
.end method

.method public lockButton(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 98
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUptateMessage()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    .line 135
    return-void
.end method

.method public update(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 220
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 221
    .local v0, defaultOrientation:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 222
    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 5
    .parameter "filename"
    .parameter "bAnimation"

    .prologue
    const/4 v4, 0x0

    .line 225
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, data:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v4, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 227
    return-void
.end method

.method public declared-synchronized update(Z)V
    .locals 13
    .parameter "bIsSNS"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    const/4 v10, 0x1

    .line 143
    .local v10, noThumbnail:Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 155
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setLastContentUri(Landroid/net/Uri;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 165
    .local v8, bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 171
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz p1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 175
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_4

    .line 180
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 184
    .local v9, defaultOrientation:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 188
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #defaultOrientation:I
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 193
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a

    const/high16 v1, 0x3f80

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 194
    .local v7, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 195
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 203
    const/4 v10, 0x0

    .line 205
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 208
    .end local v7           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_6
    if-nez v10, :cond_8

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02014e

    const v2, 0x7f020150

    const v3, 0x7f02014e

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 213
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 138
    .end local v10           #noThumbnail:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    .restart local v10       #noThumbnail:Z
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 169
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #croppedBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 211
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02014f

    const v2, 0x7f020150

    const v3, 0x7f02014f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public updateEmpty()V
    .locals 9

    .prologue
    const v8, 0x7f02014f

    const/4 v6, 0x0

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const v4, 0x7f02019b

    invoke-direct {v2, v3, v6, v6, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 109
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v5, 0x7f020150

    const/4 v7, 0x0

    move v2, v6

    move v3, v6

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    return-void
.end method

.method public updateEmptyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v2

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v3

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 131
    return-void
.end method

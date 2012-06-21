.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field private static final DISABLE_ENLARGEMENT:Z = false

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.6f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0x4

.field private static final ROUND_DIAMETER:F = 10.0f

.field private static final STROKE_WIDTH:I = 0x1

.field private static final USE_BITMAP_ENLARGEMENT:Z = true

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mBmCanvas:Landroid/graphics/Canvas;

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfFlexibleZoomScale:F

.field private static mfWebViewZoomScale:F


# instance fields
.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mMoves:Ljava/util/ArrayList;

.field private mPathBgFill:Landroid/graphics/Path;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Landroid/view/View;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    sput-object v1, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    sput-object v1, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 70
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 71
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 72
    sput v0, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 73
    sput v0, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 75
    sput-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 76
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 77
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 93
    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 96
    iput v2, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 97
    iput v2, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 98
    iput v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 99
    iput-boolean v2, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    .line 104
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 105
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    .line 108
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 110
    const v1, 0x1050059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 111
    const v1, 0x105005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 112
    const v1, 0x105005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 115
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 122
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 123
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 225
    sget v6, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    int-to-float v6, v6

    sget v7, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 226
    .local v5, zoomarea_width:I
    sget v6, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v6, v6

    sget v7, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 228
    .local v4, zoomarea_height:I
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 229
    .local v3, winloc:[I
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 231
    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v7, v3, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v8, v3, v10

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v9, v3, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v10, v3, v10

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 236
    .local v2, srcRect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 243
    .local v0, destRect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 244
    .local v1, matrix:Landroid/graphics/Matrix;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 252
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    sget-object v7, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 253
    sget-object v6, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method private setShowXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 262
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 263
    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 266
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 267
    .local v0, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 269
    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    .line 270
    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    sub-int/2addr v1, v2

    sget v2, Landroid/webkit/WebMagnifier;->mTailHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 271
    iget v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    add-int/lit8 v2, v2, 0x1e

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 273
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 274
    return-void
.end method

.method private updateDrawingPath()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4120

    .line 188
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 189
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 192
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x1

    .line 193
    .local v4, w:I
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x1

    .line 194
    .local v0, h:I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 197
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Landroid/webkit/WebMagnifier;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v11, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x4

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 209
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x4

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x4

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .line 215
    .local v2, regionClip:Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 216
    .local v1, regionBgFill:Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 217
    .local v3, regionMagnifier:Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 218
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 219
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 222
    return-void
.end method

.method private updateZoomScale()V
    .locals 3

    .prologue
    .line 279
    sget-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 280
    :cond_0
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 290
    :goto_0
    return-void

    .line 283
    :cond_1
    sget v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 6

    .prologue
    const/16 v5, 0x93

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 368
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 373
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 374
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    :cond_2
    iput v3, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 378
    iput v3, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 379
    iput v3, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 380
    iput v3, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 381
    iput v3, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 382
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 386
    const v1, 0x3f99999a

    sput v1, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 387
    sput-object v4, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 390
    sput-object v4, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 391
    sput-object v4, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 393
    iput-boolean v3, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move()V
    .locals 3

    .prologue
    .line 410
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 414
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "move() is called with NO data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 418
    .local v0, point:[I
    if-nez v0, :cond_2

    .line 419
    const-string v1, "WebMagnifier"

    const-string v2, "Acquired move data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 424
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 425
    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    goto :goto_0
.end method

.method move(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0x93

    const/4 v3, 0x0

    .line 397
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 401
    .local v1, point:[I
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 403
    .local v0, handler:Landroid/os/Handler;
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x100

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_1

    .line 136
    const-string v4, "WebMagnifier"

    const-string/jumbo v5, "onDraw : called after WebView is destroyed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v4, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 148
    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 149
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    const/high16 v4, 0x3f80

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 155
    .local v3, saveDrawCount:I
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 156
    invoke-direct {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 165
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 172
    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 293
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 294
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 295
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 298
    :cond_1
    return-void
.end method

.method show(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 310
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "show : mWebView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 319
    .local v9, srcView:Landroid/view/View;
    :goto_1
    if-eqz v9, :cond_2

    .line 320
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .end local v9           #srcView:Landroid/view/View;
    check-cast v9, Landroid/view/View;

    .restart local v9       #srcView:Landroid/view/View;
    goto :goto_1

    .line 326
    :cond_2
    if-nez v9, :cond_3

    .line 327
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_3
    iput-object v9, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 332
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 333
    .local v10, windowManager:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 334
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    .line 335
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 337
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 341
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    .line 344
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 356
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 357
    invoke-interface {v10, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 361
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 301
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 302
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 303
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 306
    return-void
.end method

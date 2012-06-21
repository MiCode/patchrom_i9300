.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field public static final ALPHA_THRESHOLD:F = 0.020833334f

.field public static final ALPHA_THRESHOLD_INT:F = 5.2916665f

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x20

.field public static final PANEL_BIT_DEPTH:F = 24.0f

.field private static final PRESSED_STATE_DURATION:I = 0x7d

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x190L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_EXPLORATION_TAP_SLOP:I = 0x50

.field private static final TOUCH_SLOP:I = 0x10

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScaledTouchExplorationTapSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x10

    const/16 v0, 0xc

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 256
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 257
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 258
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 259
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 260
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 261
    const/16 v0, 0x20

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 262
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 263
    const/16 v0, 0x50

    iput v0, p0, Landroid/view/ViewConfiguration;->mScaledTouchExplorationTapSlop:I

    .line 264
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 266
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 268
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 270
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x4140

    const/high16 v11, 0x3f00

    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 284
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 285
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 286
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 288
    .local v1, density:F
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 289
    const/high16 v9, 0x3fc0

    mul-float v5, v1, v9

    .line 294
    .local v5, sizeAndDensity:F
    :goto_0
    mul-float v9, v5, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 295
    mul-float v9, v5, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 296
    const/high16 v9, 0x4248

    mul-float/2addr v9, v1

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 297
    const/high16 v9, 0x45fa

    mul-float/2addr v9, v1

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 298
    const/high16 v9, 0x4120

    mul-float/2addr v9, v1

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 299
    const/high16 v9, 0x42c8

    mul-float/2addr v9, v5

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 300
    const/high16 v9, 0x42a0

    mul-float/2addr v9, v1

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mScaledTouchExplorationTapSlop:I

    .line 301
    const/high16 v9, 0x4180

    mul-float/2addr v9, v5

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 304
    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v9, v9, 0x4

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v9, v10

    iput v9, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 306
    const/4 v9, 0x0

    mul-float/2addr v9, v5

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 307
    const/high16 v9, 0x40c0

    mul-float/2addr v9, v5

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 309
    iget-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v9, :cond_0

    .line 310
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v6

    .line 312
    .local v6, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v6}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    iput-boolean v7, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 313
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v6           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v7, 0x1110009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 321
    const v7, 0x1050008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 323
    iget v7, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 324
    return-void

    .line 291
    .end local v5           #sizeAndDensity:F
    :cond_1
    move v5, v1

    .restart local v5       #sizeAndDensity:F
    goto :goto_0

    .restart local v6       #wm:Landroid/view/IWindowManager;
    :cond_2
    move v7, v8

    .line 312
    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, ex:Landroid/os/RemoteException;
    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 335
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 337
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 338
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 451
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 482
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 672
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 471
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 461
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 424
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 409
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 401
    const/16 v0, 0x7d

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 376
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 682
    const v0, 0x3c75c28f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 559
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    const/16 v0, 0x10

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 661
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchExplorationTapSlop()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/view/ViewConfiguration;->mScaledTouchExplorationTapSlop:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

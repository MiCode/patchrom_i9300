.class public Landroid/sec/multiwindow/GuideRelayoutWindow;
.super Landroid/app/Dialog;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;
    }
.end annotation


# static fields
.field public static final DIALOG_MODE_EXCHANGE:I = 0x3

.field public static final DIALOG_MODE_MOVE:I = 0x1

.field public static final DIALOG_MODE_NONE:I = 0x0

.field public static final DIALOG_MODE_RESIZE:I = 0x2


# instance fields
.field final EXCHANGE_BACKGROUND_COLOR:I

.field final RECT_DRAWABLE_RESOURCE:I

.field final RECT_MINIMUM_DRAWABLE_RESOURCE:I

.field final TAG:Ljava/lang/String;

.field mBackground:Landroid/graphics/NinePatch;

.field mBmp:Landroid/graphics/Bitmap;

.field mComponent:Landroid/content/ComponentName;

.field mDownPositionX:F

.field mDownPositionY:F

.field mInitRect:Landroid/graphics/Rect;

.field mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

.field mIsDrag:Z

.field mManager:Landroid/sec/multiwindow/IMultiWindowManager;

.field mMinBackground:Landroid/graphics/NinePatch;

.field mMinHeight:I

.field mMinWidth:I

.field mMode:I

.field mMw:Landroid/sec/multiwindow/IMultiWindow;

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mStatusBarHeight:I

.field mTempRect:Landroid/graphics/Rect;

.field mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 7
    .parameter "context"
    .parameter "comp"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "GuideRelayoutWindow"

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->TAG:Ljava/lang/String;

    .line 44
    const/high16 v0, -0x5600

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->EXCHANGE_BACKGROUND_COLOR:I

    .line 45
    const v0, 0x108051b

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->RECT_DRAWABLE_RESOURCE:I

    .line 46
    const v0, 0x108051a

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->RECT_MINIMUM_DRAWABLE_RESOURCE:I

    .line 48
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 49
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    .line 50
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mComponent:Landroid/content/ComponentName;

    .line 51
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    .line 52
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 53
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 55
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 56
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    .line 58
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 60
    iput v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionX:F

    .line 61
    iput v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionY:F

    .line 63
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 64
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTouchSlop:I

    .line 65
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 66
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 68
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    .line 69
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    .line 70
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    .line 71
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    .line 73
    iput-boolean v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 80
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 81
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p2}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    .line 82
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p2}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v6

    .line 83
    .local v6, point:Landroid/graphics/Point;
    if-nez v6, :cond_0

    .line 84
    new-instance v6, Landroid/graphics/Point;

    .end local v6           #point:Landroid/graphics/Point;
    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 87
    .restart local v6       #point:Landroid/graphics/Point;
    :cond_0
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v6, Landroid/graphics/Point;->x:I

    iget v5, v6, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;->initialize(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    .line 88
    invoke-virtual {p0, p3}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "context"
    .parameter "comp"
    .parameter "rect"

    .prologue
    const/4 v4, -0x1

    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "context"
    .parameter "comp"
    .parameter "rect"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "GuideRelayoutWindow"

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->TAG:Ljava/lang/String;

    .line 44
    const/high16 v0, -0x5600

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->EXCHANGE_BACKGROUND_COLOR:I

    .line 45
    const v0, 0x108051b

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->RECT_DRAWABLE_RESOURCE:I

    .line 46
    const v0, 0x108051a

    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->RECT_MINIMUM_DRAWABLE_RESOURCE:I

    .line 48
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 49
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    .line 50
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mComponent:Landroid/content/ComponentName;

    .line 51
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    .line 52
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 53
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 55
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 56
    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    .line 58
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    .line 60
    iput v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionX:F

    .line 61
    iput v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionY:F

    .line 63
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 64
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTouchSlop:I

    .line 65
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 66
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 68
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    .line 69
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    .line 70
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    .line 71
    iput v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    .line 73
    iput-boolean v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 98
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 99
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p2}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    .line 101
    invoke-direct/range {p0 .. p5}, Landroid/sec/multiwindow/GuideRelayoutWindow;->initialize(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Landroid/sec/multiwindow/GuideRelayoutWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->isMinimumSize()Z

    move-result v0

    return v0
.end method

.method private createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;
    .locals 3
    .parameter "bmp"
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 159
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V
    .locals 6
    .parameter "context"
    .parameter "comp"
    .parameter "rect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 108
    .local v1, window:Landroid/view/Window;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 109
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    invoke-direct {v2, p0, p1}, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;-><init>(Landroid/sec/multiwindow/GuideRelayoutWindow;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    .line 110
    iput-object p2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mComponent:Landroid/content/ComponentName;

    .line 111
    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    if-gez p4, :cond_0

    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v2

    iget p4, v2, Landroid/graphics/Point;->x:I

    .end local p4
    :cond_0
    iput p4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    .line 113
    if-gez p5, :cond_1

    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v2

    iget p5, v2, Landroid/graphics/Point;->y:I

    .end local p5
    :cond_1
    iput p5, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    .line 115
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTouchSlop:I

    .line 117
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x103

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 119
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 120
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    iget-object v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Landroid/sec/multiwindow/IMultiWindowManager;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {p0, p3}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setApplicationRect(Landroid/graphics/Rect;)V

    .line 125
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setNinePatchImg(Landroid/content/Context;)V

    .line 126
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->requestWindowFeature(I)Z

    .line 127
    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->show()V

    .line 130
    return-void
.end method

.method private isMinimumSize()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    const/4 p1, 0x0

    .line 140
    :cond_0
    return-void
.end method

.method private setNinePatchImg(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108051b

    invoke-direct {p0, v0, v1, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108051a

    invoke-direct {p0, v0, v1, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->createNinePatch(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/NinePatch;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    .line 148
    invoke-direct {p0, v0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    return-void
.end method


# virtual methods
.method public clearDummyDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 198
    iput-boolean v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    .line 199
    iput-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 200
    iput-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 202
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->dismiss()V

    .line 204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0x268

    const/4 v5, 0x1

    const/16 v10, 0x280

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return v5

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionX:F

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionY:F

    goto :goto_0

    .line 267
    :pswitch_1
    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-eqz v4, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionX:F

    sub-float v2, v4, v6

    .line 270
    .local v2, tx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mDownPositionY:F

    sub-float v3, v4, v6

    .line 272
    .local v3, ty:F
    iget-boolean v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    if-eqz v4, :cond_3

    .line 274
    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-ne v4, v12, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMovePosition(FF)V

    goto :goto_0

    .line 275
    :cond_2
    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 277
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v6, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setFreestyleResizePosition(FF)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    :cond_4
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mIsDrag:Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 289
    .end local v2           #tx:F
    .end local v3           #ty:F
    :pswitch_2
    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    .line 291
    invoke-direct {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->isMinimumSize()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 293
    .local v1, rect:Landroid/graphics/Rect;
    :goto_2
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-lt v4, v6, :cond_6

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v4, v6, :cond_9

    :cond_6
    invoke-direct {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->isMinimumSize()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 295
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    :goto_3
    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-ne v4, v12, :cond_d

    .line 305
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 307
    .local v0, orientation:I
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_b

    .line 309
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v4, v10, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-lt v4, v10, :cond_a

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowManager;->exchangeSplitScreens()Z

    .line 322
    .end local v0           #orientation:I
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->clearDummyDialog()V

    goto/16 :goto_0

    .line 291
    :cond_8
    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 299
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_9
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 310
    .restart local v0       #orientation:I
    :cond_a
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v4, v10, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-gt v4, v10, :cond_7

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowManager;->exchangeSplitScreens()Z

    goto :goto_4

    .line 314
    :cond_b
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v4, v11, :cond_c

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-lt v4, v11, :cond_c

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowManager;->exchangeSplitScreens()Z

    goto :goto_4

    .line 315
    :cond_c
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/16 v6, 0x258

    if-lt v4, v6, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-gt v4, v11, :cond_7

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowManager;->exchangeSplitScreens()Z

    goto :goto_4

    .line 319
    .end local v0           #orientation:I
    :cond_d
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMw:Landroid/sec/multiwindow/IMultiWindow;

    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindow;->relayout(Landroid/graphics/Rect;)Z

    goto :goto_4

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setApplicationRect(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "rect"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setBackgroundPadding(IIII)V
    .locals 0
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 208
    iput p1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    .line 209
    iput p2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    .line 210
    iput p3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    .line 211
    iput p4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    .line 213
    return-void
.end method

.method public setCaptureImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 252
    return-void
.end method

.method public setFreestyleResizePosition(FF)V
    .locals 6
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 224
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 225
    .local v1, left:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 226
    .local v3, top:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    float-to-int v5, p1

    add-int v2, v4, v5

    .line 227
    .local v2, right:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    float-to-int v5, p2

    add-int v0, v4, v5

    .line 229
    .local v0, bottom:I
    add-int/lit8 v4, v1, 0x64

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x64

    .line 230
    :cond_0
    add-int/lit8 v4, v3, 0x64

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v3, 0x64

    .line 232
    :cond_1
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    invoke-virtual {v4}, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->invalidate()V

    .line 235
    return-void
.end method

.method public setMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v2, 0x3

    .line 169
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v0

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v0, v1, :cond_1

    if-eq p1, v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iput p1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    .line 173
    invoke-direct {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->isMinimumSize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 177
    :cond_2
    iget v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    if-ne v0, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x5600

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMovePosition(FF)V
    .locals 4
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    float-to-int v3, p2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 218
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    invoke-virtual {v0}, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->invalidate()V

    .line 220
    return-void
.end method

.method public setPopupResizePosition(FF)V
    .locals 6
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 239
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    float-to-int v5, p1

    add-int v1, v4, v5

    .line 240
    .local v1, left:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 241
    .local v3, top:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 242
    .local v2, right:I
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    float-to-int v5, p2

    add-int v0, v4, v5

    .line 244
    .local v0, bottom:I
    add-int/lit8 v4, v1, 0x64

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x64

    .line 245
    :cond_0
    add-int/lit8 v4, v3, 0x64

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v3, 0x64

    .line 247
    :cond_1
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    iget-object v4, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mInnerView:Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;

    invoke-virtual {v4}, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->invalidate()V

    .line 250
    return-void
.end method

.method public setStatusBarHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 165
    iput p1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I

    return-void
.end method

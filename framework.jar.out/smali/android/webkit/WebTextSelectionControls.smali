.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 87
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 88
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 5
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "WebSelectionControls"

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->LOGV:Z

    .line 77
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 80
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 81
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 82
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 83
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 90
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 91
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 98
    const v2, 0x3e0f5c29

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 101
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 108
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 112
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 113
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080605

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080609

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 124
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 130
    :cond_1
    return-void
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "rtSelection"

    .prologue
    .line 713
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 714
    .local v0, path:Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 715
    .local v6, paint:Landroid/graphics/Paint;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 716
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 717
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 718
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 719
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 720
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 721
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 722
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 723
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 724
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 725
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 726
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 727
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    const/4 v5, 0x1

    .line 735
    invoke-direct {p0, p2, v5, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v2

    .line 736
    .local v2, leftPos:Landroid/graphics/Point;
    const/4 v4, 0x2

    invoke-direct {p0, p3, v4, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 740
    .local v3, rightPos:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 741
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 743
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 744
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 745
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 747
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 752
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 764
    :cond_1
    return-void
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 790
    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_0
    :pswitch_1
    return-void

    .line 775
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080609

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 795
    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 796
    .local v1, x:I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 799
    .local v2, y:I
    if-gez v1, :cond_2

    .line 801
    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    .line 806
    :cond_0
    :goto_2
    if-gez v2, :cond_3

    .line 808
    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    .line 813
    :cond_1
    :goto_3
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 814
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 778
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080607

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 779
    goto :goto_1

    .line 781
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080608

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 782
    goto :goto_1

    .line 784
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080606

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 785
    goto :goto_1

    .line 802
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_0

    .line 804
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    .line 809
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_1

    .line 810
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "rtStart"
    .parameter "rtEnd"
    .parameter "pressed"

    .prologue
    .line 691
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 692
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 693
    .local v1, rect1:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 695
    .local v2, rect2:Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 696
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 698
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 699
    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 700
    if-nez p4, :cond_0

    .line 701
    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 702
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 704
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 705
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 706
    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 8
    .parameter "selection"
    .parameter "handleType"
    .parameter "update"

    .prologue
    const v7, 0x1080605

    const v6, 0x1080604

    const v5, 0x3e0f5c29

    const/4 v4, 0x1

    const v3, 0x3f5c28f6

    .line 818
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 820
    .local v0, pos:Landroid/graphics/Point;
    if-ne v4, p2, :cond_3

    .line 821
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 822
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 829
    :goto_0
    if-ne v4, p3, :cond_1

    .line 830
    if-ne v4, p2, :cond_5

    .line 831
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 832
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 835
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gez v1, :cond_0

    .line 836
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 840
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 841
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 842
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 866
    :cond_1
    :goto_1
    if-ne v4, p2, :cond_a

    .line 868
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_9

    .line 870
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_8

    .line 871
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 872
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 873
    if-eqz p3, :cond_2

    .line 874
    const v1, 0x108060a

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 916
    :cond_2
    :goto_2
    return-object v0

    .line 825
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 826
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 844
    :cond_4
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 848
    :cond_5
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 849
    const v1, 0x108060a

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    .line 852
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 853
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 857
    :cond_6
    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 858
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 859
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_1

    .line 861
    :cond_7
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 878
    :cond_8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 879
    if-eqz p3, :cond_2

    .line 880
    const v1, 0x108060b

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto :goto_2

    .line 884
    :cond_9
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_2

    .line 885
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 886
    if-eqz p3, :cond_2

    .line 887
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_2

    .line 892
    :cond_a
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_c

    .line 894
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_b

    .line 895
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 896
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 897
    if-eqz p3, :cond_2

    .line 898
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 902
    :cond_b
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 903
    if-eqz p3, :cond_2

    .line 904
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 908
    :cond_c
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_2

    .line 909
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 910
    if-eqz p3, :cond_2

    .line 911
    const v1, 0x108060b

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2
.end method

.method private updateHandleSize(IF)V
    .locals 4
    .parameter "granularity"
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 667
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 668
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 669
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 670
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 684
    :goto_0
    return-void

    .line 672
    :cond_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 673
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 676
    :cond_1
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 677
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 678
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 680
    :cond_2
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 681
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 0
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebTextSelectionControls;->drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 514
    return-void
.end method

.method DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "imagetRect"

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 489
    .local v9, scalecont:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 490
    .local v7, paintSelected:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 491
    const/16 v1, 0x80

    const/16 v2, 0x96

    const/16 v3, 0xcb

    const/16 v4, 0xfb

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 492
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 498
    .local v0, SelectionPath:Landroid/graphics/Path;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v8, v1, v2

    .line 499
    .local v8, right:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v6, v1, v2

    .line 503
    .local v6, bottom:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 505
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 507
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 10
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 522
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 525
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "charRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 543
    .local v24, scalecont:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 544
    .local v11, paintSelected:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 545
    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 546
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v22

    .line 549
    .local v22, scale:F
    const/16 v23, 0x0

    .line 551
    .local v23, scaleLevel:I
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->updateHandleSize(IF)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 555
    .local v15, rectSelection:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 556
    .local v17, rectStart:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 559
    .local v14, rectEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 561
    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 562
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 563
    .local v13, rectContentView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v13}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 565
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 572
    .local v16, rectSelectionView:Landroid/graphics/Rect;
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 573
    .local v9, centerX:I
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 576
    .local v10, centerY:I
    if-nez p6, :cond_1

    .line 577
    const/4 v6, 0x3

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 579
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 580
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 581
    const/4 v6, 0x6

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 583
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 584
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 585
    const/4 v6, 0x4

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 587
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 588
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 589
    const/4 v6, 0x5

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 662
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 663
    return-void

    .line 593
    .restart local v9       #centerX:I
    .restart local v10       #centerY:I
    .restart local v13       #rectContentView:Landroid/graphics/Rect;
    .restart local v16       #rectSelectionView:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/webkit/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 595
    packed-switch p8, :pswitch_data_0

    .line 617
    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    .line 597
    :pswitch_0
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 598
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 599
    goto :goto_1

    .line 602
    :pswitch_1
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 603
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 604
    goto :goto_1

    .line 607
    :pswitch_2
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 608
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 609
    goto :goto_1

    .line 612
    :pswitch_3
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 613
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 614
    goto :goto_1

    .line 624
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 625
    .local v21, rtStart:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 626
    .local v20, rtMiddle:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 630
    .local v19, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 631
    iget v4, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 632
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 637
    if-eqz p3, :cond_4

    .line 638
    new-instance v18, Landroid/graphics/Region;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 647
    .local v18, regionSelection:Landroid/graphics/Region;
    :goto_2
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 648
    .local v12, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 649
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 654
    const/4 v4, 0x1

    move/from16 v0, p9

    if-ne v4, v0, :cond_0

    .line 655
    if-eqz p6, :cond_3

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 658
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 640
    .end local v12           #pathSelection:Landroid/graphics/Path;
    .end local v18           #regionSelection:Landroid/graphics/Region;
    :cond_4
    new-instance v18, Landroid/graphics/Region;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Region;-><init>()V

    .line 641
    .restart local v18       #regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 642
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 643
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .line 595
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 266
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 267
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 268
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 269
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 270
    return-void
.end method

.method public drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 428
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 429
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 430
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    const/high16 v8, 0x3f80

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 432
    const v8, -0xffff01

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 435
    .local v3, paintForHandles:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    const v8, -0xffff01

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    const/high16 v8, 0x4080

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 443
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 444
    .local v4, re:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 447
    const/16 v0, 0x14

    .line 448
    .local v0, delta:I
    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 449
    .local v6, xcenter:I
    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 450
    .local v7, ycenter:I
    const/4 v1, 0x0

    .line 451
    .local v1, handle:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 452
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 455
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 458
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 461
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 465
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 468
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 478
    .local v5, reh:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p3, v5, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 480
    return-void
.end method

.method getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"
    .parameter "handleType"
    .parameter "copyInfo"

    .prologue
    .line 360
    if-nez p4, :cond_1

    .line 361
    const/4 v3, 0x0

    .line 423
    :cond_0
    :goto_0
    return-object v3

    .line 364
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 365
    .local v3, value:Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 366
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 367
    .local v1, deltaY:I
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 369
    .local v2, selectRect:Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-ne v4, p3, :cond_5

    .line 370
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    .line 371
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 372
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_2

    .line 373
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 374
    :cond_2
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 375
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 379
    :cond_3
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 380
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_4

    .line 381
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 382
    :cond_4
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 383
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 387
    :cond_5
    const/4 v4, 0x2

    if-ne v4, p3, :cond_9

    .line 388
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_7

    .line 389
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 390
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_6

    .line 391
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 392
    :cond_6
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 393
    sub-int v4, p2, v1

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 397
    :cond_7
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 398
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_8

    .line 399
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 400
    :cond_8
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 401
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 405
    :cond_9
    const/4 v4, 0x5

    if-eq v4, p3, :cond_a

    const/4 v4, 0x6

    if-ne v4, p3, :cond_c

    .line 406
    :cond_a
    if-lez p1, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_b

    .line 407
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 408
    :cond_b
    if-lez p1, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_0

    .line 409
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 411
    :cond_c
    const/4 v4, 0x3

    if-eq v4, p3, :cond_d

    const/4 v4, 0x4

    if-ne v4, p3, :cond_0

    .line 412
    :cond_d
    if-lez p2, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_e

    .line 413
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 414
    :cond_e
    if-lez p2, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v4, :cond_0

    .line 415
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    .prologue
    .line 273
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3
    .parameter "handleType"

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 185
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 182
    :pswitch_1
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I
    .locals 14
    .parameter "ptX"
    .parameter "ptY"
    .parameter "copyInfo"

    .prologue
    .line 278
    if-nez p3, :cond_0

    .line 280
    const/4 v11, 0x0

    .line 355
    :goto_0
    return v11

    .line 283
    :cond_0
    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 284
    .local v2, controllerWidth:I
    sget v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 285
    .local v1, controllerHeight:I
    const/4 v6, 0x0

    .local v6, selectX:I
    const/4 v7, 0x0

    .line 287
    .local v7, selectY:I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 288
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    .local v8, selectionCtrl:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 291
    .local v5, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    .line 292
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 295
    :cond_1
    if-eqz v5, :cond_7

    .line 297
    div-int/lit8 v9, v2, 0x2

    .line 298
    .local v9, xRadius:I
    div-int/lit8 v10, v1, 0x2

    .line 301
    .local v10, yRadius:I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 302
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 303
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 304
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 305
    const/4 v11, 0x5

    goto :goto_0

    .line 308
    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 309
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 310
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 311
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 312
    const/4 v11, 0x3

    goto :goto_0

    .line 315
    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 316
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 317
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 318
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 319
    const/4 v11, 0x4

    goto :goto_0

    .line 322
    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 323
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 324
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 325
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 326
    const/4 v11, 0x6

    goto/16 :goto_0

    .line 329
    .end local v5           #selectRect:Landroid/graphics/Rect;
    .end local v8           #selectionCtrl:Landroid/graphics/Rect;
    .end local v9           #xRadius:I
    .end local v10           #yRadius:I
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    .local v4, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    .line 334
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 335
    .local v3, pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 338
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 339
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 344
    .end local v3           #pos:Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    .line 345
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 346
    .restart local v3       #pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 349
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 350
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 355
    .end local v3           #pos:Landroid/graphics/Point;
    .end local v4           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 212
    const/4 v4, 0x0

    .local v4, bitmapwidth:I
    const/4 v3, 0x0

    .line 213
    .local v3, bitmapheight:I
    const/4 v5, 0x0

    .local v5, bitmapx:F
    const/4 v6, 0x0

    .line 216
    .local v6, bitmapy:F
    move-object/from16 v12, p2

    .line 218
    .local v12, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->right:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v5

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v6

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v11

    .line 231
    .local v11, picture:Landroid/graphics/Picture;
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v2, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.left :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.top : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    neg-float v13, v5

    neg-float v14, v6

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    invoke-virtual {v11, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 240
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v8, mFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 243
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 246
    :cond_0
    const/4 v9, 0x0

    .line 249
    .local v9, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .end local v9           #out:Ljava/io/FileOutputStream;
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v1, v13, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 255
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v9, :cond_1

    .line 256
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    :cond_1
    :goto_1
    return-void

    .line 257
    :catch_0
    move-exception v7

    .line 258
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v13

    goto :goto_0

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public setHandleState(II)V
    .locals 3
    .parameter "handleType"
    .parameter "state"

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 206
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 202
    :pswitch_1
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

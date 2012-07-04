.class public Lcom/sec/android/glview/TwGLNinePatch;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLNinePatch.java"


# instance fields
.field private mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 68
    if-eqz p6, :cond_0

    .line 69
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 75
    :cond_1
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p5, v2

    if-nez v0, :cond_3

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 79
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 95
    if-eqz p6, :cond_0

    .line 96
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 103
    :cond_1
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p5, v2

    if-nez v0, :cond_3

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 107
    :cond_3
    invoke-virtual {p0, p7}, Lcom/sec/android/glview/TwGLNinePatch;->setAlpha(F)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 45
    if-eqz p4, :cond_0

    .line 46
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 132
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 206
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 208
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    .line 220
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 221
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onAlphaUpdated()V

    .line 180
    :cond_0
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatch;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatch;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 169
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdated()V

    .line 172
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 253
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 191
    :cond_0
    return-void
.end method

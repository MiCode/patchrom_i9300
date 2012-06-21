.class Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;
.super Landroid/view/View;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/GuideRelayoutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Landroid/sec/multiwindow/GuideRelayoutWindow;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 334
    iput-object p1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 339
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    #calls: Landroid/sec/multiwindow/GuideRelayoutWindow;->isMinimumSize()Z
    invoke-static {v0}, Landroid/sec/multiwindow/GuideRelayoutWindow;->access$000(Landroid/sec/multiwindow/GuideRelayoutWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Landroid/sec/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Landroid/sec/multiwindow/GuideRelayoutWindow$DummyView;->this$0:Landroid/sec/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Landroid/sec/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

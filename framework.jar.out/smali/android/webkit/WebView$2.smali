.class Landroid/webkit/WebView$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->viewInvalidateViewRect(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    iput p2, p0, Landroid/webkit/WebView$2;->val$left:I

    iput p3, p0, Landroid/webkit/WebView$2;->val$top:I

    iput p4, p0, Landroid/webkit/WebView$2;->val$right:I

    iput p5, p0, Landroid/webkit/WebView$2;->val$bottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1470
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1471
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "viewInvalidateViewRect run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView;->mDirtyRectInval:Z

    .line 1473
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/webkit/WebView$2;->val$left:I

    iget v2, p0, Landroid/webkit/WebView$2;->val$top:I

    iget v3, p0, Landroid/webkit/WebView$2;->val$right:I

    iget v4, p0, Landroid/webkit/WebView$2;->val$bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1474
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->callInvalidate()V

    .line 1475
    return-void
.end method

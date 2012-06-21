.class Landroid/webkit/WebView$14;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->doShortPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 11421
    iput-object p1, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 11427
    iget-object v0, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;
    invoke-static {v1}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 11428
    iget-object v0, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)V

    .line 11429
    return-void
.end method

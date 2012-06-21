.class Landroid/webkit/WebView$12;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V
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
    .line 6509
    iput-object p1, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6511
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsDoubleTapping:Z

    if-nez v0, :cond_0

    .line 6512
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNoFastDraw(Z)V

    .line 6513
    :cond_0
    return-void
.end method

.class Landroid/webkit/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->setNoFastDraw(Z)V
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
    .line 1433
    iput-object p1, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1435
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1436
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "webview update blocking timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    .line 1439
    return-void
.end method

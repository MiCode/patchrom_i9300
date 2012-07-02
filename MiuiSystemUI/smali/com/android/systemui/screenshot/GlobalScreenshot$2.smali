.class Lcom/android/systemui/screenshot/GlobalScreenshot$2;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForPalmSweep(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$frame:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$frame:Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 610
    const-string v0, "ScreenCapture"

    const-string v1, "Capture effect finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$008()I

    .line 612
    invoke-static {}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    #calls: Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$frame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$frame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$302(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView;

    .line 619
    :cond_0
    return-void
.end method

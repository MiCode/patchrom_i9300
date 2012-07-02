.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$extraRingerMode:I

.field final synthetic val$mDirection:I


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$extraRingerMode:I

    iput p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$mDirection:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 625
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$extraRingerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/hardware/CameraSound;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/hardware/CameraSound;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/CameraSound;->playSound(I)V

    .line 632
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$mDirection:I

    if-ne v0, v3, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->show(Landroid/graphics/Bitmap;I)V

    .line 637
    :goto_1
    return-void

    .line 628
    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$extraRingerMode:I

    if-ne v0, v3, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/screenshot/CaptureEffectView;->show(Landroid/graphics/Bitmap;I)V

    goto :goto_1
.end method

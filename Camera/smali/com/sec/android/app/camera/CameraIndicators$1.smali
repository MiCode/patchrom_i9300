.class Lcom/sec/android/app/camera/CameraIndicators$1;
.super Landroid/view/OrientationEventListener;
.source "CameraIndicators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraIndicators;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraIndicators;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 237
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    #calls: Lcom/sec/android/app/camera/CameraIndicators;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CameraIndicators;->access$000(Lcom/sec/android/app/camera/CameraIndicators;I)I

    move-result v0

    .line 243
    .local v0, degree:I
    add-int/lit8 v0, v0, 0x5a

    .line 246
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 247
    add-int/lit16 v0, v0, -0x168

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    iget v1, v1, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraIndicators;->access$100(Lcom/sec/android/app/camera/CameraIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraIndicators;->access$100(Lcom/sec/android/app/camera/CameraIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraIndicators;->access$100(Lcom/sec/android/app/camera/CameraIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    move-result-object v3

    #calls: Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V
    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CameraIndicators;->access$200(Lcom/sec/android/app/camera/CameraIndicators;IILandroid/view/View;)V

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraIndicators;

    iput v0, v1, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

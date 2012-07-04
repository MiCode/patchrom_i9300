.class Lcom/sec/android/app/camera/AbstractCameraActivity$31;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$31;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$31;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$31;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$102(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1883
    return-void
.end method

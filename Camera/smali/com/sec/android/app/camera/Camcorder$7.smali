.class Lcom/sec/android/app/camera/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->startPostRecordingSnapAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2876
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 2879
    packed-switch p1, :pswitch_data_0

    .line 2890
    :cond_0
    :goto_0
    return-void

    .line 2881
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1900(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1900(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2885
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1900(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$1902(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;

    goto :goto_0

    .line 2879
    nop

    :pswitch_data_0
    .packed-switch 0xffff
        :pswitch_0
    .end packed-switch
.end method
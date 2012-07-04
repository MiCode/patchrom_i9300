.class Lcom/sec/android/glview/TwGLView$3;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLView;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;->onAnimationStart()Z

    .line 1966
    return-void
.end method

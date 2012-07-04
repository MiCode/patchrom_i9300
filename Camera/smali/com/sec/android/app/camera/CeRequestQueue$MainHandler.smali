.class Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
.super Landroid/os/Handler;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CeRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CeRequestQueue;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CeRequestQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CeRequestQueue;Lcom/sec/android/app/camera/CeRequestQueue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;-><init>(Lcom/sec/android/app/camera/CeRequestQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x1

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->removeMessages(I)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLandscapeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$100(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isOnResumePending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$100(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #calls: Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$200(Lcom/sec/android/app/camera/CeRequestQueue;)V

    goto :goto_0
.end method

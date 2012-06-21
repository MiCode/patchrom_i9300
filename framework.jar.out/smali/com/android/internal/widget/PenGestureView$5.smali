.class Lcom/android/internal/widget/PenGestureView$5;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/internal/widget/PenGestureView;->access$902(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    :cond_0
    const-string v1, "PenGesture"

    const-string v2, "Double tapped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z
    invoke-static {v1}, Lcom/android/internal/widget/PenGestureView;->access$500(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$1000(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/PenGestureView;->access$1000(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

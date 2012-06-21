.class Lcom/android/internal/widget/PenGestureView$2;
.super Landroid/content/BroadcastReceiver;
.source "PenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PenGestureView;-><init>(Landroid/content/Context;)V
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
    .line 102
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$2;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$2;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/PenGestureView$2;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v2, v2, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :cond_1
    return-void
.end method

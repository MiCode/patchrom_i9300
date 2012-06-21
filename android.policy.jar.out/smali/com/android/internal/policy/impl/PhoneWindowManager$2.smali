.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Lcom/android/internal/view/BaseInputHandler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 483
    .local v0, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x4002

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenGestureView:Lcom/android/internal/widget/PenGestureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenGestureView:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    .line 487
    const/4 v0, 0x1

    .line 492
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 497
    return-void

    .line 490
    :cond_1
    :try_start_2
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenGesture, isMtpRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 495
    :catchall_1
    move-exception v1

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v1
.end method

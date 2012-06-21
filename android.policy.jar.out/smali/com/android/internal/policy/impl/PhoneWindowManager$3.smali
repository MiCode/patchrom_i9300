.class Lcom/android/internal/policy/impl/PhoneWindowManager$3;
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
    .line 502
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 6
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, handled:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 507
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .line 509
    .local v2, isStatusBarExpanding:Z
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 510
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$3;Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 526
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->addPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 528
    :cond_1
    const/4 v1, 0x1

    .line 529
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 534
    return-void

    .line 506
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #isStatusBarExpanding:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 529
    .restart local v2       #isStatusBarExpanding:Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    :catchall_1
    move-exception v3

    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v3
.end method

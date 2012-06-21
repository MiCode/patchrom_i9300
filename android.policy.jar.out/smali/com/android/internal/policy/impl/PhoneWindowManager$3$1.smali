.class Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;
.super Lcom/android/internal/policy/impl/PointerInterceptView;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$3;->handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$3;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PointerInterceptView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStatusBarCbBehavior(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    if-eq v0, p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    :cond_0
    return-void
.end method

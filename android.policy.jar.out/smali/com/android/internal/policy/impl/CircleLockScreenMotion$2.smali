.class Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here comes a motion event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCK_EXECUTE_CAMERA_L"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->access$400(Lcom/android/internal/policy/impl/CircleLockScreenMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion$2$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreenMotion$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/CircleUnlockView$2;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleUnlockView;->createArrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 277
    return-void
.end method

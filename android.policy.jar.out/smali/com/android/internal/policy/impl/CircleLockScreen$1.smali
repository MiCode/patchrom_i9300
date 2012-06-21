.class Lcom/android/internal/policy/impl/CircleLockScreen$1;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->stopAutoScroll()V

    .line 484
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 516
    :cond_3
    :goto_0
    return-void

    .line 494
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortcutWidget"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040626

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MissedEvent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setStartLocation(I)V

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040625

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    goto :goto_0

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    goto/16 :goto_0
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 522
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->startAutoScroll()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 536
    return-void
.end method

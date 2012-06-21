.class Lcom/android/internal/policy/impl/CircleLockScreen$4;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 701
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 703
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return v2

    .line 705
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2100(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104066d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108041f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 719
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$4;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

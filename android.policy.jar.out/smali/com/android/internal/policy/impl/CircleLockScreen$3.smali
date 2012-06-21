.class Lcom/android/internal/policy/impl/CircleLockScreen$3;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;


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
    .line 626
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1900(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

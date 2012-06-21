.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;
.super Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 8
    .parameter "success"

    .prologue
    const/4 v7, 0x0

    .line 392
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 395
    :cond_0
    if-eqz p1, :cond_2

    .line 397
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 399
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900d5

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const v6, 0x10203f2

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 402
    .local v1, layout:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 403
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x104066b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 405
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 406
    .local v3, toast:Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 407
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 408
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 409
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 413
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 414
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 424
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$702(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I

    .line 417
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x10400d5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v5, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1202(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x104037f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 422
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    goto :goto_0
.end method

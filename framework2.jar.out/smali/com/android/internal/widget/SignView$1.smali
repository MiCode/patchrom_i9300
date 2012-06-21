.class Lcom/android/internal/widget/SignView$1;
.super Ljava/lang/Object;
.source "SignView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SignView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SignView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SignView;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 712
    const/4 v0, -0x1

    .line 714
    .local v0, errCode:I
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mStatus:I
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$000(Lcom/android/internal/widget/SignView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->doAddSign()V

    .line 724
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/internal/widget/SignView;->mTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/SignView;->access$202(Lcom/android/internal/widget/SignView;J)J

    .line 725
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #setter for: Lcom/android/internal/widget/SignView;->mFirstDraw:Z
    invoke-static {v1, v4}, Lcom/android/internal/widget/SignView;->access$302(Lcom/android/internal/widget/SignView;Z)Z

    .line 726
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/widget/SignView;->mCurrentStroke:I
    invoke-static {v1, v2}, Lcom/android/internal/widget/SignView;->access$402(Lcom/android/internal/widget/SignView;I)I

    .line 728
    const-string v1, "SignView"

    const-string v2, "signUpdateTimeTask is finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mStatus:I
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$000(Lcom/android/internal/widget/SignView;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->doVerifySign()V

    .line 719
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureDetected()V

    goto :goto_0
.end method

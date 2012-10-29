.class Lcom/android/OriginalSettings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 1205
    .local v0, disableAtLimit:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1208
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmLimit"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 1212
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1302(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1217
    :cond_1
    :goto_1
    return-void

    .line 1204
    .end local v0           #disableAtLimit:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1215
    .restart local v0       #disableAtLimit:Z
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1800(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    goto :goto_1
.end method

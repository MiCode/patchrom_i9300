.class Lcom/android/OriginalSettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1149
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 1152
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1100(Lcom/android/OriginalSettings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1154
    :cond_0
    move v1, p2

    .line 1155
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1200(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1157
    if-eqz v1, :cond_6

    .line 1158
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1159
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirmDataEnable"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1160
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1161
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 1163
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1302(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1187
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1500(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1165
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1166
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirmDataEnable"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1167
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1168
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1302(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_1

    .line 1173
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1400(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_1

    .line 1178
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirmDataDisable"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1179
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1180
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 1182
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$6;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1302(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_1
.end method

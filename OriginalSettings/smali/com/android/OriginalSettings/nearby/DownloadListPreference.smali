.class public Lcom/android/OriginalSettings/nearby/DownloadListPreference;
.super Landroid/preference/ListPreference;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isExtarnalMounted:Z

.field private mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v2, 0x7f0d0932

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    .line 35
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 40
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    .line 41
    const-string v0, "allshare_download_to"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setTitle(I)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setDialogTitle(I)V

    .line 44
    const v0, 0x7f0d0935

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setPositiveButtonText(I)V

    .line 45
    const v0, 0x7f0d0936

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setNegativeButtonText(I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 51
    const-string v0, "AllshareSetting"

    const-string v1, "DownloadListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    :cond_0
    return-void
.end method

.method public setIsExternalMounted(Z)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 100
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadListPreference: Change dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadListPreference: Change mDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 61
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadListPreference: showDialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;-><init>(Lcom/android/OriginalSettings/nearby/DownloadListPreference;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mAdapter:Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 74
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 76
    iget-boolean v2, p0, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v2, :cond_1

    .line 78
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 81
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 91
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v1       #listView:Landroid/widget/ListView;
    :cond_2
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: listView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_3
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: dialog is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

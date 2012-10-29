.class public Lcom/android/OriginalSettings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final TAGClass:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 18
    const-string v0, "AllshareSetting"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "RejectListPreference: "

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->TAGClass:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    .line 23
    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 29
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 30
    const v0, 0x7f0d093d

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 31
    const v0, 0x7f0d0936

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setNegativeButtonText(I)V

    .line 33
    new-instance v0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    .line 34
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->loadPreference()V

    .line 35
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 40
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 42
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 47
    const-string v1, "AllshareSetting"

    const-string v2, "RejectListPreference: showDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->loadPreference()V

    .line 56
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->getRejectSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f0d0948

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f0d0946

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0935

    new-instance v3, Lcom/android/OriginalSettings/nearby/RejectListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/RejectListPreference$1;-><init>(Lcom/android/OriginalSettings/nearby/RejectListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->getRejectEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/OriginalSettings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->getRejectEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 74
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: updateDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: refresh popup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/OriginalSettings/wifi/SelectApDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "SelectApDialog.java"


# instance fields
.field mSelectAP:Lcom/android/OriginalSettings/wifi/SelectAP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    const-string v0, "SelectApDialog"

    const-string v1, "SelectApDialog, RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectApDialog;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectApDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/SelectAP;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectApDialog;->mSelectAP:Lcom/android/OriginalSettings/wifi/SelectAP;

    .line 47
    const v0, 0x7f0d0a5f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectApDialog;->setTitle(I)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 61
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/SelectApDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 62
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 64
    :cond_0
    return-void
.end method

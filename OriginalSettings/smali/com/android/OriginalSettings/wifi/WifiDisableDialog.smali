.class public Lcom/android/OriginalSettings/wifi/WifiDisableDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiDisableDialog.java"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field notificationManager:Landroid/app/NotificationManager;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->wm:Landroid/net/wifi/WifiManager;

    .line 51
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->notificationManager:Landroid/app/NotificationManager;

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0a6e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0a6d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiDisableDialog$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiDisableDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiDisableDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiDisableDialog$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiDisableDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiDisableDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDisableDialog;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    return-void
.end method

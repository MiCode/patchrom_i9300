.class Lcom/android/OriginalSettings/wifi/DeleteConnection$1;
.super Ljava/lang/Object;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/DeleteConnection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/DeleteConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d069a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0a6c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$2;-><init>(Lcom/android/OriginalSettings/wifi/DeleteConnection$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;-><init>(Lcom/android/OriginalSettings/wifi/DeleteConnection$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DeleteConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    :cond_0
    return-void
.end method

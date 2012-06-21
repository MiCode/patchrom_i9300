.class Landroid/webkit/WebView$ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$ColorPickerDialog;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$ColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 7143
    iput-object p1, p0, Landroid/webkit/WebView$ColorPickerDialog$2;->this$1:Landroid/webkit/WebView$ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 7145
    iget-object v0, p0, Landroid/webkit/WebView$ColorPickerDialog$2;->this$1:Landroid/webkit/WebView$ColorPickerDialog;

    iget-object v0, v0, Landroid/webkit/WebView$ColorPickerDialog;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebView;->updateColor(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;I)V

    .line 7146
    return-void
.end method

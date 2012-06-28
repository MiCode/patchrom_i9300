.class Lcom/android/OriginalSettings/wifi/AddConnection$1;
.super Ljava/lang/Object;
.source "AddConnection.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/AddConnection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

.field final synthetic val$add_conn_name:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/AddConnection;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$1;->val$add_conn_name:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/wifi/AddConnection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v0, inputmanager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$1;->val$add_conn_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    const/4 v1, 0x1

    .line 127
    .end local v0           #inputmanager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.class Lcom/android/OriginalSettings/wifi/AddConnection$2;
.super Ljava/lang/Object;
.source "AddConnection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 131
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->val$add_conn_name:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f0d0a62

    .line 133
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->val$add_conn_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$002(Lcom/android/OriginalSettings/wifi/AddConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$000(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$100(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$200(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$300(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, returnIntent:Landroid/content/Intent;
    const-string v1, "PROFILE"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->profile_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$000(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "SSID"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$100(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "BSSID"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$300(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "CID"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_cid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$200(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "ADDRESS"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    #getter for: Lcom/android/OriginalSettings/wifi/AddConnection;->ap_address:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/AddConnection;->access$400(Lcom/android/OriginalSettings/wifi/AddConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/AddConnection;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AddConnection;->finish()V

    .line 162
    .end local v0           #returnIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AddConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/OriginalSettings/wifi/AddConnection$2$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/AddConnection$2$2;-><init>(Lcom/android/OriginalSettings/wifi/AddConnection$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/wifi/AddConnection$2$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/AddConnection$2$1;-><init>(Lcom/android/OriginalSettings/wifi/AddConnection$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AddConnection$2;->this$0:Lcom/android/OriginalSettings/wifi/AddConnection;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AddConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

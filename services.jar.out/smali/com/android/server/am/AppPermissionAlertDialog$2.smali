.class Lcom/android/server/am/AppPermissionAlertDialog$2;
.super Landroid/os/Handler;
.source "AppPermissionAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionAlertDialog;->access$700(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$600(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionAlertDialog;->access$700(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$800(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionAlertDialog;->access$700(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$800(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionAlertDialog;->dismiss()V

    goto :goto_0

    .line 148
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$2;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #calls: Lcom/android/server/am/AppPermissionAlertDialog;->setTitleAndMessageByApp()V
    invoke-static {v0}, Lcom/android/server/am/AppPermissionAlertDialog;->access$900(Lcom/android/server/am/AppPermissionAlertDialog;)V

    goto :goto_0
.end method

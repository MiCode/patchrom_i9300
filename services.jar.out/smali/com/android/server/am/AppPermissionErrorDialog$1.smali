.class Lcom/android/server/am/AppPermissionErrorDialog$1;
.super Ljava/lang/Object;
.source "AppPermissionErrorDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    invoke-static {p2}, Landroid/app/ICMDialogMessageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$002(Lcom/android/server/am/AppPermissionErrorDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 61
    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionErrorDialog;->access$000(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$000(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/ICMDialogMessageManager;->getPermissionErrorDialogTitle()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionErrorDialog;->mTitleByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$102(Lcom/android/server/am/AppPermissionErrorDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$000(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mAppName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionErrorDialog;->access$300(Lcom/android/server/am/AppPermissionErrorDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mPermission:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPermissionErrorDialog;->access$400(Lcom/android/server/am/AppPermissionErrorDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/ICMDialogMessageManager;->getPermissionErrorDialogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionErrorDialog;->mMessageByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$202(Lcom/android/server/am/AppPermissionErrorDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionErrorDialog;->access$500(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionErrorDialog;->access$500(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$1;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/AppPermissionErrorDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPermissionErrorDialog;->access$002(Lcom/android/server/am/AppPermissionErrorDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 75
    return-void
.end method

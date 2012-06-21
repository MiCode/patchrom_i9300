.class Landroid/sec/mwdialog/MWAlertDialog$3;
.super Ljava/lang/Object;
.source "MWAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/mwdialog/MWAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/mwdialog/MWAlertDialog;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MWAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 97
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$000(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/mwdialog/MwAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/sec/mwdialog/MwAdapter;->getItem(I)Landroid/sec/mwdialog/MwAppInfo;

    move-result-object v0

    .line 98
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$100(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$200(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$300(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/sec/mwdialog/MWAlertDialog;->access$200(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 101
    .local v2, re:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$300(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/sec/mwdialog/MWAlertDialog;->access$200(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/sec/multiwindow/IMultiWindowManager;->startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    .line 113
    .end local v2           #re:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Landroid/sec/mwdialog/MWAlertDialog$3;->this$0:Landroid/sec/mwdialog/MWAlertDialog;

    #getter for: Landroid/sec/mwdialog/MWAlertDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWAlertDialog;->access$300(Landroid/sec/mwdialog/MWAlertDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    .line 110
    .local v1, iMw:Landroid/sec/multiwindow/IMultiWindow;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/multiwindow/IMultiWindow;->start()Z

    goto :goto_0
.end method

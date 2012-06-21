.class Landroid/sec/mwdialog/MWDialog$1;
.super Ljava/lang/Object;
.source "MWDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/mwdialog/MWDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/mwdialog/MWDialog;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MWDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    .line 104
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$000(Landroid/sec/mwdialog/MWDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/sec/mwdialog/MWDialog;->access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/sec/mwdialog/MWDialog;->access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 109
    .local v2, re:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_1

    .line 110
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/sec/mwdialog/MWDialog;->access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/sec/multiwindow/IMultiWindowManager;->startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    .line 120
    .end local v2           #re:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    invoke-virtual {v3}, Landroid/sec/mwdialog/MWDialog;->dismiss()V

    .line 121
    return-void

    .line 112
    .restart local v2       #re:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Landroid/sec/mwdialog/MWDialog;->access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/sec/multiwindow/IMultiWindowManager;->startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 116
    .end local v2           #re:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog$1;->this$0:Landroid/sec/mwdialog/MWDialog;

    #getter for: Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v3}, Landroid/sec/mwdialog/MWDialog;->access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    .line 117
    .local v1, iMw:Landroid/sec/multiwindow/IMultiWindow;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/multiwindow/IMultiWindow;->start()Z

    goto :goto_0
.end method

.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11022
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11022
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 11141
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11143
    const/4 v0, 0x1

    .line 11145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x6

    const/4 v4, 0x0

    .line 11026
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 11029
    .local v3, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 11038
    .local v0, allowText:Z
    const/4 v2, 0x0

    .line 11039
    .local v2, selectAllIconId:I
    if-nez v0, :cond_0

    .line 11041
    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 11046
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11047
    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 11052
    :cond_1
    const v6, 0x102001f

    const v7, 0x104000d

    invoke-interface {p2, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x61

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11058
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v6}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11059
    const v6, 0x1020020

    const v7, 0x1040003

    invoke-interface {p2, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x78

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11067
    :cond_2
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v6}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11068
    const v6, 0x1020021

    const v7, 0x1040001

    invoke-interface {p2, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x63

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11076
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v6}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11077
    const v6, 0x1020022

    const v7, 0x104000b

    invoke-interface {p2, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x76

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11085
    :cond_4
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboardEx"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 11089
    .local v1, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Editable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    invoke-static {v6}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/text/method/KeyListener;

    move-result-object v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-lez v6, :cond_5

    .line 11090
    const v6, 0x1020246

    const v7, 0x10405cd

    invoke-interface {p2, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x70

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11100
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v6, p2}, Landroid/widget/TextView;->access$5302(Landroid/widget/TextView;Landroid/view/Menu;)Landroid/view/Menu;

    .line 11101
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    #calls: Landroid/widget/TextView;->updateShowAsAction(Landroid/content/res/Configuration;)V
    invoke-static {v6, v7}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;Landroid/content/res/Configuration;)V

    .line 11105
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 11107
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v6}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 11108
    iget-object v6, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v6}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 11127
    :cond_6
    :goto_0
    return v4

    .line 11114
    :cond_7
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 11115
    :cond_8
    iget-object v4, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/MiuiCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/MiuiCursorController;->show()V

    .line 11118
    iget-object v4, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/TextView$SelectionActionModeCallback$1;

    invoke-direct {v6, p0}, Landroid/widget/TextView$SelectionActionModeCallback$1;-><init>(Landroid/widget/TextView$SelectionActionModeCallback;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v4, v5

    .line 11125
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 11150
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11151
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 11153
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11155
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/MiuiCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/widget/MiuiCursorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11156
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/MiuiCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/widget/MiuiCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController;->hide()V

    .line 11159
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Landroid/widget/TextView;->access$5802(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 11161
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v0, v2}, Landroid/widget/TextView;->access$5302(Landroid/widget/TextView;Landroid/view/Menu;)Landroid/view/Menu;

    .line 11163
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 11133
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11134
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 11136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

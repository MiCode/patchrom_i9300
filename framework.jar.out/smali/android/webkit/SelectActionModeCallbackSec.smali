.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 55
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 60
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 61
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 153
    :goto_0
    return v3

    .line 119
    :sswitch_0
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelectionSec()Z

    .line 120
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 121
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 153
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 128
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 132
    .end local v2           #selection:Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAllSec()Z

    goto :goto_1

    .line 136
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, sel:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->clearSelection()V

    .line 138
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 139
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v1, v3}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 143
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v3, "query"

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    .line 146
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 147
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x102043e -> :sswitch_2
        0x102043f -> :sswitch_1
        0x1020440 -> :sswitch_3
        0x1020441 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x1140005

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    const v2, 0x1020440

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 73
    .local v1, findOnPageItem:Landroid/view/MenuItem;
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getFindOptionEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 83
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x4

    if-eq v2, v6, :cond_0

    .line 89
    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 90
    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 91
    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 92
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    invoke-interface {p2, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 96
    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_1

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x4

    if-eq v2, v6, :cond_1

    .line 98
    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 99
    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 101
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    invoke-interface {p2, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 106
    :cond_1
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 107
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSelection()V

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 165
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method protected setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    .line 46
    return-void
.end method

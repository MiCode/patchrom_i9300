.class public Landroid/sec/mwdialog/MwAdapter;
.super Landroid/widget/BaseAdapter;
.source "MwAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutId:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/sec/mwdialog/MwAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mwManager:Landroid/sec/multiwindow/IMultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/sec/multiwindow/IMultiWindowManager;I)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "manager"
    .parameter "layoutid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/sec/mwdialog/MwAppInfo;",
            ">;",
            "Landroid/sec/multiwindow/IMultiWindowManager;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/sec/mwdialog/MwAppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/sec/mwdialog/MwAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    .line 25
    iput-object p3, p0, Landroid/sec/mwdialog/MwAdapter;->mwManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 26
    iput p4, p0, Landroid/sec/mwdialog/MwAdapter;->mLayoutId:I

    .line 27
    return-void
.end method

.method private declared-synchronized removeItem(Landroid/sec/mwdialog/MwAppInfo;)V
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 78
    .local v0, result:Z
    monitor-exit p0

    return-void

    .line 77
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addItem(Landroid/sec/mwdialog/MwAppInfo;)Z
    .locals 1
    .parameter "appInfo"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/sec/mwdialog/MwAppInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Landroid/sec/mwdialog/MwAdapter;->getItem(I)Landroid/sec/mwdialog/MwAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/sec/mwdialog/MwAdapter;->getItem(I)Landroid/sec/mwdialog/MwAppInfo;

    move-result-object v0

    .line 48
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    move-object v3, p2

    .line 49
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 50
    iget-object v4, p0, Landroid/sec/mwdialog/MwAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/sec/mwdialog/MwAdapter;->mLayoutId:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 52
    :cond_0
    const v4, 0x1020385

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x1020384

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .local v1, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getAppTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-object v3
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 66
    monitor-enter p0

    const/4 v1, 0x0

    .line 67
    .local v1, appInfoDel:Landroid/sec/mwdialog/MwAppInfo;
    :try_start_0
    iget-object v3, p0, Landroid/sec/mwdialog/MwAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    .line 68
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    move-object v1, v0

    .line 73
    .end local v0           #appInfo:Landroid/sec/mwdialog/MwAppInfo;
    :cond_1
    invoke-direct {p0, v1}, Landroid/sec/mwdialog/MwAdapter;->removeItem(Landroid/sec/mwdialog/MwAppInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 66
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

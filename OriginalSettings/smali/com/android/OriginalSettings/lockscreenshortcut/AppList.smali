.class public Lcom/android/OriginalSettings/lockscreenshortcut/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AlphaComparator;,
        Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;,
        Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSetedShortcutList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 53
    iput v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 65
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "shortcut_app_list"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 66
    .local v14, shortcut_app_list:Ljava/lang/String;
    const-string v0, "num_of_shortcut"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 67
    const-string v0, "clicked_view_index"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 69
    iget v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 73
    :cond_0
    const/4 v9, 0x0

    .line 74
    .local v9, index:I
    const/4 v13, 0x0

    .line 76
    .local v13, old_index:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v8, v0, :cond_1

    .line 77
    move v13, v9

    .line 78
    const/16 v0, 0x3b

    invoke-virtual {v14, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    invoke-virtual {v14, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 76
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, LauncherIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AlphaComparator;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AlphaComparator;-><init>(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)V

    .line 90
    .local v7, alphaComparator:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AlphaComparator;
    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    const/4 v8, 0x0

    :goto_1
    iget v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v8, v0, :cond_4

    .line 93
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    aget-object v1, v0, v8

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v5, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 92
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    .end local v11           #j:I
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 101
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 102
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 105
    :cond_5
    new-instance v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

    const v3, 0x7f040061

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;-><init>(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 108
    .local v12, list_view:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, result_intent:Landroid/content/Intent;
    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v2, "selected_app"

    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->finish()V

    .line 120
    return-void
.end method

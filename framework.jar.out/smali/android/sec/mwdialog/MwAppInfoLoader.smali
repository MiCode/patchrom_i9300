.class public Landroid/sec/mwdialog/MwAppInfoLoader;
.super Ljava/lang/Object;
.source "MwAppInfoLoader.java"


# static fields
.field private static mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/sec/mwdialog/MwAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sList:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/mwdialog/MwAppInfoLoader;->sList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Landroid/sec/mwdialog/MwAppInfoLoader;->initHashMap_ICS()V

    .line 44
    return-void
.end method

.method public static declared-synchronized getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/sec/mwdialog/MwAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Landroid/sec/mwdialog/MwAppInfoLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/sec/mwdialog/MwAppInfoLoader;->mList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initHashMap_ICS()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "com.sec.android.app.videoplayer.activity.VPMainTab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    const-string v1, "com.sec.android.app.snotebook"

    const-string v2, "com.infraware.filemanager.FmFileTreeListActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    const-string v1, "com.infraware.PolarisOfficeStdForTablet"

    const-string v2, "com.infraware.splash.SplashActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Landroid/sec/mwdialog/MwAppInfoLoader;->makeList()V

    .line 61
    return-void
.end method

.method private makeList()V
    .locals 7

    .prologue
    .line 68
    iget-object v5, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 70
    .local v3, packManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, launchableList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Landroid/sec/mwdialog/MwAppInfoLoader;->mList:Ljava/util/List;

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 77
    .local v4, resolve:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Landroid/sec/mwdialog/MwAppInfoLoader;->mMap:Ljava/util/Map;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-direct {p0, v4, v3}, Landroid/sec/mwdialog/MwAppInfoLoader;->setAppInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    goto :goto_0

    .line 81
    .end local v4           #resolve:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-direct {p0}, Landroid/sec/mwdialog/MwAppInfoLoader;->setSortList()V

    .line 82
    return-void
.end method

.method private setAppInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 7
    .parameter "resolve"
    .parameter "packManager"

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 97
    .local v3, title:Ljava/lang/CharSequence;
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 99
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 100
    .local v0, className:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 102
    sget-object v4, Landroid/sec/mwdialog/MwAppInfoLoader;->mList:Ljava/util/List;

    new-instance v5, Landroid/sec/mwdialog/MwAppInfo;

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v3, v1, v6}, Landroid/sec/mwdialog/MwAppInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method private setSortList()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/sec/mwdialog/MwAppInfoLoader$1;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MwAppInfoLoader$1;-><init>(Landroid/sec/mwdialog/MwAppInfoLoader;)V

    .line 92
    .local v0, myComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/sec/mwdialog/MwAppInfo;>;"
    sget-object v1, Landroid/sec/mwdialog/MwAppInfoLoader;->mList:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    return-void
.end method

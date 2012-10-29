.class public Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/lockscreenshortcut/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    .line 132
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 141
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_2

    .line 142
    const v2, 0x7f040061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;

    invoke-direct {v0}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;-><init>()V

    .line 145
    .local v0, holder:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;
    const v2, 0x7f0a012f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;->text:Landroid/widget/TextView;

    .line 146
    const v2, 0x7f0a0006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->access$000(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v3, v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->access$000(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v3, v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/AppList;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_1
    return-object p2

    .line 151
    .end local v0           #holder:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;

    .restart local v0       #holder:Lcom/android/OriginalSettings/lockscreenshortcut/AppList$ViewHolder;
    goto :goto_0
.end method

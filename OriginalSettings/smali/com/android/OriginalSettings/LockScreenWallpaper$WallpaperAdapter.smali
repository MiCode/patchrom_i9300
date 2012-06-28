.class public Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/LockScreenWallpaper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$000(Lcom/android/OriginalSettings/LockScreenWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    .line 155
    if-nez p2, :cond_4

    .line 156
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900a7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 160
    new-instance v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 161
    .local v1, holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 162
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 163
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 166
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 171
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    :goto_0
    move v0, p1

    .line 180
    .local v0, count:I
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$000(Lcom/android/OriginalSettings/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 182
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    :cond_1
    if-nez v0, :cond_2

    .line 186
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$400(Lcom/android/OriginalSettings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 191
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 181
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 175
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_0

    .line 195
    .restart local v0       #count:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 196
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 198
    :cond_6
    if-nez v0, :cond_7

    .line 199
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$400(Lcom/android/OriginalSettings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 204
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 195
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 209
    :cond_9
    return-object p2
.end method

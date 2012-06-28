.class Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
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
.field final synthetic this$0:Lcom/android/OriginalSettings/HomeSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/HomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    .line 162
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 163
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 167
    const-string v4, "HomeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home application count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    #getter for: Lcom/android/OriginalSettings/HomeSettings;->mHomeApps:Ljava/util/List;
    invoke-static {v6}, Lcom/android/OriginalSettings/HomeSettings;->access$100(Lcom/android/OriginalSettings/HomeSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez p2, :cond_0

    .line 170
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f070024

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    #getter for: Lcom/android/OriginalSettings/HomeSettings;->mHomeApps:Ljava/util/List;
    invoke-static {v4}, Lcom/android/OriginalSettings/HomeSettings;->access$100(Lcom/android/OriginalSettings/HomeSettings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 175
    .local v2, info:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 176
    const v4, 0x7f0a030f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    .local v1, icon:Landroid/widget/ImageView;
    const v4, 0x7f0a0310

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    .local v3, label:Landroid/widget/TextView;
    const v4, 0x7f0a0311

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 180
    .local v0, button:Landroid/widget/RadioButton;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    #getter for: Lcom/android/OriginalSettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/HomeSettings;->access$200(Lcom/android/OriginalSettings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    #getter for: Lcom/android/OriginalSettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/HomeSettings;->access$200(Lcom/android/OriginalSettings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/OriginalSettings/HomeSettings;->isPreffered(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/HomeSettings;->access$300(Lcom/android/OriginalSettings/HomeSettings;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    iget-object v4, p0, Lcom/android/OriginalSettings/HomeSettings$HomeAdapter;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    #setter for: Lcom/android/OriginalSettings/HomeSettings;->mCurrentHome:I
    invoke-static {v4, p1}, Lcom/android/OriginalSettings/HomeSettings;->access$402(Lcom/android/OriginalSettings/HomeSettings;I)I

    .line 189
    .end local v0           #button:Landroid/widget/RadioButton;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v3           #label:Landroid/widget/TextView;
    :cond_1
    return-object p2
.end method

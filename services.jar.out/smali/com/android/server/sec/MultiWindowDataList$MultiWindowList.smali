.class Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
.super Ljava/util/ArrayList;
.source "MultiWindowDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/sec/MultiWindowDataItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25edL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/MultiWindowDataList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/sec/MultiWindowDataItem;)Z
    .locals 6
    .parameter "dataItem"

    .prologue
    .line 145
    iget-object v4, p1, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 147
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p1, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 149
    invoke-super {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    .local v0, Result:Z
    if-eqz v0, :cond_2

    .line 158
    #calls: Lcom/android/server/sec/MultiWindowDataList;->SaveToSetting()V
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->access$100()V

    .line 159
    :cond_2
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, Lcom/android/server/sec/MultiWindowDataItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->add(Lcom/android/server/sec/MultiWindowDataItem;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 200
    .local v0, Result:Z
    if-eqz v0, :cond_0

    .line 201
    #calls: Lcom/android/server/sec/MultiWindowDataList;->SaveToSetting()V
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->access$100()V

    .line 202
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 194
    #calls: Lcom/android/server/sec/MultiWindowDataList;->SaveToSetting()V
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->access$100()V

    .line 195
    return-void
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "src"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 172
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 178
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_1
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->access$200()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 179
    .restart local v2       #item:Lcom/android/server/sec/MultiWindowDataItem;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.infraware.common.helper.EvPreOpenHelperActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.browser.SecAddBookmarkPage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.browser.FolderListPage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    :cond_4
    const/4 v0, 0x0

    .line 188
    :cond_5
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "src"

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, Result:Z
    move-object v1, p1

    .line 124
    check-cast v1, Landroid/content/ComponentName;

    .line 125
    .local v1, del:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    .line 127
    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v5, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-super {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    .line 133
    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_1
    if-eqz v0, :cond_2

    .line 134
    #calls: Lcom/android/server/sec/MultiWindowDataList;->SaveToSetting()V
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->access$100()V

    .line 135
    :cond_2
    return v0
.end method

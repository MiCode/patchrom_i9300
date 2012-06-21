.class Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;
.super Ljava/util/HashMap;
.source "MultiWindowDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowTypeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/android/server/sec/MultiWindowDataItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25eeL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/MultiWindowDataList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    new-instance v0, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;-><init>(Lcom/android/server/sec/MultiWindowDataList$1;)V

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    move-object v1, p1

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, sKey:Ljava/lang/String;
    invoke-super {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v1           #sKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MultiWindowDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowTypeList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 84
    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    .local v1, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :goto_0
    return-object v1

    .line 80
    .end local v1           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    check-cast v0, Ljava/util/List;

    .line 81
    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    move-object v1, v0

    .line 84
    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    .restart local v1       #Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Owner"
    .parameter "src"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, Result:Z
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 105
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 99
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;

    .line 100
    .local v4, list:Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;
    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    .line 101
    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v5, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    invoke-virtual {v4, p2}, Lcom/android/server/sec/MultiWindowDataList$MultiWindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_2
    move v1, v0

    .line 105
    .restart local v1       #Result:I
    goto :goto_0
.end method

.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferSizePerUri:I

.field private mProvider:Landroid/content/IContentProvider;

.field private mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "bufferSizePerUri"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 41
    const-string v0, "MediaScanner"

    iput-object v0, p0, Landroid/media/MediaInserter;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 45
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 46
    return-void
.end method

.method private flush(Landroid/net/Uri;)V
    .locals 3
    .parameter "tableUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 78
    .local v1, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #valuesArray:[Landroid/content/ContentValues;
    check-cast v1, [Landroid/content/ContentValues;

    .line 79
    .restart local v1       #valuesArray:[Landroid/content/ContentValues;
    iget-object v2, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2, p1, v1}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 80
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    .end local v1           #valuesArray:[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    iget-object v0, p0, Landroid/media/MediaInserter;->TAG:Ljava/lang/String;

    const-string v1, "Buffer reminder cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public flushAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 62
    .local v1, tableUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    goto :goto_0

    .line 64
    .end local v1           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 65
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v1, v2, :cond_1

    .line 56
    invoke-direct {p0, p1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    .line 58
    :cond_1
    return-void
.end method

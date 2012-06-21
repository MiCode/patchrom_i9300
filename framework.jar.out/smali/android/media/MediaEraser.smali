.class public Landroid/media/MediaEraser;
.super Ljava/lang/Object;
.source "MediaEraser.java"


# instance fields
.field private mBufferSize:I

.field private mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/content/IContentProviderBulkExtention;

.field private mTotalDeleted:J


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 2
    .parameter "provider"
    .parameter "bufferSize"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    check-cast p1, Landroid/content/IContentProviderBulkExtention;

    .end local p1
    iput-object p1, p0, Landroid/media/MediaEraser;->mProvider:Landroid/content/IContentProviderBulkExtention;

    .line 42
    iput p2, p0, Landroid/media/MediaEraser;->mBufferSize:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaEraser;->mTotalDeleted:J

    .line 45
    return-void
.end method


# virtual methods
.method public bulkErase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-wide v0, p0, Landroid/media/MediaEraser;->mTotalDeleted:J

    iget-object v2, p0, Landroid/media/MediaEraser;->mProvider:Landroid/content/IContentProviderBulkExtention;

    iget-object v3, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    invoke-interface {v2, v3}, Landroid/content/IContentProviderBulkExtention;->bulkErase(Ljava/util/List;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/MediaEraser;->mTotalDeleted:J

    .line 61
    iget-object v0, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    :cond_0
    return-void
.end method

.method public erase(J)V
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Landroid/media/MediaEraser;->mIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/MediaEraser;->mBufferSize:I

    if-lt v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/media/MediaEraser;->bulkErase()V

    .line 52
    :cond_0
    return-void
.end method

.method public getTotalDeleted()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/media/MediaEraser;->mTotalDeleted:J

    return-wide v0
.end method

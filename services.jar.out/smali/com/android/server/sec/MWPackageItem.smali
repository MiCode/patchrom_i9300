.class public Lcom/android/server/sec/MWPackageItem;
.super Ljava/lang/Object;
.source "MWPackageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MWPackageItem$InnerItem;,
        Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mApplicationRect:Landroid/graphics/Rect;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mFixedSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

.field protected mKeepRatio:Z

.field protected mMinimPoint:Landroid/graphics/Point;

.field protected mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

.field protected mPackageName:Ljava/lang/String;

.field protected mPid:I

.field public mPreloadState:Z

.field protected mRestoreRect:Landroid/graphics/Rect;

.field protected mSubClassesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWClassItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"

    .prologue
    .line 138
    sget-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sec/MWPackageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;Ljava/util/List;)V
    .locals 7
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, sizeList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v2, "MWPackageItem"

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->TAG:Ljava/lang/String;

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 155
    iput-object p2, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mApplicationRect:Landroid/graphics/Rect;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    .line 160
    iput-object v6, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 161
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mRestoreRect:Landroid/graphics/Rect;

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 163
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x190

    const/16 v4, 0xfa

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    .line 164
    iput-object v6, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    iput v5, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    .line 166
    iput-object p4, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    .line 167
    invoke-virtual {p0, p1, v5}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;I)Z

    .line 170
    invoke-static {}, Lcom/android/server/sec/MultiWindowDataList;->getInstance()Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v0

    .line 171
    .local v0, instance:Lcom/android/server/sec/MultiWindowDataList;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p2}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .line 173
    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_0

    .line 174
    iget-boolean v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->isFixedRatio:Z

    iput-boolean v2, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 175
    iget-object v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->mFixedSizeList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    .line 176
    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v3, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v4, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 181
    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public addSubClassObject(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, Result:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 374
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 365
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const-string v3, "MWPackageItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addSubClassObject] sClassName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 369
    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_2

    .line 370
    new-instance v2, Lcom/android/server/sec/MWClassItem;

    .end local v2           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v2, p1}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v2       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 374
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public addSubClassObject(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 3
    .parameter "sClassName"
    .parameter "inMultiWindowAction"
    .parameter "taskId"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, Result:Z
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v1

    .line 388
    .local v1, obj:Lcom/android/server/sec/MWClassItem;
    if-nez v1, :cond_0

    .line 389
    new-instance v1, Lcom/android/server/sec/MWClassItem;

    .end local v1           #obj:Lcom/android/server/sec/MWClassItem;
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 390
    .restart local v1       #obj:Lcom/android/server/sec/MWClassItem;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 396
    :goto_0
    return v0

    .line 392
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/sec/MWClassItem;->setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 393
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public assigned(Lcom/android/server/sec/MWPackageItem;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 189
    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Org Assgined=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dst Assgined=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setMultiWindowRect(Landroid/graphics/Rect;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 196
    iget-object v0, p1, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 197
    iget-boolean v0, p1, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    iput-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 198
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getKeepRatio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setKeepRatio(Z)V

    .line 200
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getMinimumPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setMinimumPoint(Landroid/graphics/Point;)Z

    .line 201
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 202
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MWPackageItem;->setPid(I)V

    .line 203
    return-void
.end method

.method public findSubClassObject(Ljava/lang/String;)Z
    .locals 4
    .parameter "sClassName"

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .line 330
    .local v2, item:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 335
    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getComponentNameOfSubClass(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 4
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, Result:Landroid/content/ComponentName;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 347
    .local v2, data:Lcom/android/server/sec/MWClassItem;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 352
    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 350
    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #Result:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #Result:Landroid/content/ComponentName;
    move-object v1, v0

    .line 352
    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    return-object v0
.end method

.method public getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    return-object v0
.end method

.method public getKeepRatio()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    return v0
.end method

.method public getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;
    .locals 5
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, Result:Lcom/android/server/sec/MWClassItem;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 432
    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .local v1, Result:Lcom/android/server/sec/MWClassItem;
    :goto_0
    return-object v1

    .line 424
    .end local v1           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWClassItem;
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 425
    .local v3, obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 427
    :cond_2
    move-object v0, v3

    .end local v3           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_3
    move-object v1, v0

    .line 432
    .end local v0           #Result:Lcom/android/server/sec/MWClassItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWClassItem;
    goto :goto_0
.end method

.method public getMWClassItemCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMWClassItemFirstName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 504
    const-string v0, ""

    .line 505
    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 506
    .local v1, size:I
    if-lez v1, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getMWClassItemIndex(I)Lcom/android/server/sec/MWClassItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMWClassItemLast()Lcom/android/server/sec/MWClassItem;
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, size:I
    if-lez v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWClassItem;

    .line 482
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMWClassItemLastName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 490
    const-string v0, ""

    .line 491
    .local v0, sClassName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 492
    .local v1, size:I
    if-lez v1, :cond_0

    .line 493
    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getMinimumPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mApplicationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPid()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    return v0
.end method

.method public getRestoreRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mRestoreRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSubClassActionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 460
    .local v3, iCnt:I
    const/4 v4, 0x0

    .line 461
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 462
    iget-object v5, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v4, Lcom/android/server/sec/MWClassItem;

    .line 463
    .restart local v4       #obj:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v1

    .line 464
    .local v1, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v1, :cond_0

    .line 465
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 469
    .end local v1           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    :cond_1
    return-object v0
.end method

.method public getSubClassComponentNameList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .line 559
    .local v2, obj:Lcom/android/server/sec/MWClassItem;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v2           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_0
    return-object v0
.end method

.method public getSubClassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWClassItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    return-object v0
.end method

.method public isFullScreen()Z
    .locals 3

    .prologue
    .line 250
    const-string v0, "MWPackageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFullScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    sget-object v1, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public procSubClassOrganize()Z
    .locals 5

    .prologue
    .line 439
    const/4 v0, 0x1

    .line 441
    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 442
    .local v2, iCnt:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 443
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 444
    .local v3, sub:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v4

    if-nez v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 449
    .end local v3           #sub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return v0
.end method

.method public removeInnerItem()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 577
    return-void
.end method

.method public removeMWClassItem(Ljava/lang/String;I)Z
    .locals 7
    .parameter "sClassName"
    .parameter "taskId"

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, Result:Z
    const-string v4, "MWPackageItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeMWClassItem] sClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v1, v0

    .line 548
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 537
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const/4 v3, 0x0

    .line 538
    .local v3, obj:Lcom/android/server/sec/MWClassItem;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 539
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/android/server/sec/MWClassItem;
    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 540
    .restart local v3       #obj:Lcom/android/server/sec/MWClassItem;
    const-string v4, "MWPackageItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeMWClassItem] Remove Subobj ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 542
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 543
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 548
    .restart local v1       #Result:I
    goto :goto_0

    .line 538
    .end local v1           #Result:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removeMWClassItemAll()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bmp"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    .line 291
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    const/4 v0, 0x1

    .line 295
    :cond_1
    return v0
.end method

.method public setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 0
    .parameter "bLock"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 211
    return-void
.end method

.method public setInnerItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sParentClassName"
    .parameter "sChildClassName"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/android/server/sec/MWPackageItem$InnerItem;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sec/MWPackageItem$InnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mInnerItem:Lcom/android/server/sec/MWPackageItem$InnerItem;

    .line 573
    :cond_0
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/server/sec/MWPackageItem;->mKeepRatio:Z

    .line 264
    return-void
.end method

.method public setMinimumPoint(Landroid/graphics/Point;)Z
    .locals 3
    .parameter "point"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public setMultiWindowRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mApplicationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 227
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 303
    iput p1, p0, Lcom/android/server/sec/MWPackageItem;->mPid:I

    .line 304
    return-void
.end method

.method public setRestoreRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem;->mRestoreRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    return-void
.end method

.method public toObject()Landroid/sec/multiwindow/MultiWindowObject;
    .locals 5

    .prologue
    .line 612
    const-string v1, ""

    .line 613
    .local v1, sClassName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v2

    .line 614
    .local v2, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v2, :cond_0

    .line 615
    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 617
    :cond_0
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/content/ComponentName;)V

    .line 619
    .local v0, Result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v3

    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v3, v4, :cond_1

    .line 620
    sget-object v3, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v3}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/sec/multiwindow/MultiWindowObject;->setMultiWindowRect(Landroid/graphics/Rect;)V

    .line 627
    iget-object v3, p0, Lcom/android/server/sec/MWPackageItem;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/sec/multiwindow/MultiWindowObject;->setFixedSizeList(Ljava/util/List;)V

    .line 628
    return-object v0

    .line 622
    :cond_1
    sget-object v3, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v3}, Landroid/sec/multiwindow/MultiWindowObject;->setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, ", FullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, ", rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mApplicationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, ", Min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v1, p0, Lcom/android/server/sec/MWPackageItem;->mMinimPoint:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toSubString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "SubItem Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, i:I
    iget-object v4, p0, Lcom/android/server/sec/MWPackageItem;->mSubClassesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWClassItem;

    .line 603
    .local v2, item:Lcom/android/server/sec/MWClassItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "                "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/sec/MWClassItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v2           #item:Lcom/android/server/sec/MWClassItem;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

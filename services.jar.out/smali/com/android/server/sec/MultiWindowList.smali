.class public Lcom/android/server/sec/MultiWindowList;
.super Ljava/util/ArrayList;
.source "MultiWindowList.java"

# interfaces
.implements Lcom/android/server/sec/IMultiWindowList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowList$MWDataListStorage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/sec/MWPackageItem;",
        ">;",
        "Lcom/android/server/sec/IMultiWindowList;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiWindowList"

.field private static final serialVersionUID:J = 0x1403L


# instance fields
.field protected LIMITED_SIZE:I

.field protected mFocusedIndex:I

.field private mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 350
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/sec/MultiWindowList;->LIMITED_SIZE:I

    .line 27
    new-instance v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    .line 28
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/sec/MWPackageItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 50
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->add(Lcom/android/server/sec/IMultiWindowList;ILcom/android/server/sec/MWPackageItem;)V

    .line 51
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    check-cast p2, Lcom/android/server/sec/MWPackageItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sec/MultiWindowList;->add(ILcom/android/server/sec/MWPackageItem;)V

    return-void
.end method

.method public add(Lcom/android/server/sec/MWPackageItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 39
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->add(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;)V

    .line 40
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/android/server/sec/MWPackageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    move-result v0

    return v0
.end method

.method public addNewItem(Lcom/android/server/sec/MWPackageItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->runSize()I

    move-result v3

    .line 363
    .local v3, iCount:I
    const-string v4, "MultiWindowList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AddNewItem] iCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    move-result v0

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 367
    const-string v4, "MultiWindowList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddNewItem => index=0, list add. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , Result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 382
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 371
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 372
    .local v2, existItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v2, :cond_1

    .line 373
    const/4 v0, 0x1

    .line 374
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowList;->changedFocus(Ljava/lang/String;)V

    .line 375
    const-string v4, "MultiWindowList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exist package => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 376
    .restart local v1       #Result:I
    goto :goto_0

    .line 379
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    move-result v0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    move v1, v0

    .line 382
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public changedFocus(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 391
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 394
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "MultiWindowList"

    const-string v1, "[clear] !!!"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v0, p0}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->clear(Lcom/android/server/sec/IMultiWindowList;)V

    .line 92
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 94
    return-void
.end method

.method public finishItem(Landroid/content/ComponentName;I)Z
    .locals 7
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 529
    .local v2, finItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    .line 530
    const-string v4, "MultiWindowList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishItem sName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 539
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 534
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lcom/android/server/sec/MWPackageItem;->removeMWClassItem(Ljava/lang/String;I)Z

    .line 535
    const/4 v0, 0x1

    .line 537
    const-string v4, "MultiWindowList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishItem sName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 539
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public firstRunItem()Lcom/android/server/sec/MWPackageItem;
    .locals 4

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 271
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v3, :cond_0

    .line 272
    move-object v0, v2

    .line 277
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return-object v0
.end method

.method public getFocusItem()Lcom/android/server/sec/MWPackageItem;
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    goto :goto_0
.end method

.method public getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 283
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    return-object v0
.end method

.method public getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
    .locals 1
    .parameter "className"

    .prologue
    .line 354
    new-instance v0, Lcom/android/server/sec/MWPackageItem;

    invoke-direct {v0, p1}, Lcom/android/server/sec/MWPackageItem;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 297
    .local v4, iCount:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    .line 298
    .local v5, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v10, v5, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v10, :cond_0

    .line 301
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v7

    .line 303
    .local v7, subList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWClassItem;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWClassItem;

    .line 305
    .local v6, subItem:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v0

    .line 306
    .local v0, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-nez v0, :cond_2

    .line 307
    const-string v10, "MultiWindowList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action is null. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->isMultiWindowVisibleFlagFuncCalled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 313
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v1

    .line 315
    .local v1, flag:I
    and-int/lit8 v10, v1, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->procMultiWindowVisibleFlagFuncCalled()V

    goto :goto_0

    .line 320
    :cond_3
    and-int/lit8 v10, v1, 0x1

    if-ne v10, v8, :cond_1

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->procMultiWindowVisibleFlagFuncCalled()V

    goto :goto_0

    .line 329
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v1           #flag:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #subItem:Lcom/android/server/sec/MWClassItem;
    .end local v7           #subList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWClassItem;>;"
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v4, :cond_5

    :goto_1
    return v8

    :cond_5
    move v8, v9

    goto :goto_1
.end method

.method public getVisibleItem()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 401
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 402
    .local v3, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v3           #sub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    return-object v0
.end method

.method public hasFullSreen()Z
    .locals 4

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 570
    .local v2, itm:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 576
    .end local v2           #itm:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return v0
.end method

.method public hasItemOfName(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->hasItemOfName(Ljava/lang/String;)Z

    move-result v0

    .line 289
    .local v0, Result:Z
    return v0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "className"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 547
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v3, :cond_0

    .line 548
    const-string v5, "MultiWindowList"

    const-string v6, "real remove Item : Not found"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 562
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 552
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    if-eqz v3, :cond_1

    .line 553
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    .line 554
    .local v4, mwSub:Lcom/android/server/sec/MWClassItem;
    if-eqz v4, :cond_1

    .line 555
    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v2

    .line 556
    .local v2, flag:I
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 557
    const/4 v0, 0x1

    .end local v2           #flag:I
    .end local v4           #mwSub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    move v1, v0

    .line 562
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public nextRunItem(Lcom/android/server/sec/MWPackageItem;)Lcom/android/server/sec/MWPackageItem;
    .locals 5
    .parameter "item"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 231
    .local v2, index:I
    if-gez v2, :cond_0

    move-object v1, v0

    .line 244
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .local v1, Result:Lcom/android/server/sec/MWPackageItem;
    :goto_0
    return-object v1

    .line 234
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 238
    .local v3, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v4, v3, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v4, :cond_2

    .line 239
    move-object v0, v3

    .end local v3           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    move-object v1, v0

    .line 244
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    goto :goto_0

    .line 236
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v3       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public previousRunItem(Lcom/android/server/sec/MWPackageItem;)Lcom/android/server/sec/MWPackageItem;
    .locals 5
    .parameter "item"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 251
    .local v2, index:I
    if-gez v2, :cond_0

    move-object v1, v0

    .line 264
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .local v1, Result:Lcom/android/server/sec/MWPackageItem;
    :goto_0
    return-object v1

    .line 254
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 256
    :goto_1
    if-ltz v2, :cond_1

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 258
    .local v3, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v4, v3, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v4, :cond_2

    .line 259
    move-object v0, v3

    .end local v3           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    move-object v1, v0

    .line 264
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    goto :goto_0

    .line 256
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v3       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public readyAdd(Lcom/android/server/sec/MWPackageItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    .line 57
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->add(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;)V

    .line 58
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readyGet(I)Lcom/android/server/sec/MWPackageItem;
    .locals 5
    .parameter "location"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    const/4 v2, 0x0

    .line 141
    .local v2, index:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 142
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v4, v3, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-nez v4, :cond_1

    .line 143
    if-ne v2, p1, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    .line 151
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-object v0

    .line 148
    .restart local v3       #item:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public readyNextIndex(I)Lcom/android/server/sec/MWPackageItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 176
    :cond_0
    const/4 p1, 0x0

    .line 179
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 181
    .local v2, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-nez v3, :cond_3

    .line 182
    move-object v0, v2

    .line 187
    .end local v2           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    return-object v0

    .line 179
    .restart local v2       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readyPreviousIndex(I)Lcom/android/server/sec/MWPackageItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    .line 215
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 217
    .local v2, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-nez v3, :cond_3

    .line 218
    move-object v0, v2

    .line 223
    .end local v2           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    return-object v0

    .line 215
    .restart local v2       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public readySize()I
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, Result:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 111
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-nez v3, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return v0
.end method

.method public realRemoveItem(Landroid/content/ComponentName;I)Z
    .locals 10
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 424
    .local v2, delItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    .line 425
    const-string v7, "MultiWindowList"

    const-string v8, "real remove Item : Not found"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 454
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 430
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const/4 v4, 0x0

    .line 431
    .local v4, exisitsOtherTaskItem:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v3, deleteClassesList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWClassItem;>;"
    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    .line 433
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 434
    invoke-virtual {v2, v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemIndex(I)Lcom/android/server/sec/MWClassItem;

    move-result-object v6

    .line 435
    .local v6, mwClassItem:Lcom/android/server/sec/MWClassItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getTaskId()I

    move-result v7

    if-eq v7, p2, :cond_2

    .line 436
    const/4 v4, 0x1

    .line 444
    .end local v5           #i:I
    .end local v6           #mwClassItem:Lcom/android/server/sec/MWClassItem;
    :cond_1
    if-eqz v4, :cond_3

    .line 445
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 446
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWClassItem;

    invoke-virtual {v7}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, p2}, Lcom/android/server/sec/MWPackageItem;->removeMWClassItem(Ljava/lang/String;I)Z

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 439
    .restart local v6       #mwClassItem:Lcom/android/server/sec/MWClassItem;
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 449
    .end local v5           #i:I
    .end local v6           #mwClassItem:Lcom/android/server/sec/MWClassItem;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 453
    :cond_4
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "real remove Item : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 454
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    move-object v0, p1

    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->remove(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;)V

    .line 65
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeItem(Landroid/content/ComponentName;I)Z
    .locals 10
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, sClassName:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 471
    .local v2, delItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    .line 472
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeItem sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 520
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 477
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[removeItem]1 sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> countItem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v2, v6, p2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v7

    if-nez v7, :cond_1

    .line 479
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[removeItem]9 sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 480
    .restart local v1       #Result:I
    goto :goto_0

    .line 482
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2, v6, p2}, Lcom/android/server/sec/MWPackageItem;->removeMWClassItem(Ljava/lang/String;I)Z

    .line 484
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v3

    .line 485
    .local v3, iCount:I
    if-lez v3, :cond_2

    .line 486
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[removeItem]2 sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> countItem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 487
    .restart local v1       #Result:I
    goto :goto_0

    .line 490
    .end local v1           #Result:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 491
    .local v4, iFocusIndex:I
    if-gez v4, :cond_3

    .line 492
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeItem sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/iFocusIndex : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 493
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 496
    .end local v1           #Result:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->runSize()I

    move-result v3

    .line 500
    const/4 v7, 0x1

    if-ge v3, v7, :cond_4

    .line 501
    const-string v7, "MultiWindowList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeItem sName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/iCount_1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 502
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 506
    .end local v1           #Result:I
    :cond_4
    const/4 v7, 0x2

    if-ge v3, v7, :cond_7

    .line 507
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->firstRunItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 515
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iput v7, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    :cond_6
    move v1, v0

    .line 520
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 509
    .end local v1           #Result:I
    :cond_7
    iget v7, p0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    if-ne v4, v7, :cond_5

    .line 510
    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowList;->runNextIndex(I)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 511
    if-nez v2, :cond_5

    .line 512
    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowList;->runPreviousIndex(I)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    goto :goto_1
.end method

.method protected final replace(Lcom/android/server/sec/MWPackageItem;Lcom/android/server/sec/MWPackageItem;)Z
    .locals 3
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowList;->mMWDataListStorage:Lcom/android/server/sec/MultiWindowList$MWDataListStorage;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->replace(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;Lcom/android/server/sec/MWPackageItem;)V

    .line 78
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 79
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 80
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/sec/MultiWindowList;->addNewItem(Lcom/android/server/sec/MWPackageItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public runGet(I)Lcom/android/server/sec/MWPackageItem;
    .locals 5
    .parameter "location"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    const/4 v2, 0x0

    .line 123
    .local v2, index:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 124
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v4, v3, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v4, :cond_1

    .line 125
    if-ne v2, p1, :cond_1

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    .line 133
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-object v0

    .line 130
    .restart local v3       #item:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public runNextIndex(I)Lcom/android/server/sec/MWPackageItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 158
    :cond_0
    const/4 p1, 0x0

    .line 161
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 163
    .local v2, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v3, :cond_3

    .line 164
    move-object v0, v2

    .line 169
    .end local v2           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    return-object v0

    .line 161
    .restart local v2       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public runPreviousIndex(I)Lcom/android/server/sec/MWPackageItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    .line 197
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 199
    .local v2, tmp:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-nez v3, :cond_3

    .line 200
    move-object v0, v2

    .line 205
    .end local v2           #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    return-object v0

    .line 197
    .restart local v2       #tmp:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public runSize()I
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, Result:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 100
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    iget-boolean v3, v2, Lcom/android/server/sec/MWPackageItem;->mPreloadState:Z

    if-eqz v3, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, strbld:Ljava/lang/StringBuilder;
    const-string v5, "===========================================================\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List item count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 339
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 341
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    const-string v5, "===========================================================\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

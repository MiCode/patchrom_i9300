.class public interface abstract Lcom/android/server/sec/IMultiWindowList;
.super Ljava/lang/Object;
.source "IMultiWindowList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/android/server/sec/MWPackageItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addNewItem(Lcom/android/server/sec/MWPackageItem;)Z
.end method

.method public abstract changedFocus(Ljava/lang/String;)V
.end method

.method public abstract finishItem(Landroid/content/ComponentName;I)Z
.end method

.method public abstract firstRunItem()Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract getFocusItem()Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public abstract getVisibleItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFullSreen()Z
.end method

.method public abstract hasItemOfName(Ljava/lang/String;)Z
.end method

.method public abstract isVisible(Landroid/content/ComponentName;)Z
.end method

.method public abstract nextRunItem(Lcom/android/server/sec/MWPackageItem;)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract previousRunItem(Lcom/android/server/sec/MWPackageItem;)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract readyAdd(Lcom/android/server/sec/MWPackageItem;)Z
.end method

.method public abstract readyGet(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract readyNextIndex(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract readyPreviousIndex(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract readySize()I
.end method

.method public abstract realRemoveItem(Landroid/content/ComponentName;I)Z
.end method

.method public abstract runGet(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract runNextIndex(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract runPreviousIndex(I)Lcom/android/server/sec/MWPackageItem;
.end method

.method public abstract runSize()I
.end method

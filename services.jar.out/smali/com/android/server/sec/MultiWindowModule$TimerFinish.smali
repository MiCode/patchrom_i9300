.class public Lcom/android/server/sec/MultiWindowModule$TimerFinish;
.super Ljava/util/TimerTask;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TimerFinish"
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private sPackageNames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 1
    .parameter "am"
    .parameter "sPackageName"

    .prologue
    .line 1228
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1229
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    .line 1230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    .line 1231
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1232
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;Ljava/util/List;)V
    .locals 5
    .parameter "am"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, mwObjList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1235
    const-string v2, "AbsMultiWindowModule"

    const-string v3, "[TimerFinish]"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    .line 1237
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    .line 1238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem;

    .line 1239
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1240
    const-string v2, "AbsMultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TimerFinish] cancel out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    .end local v1           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1249
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1250
    .local v1, sPackageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->cancel()Z

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->removeTask(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_1
    const-string v2, "AbsMultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TimerFinish] cancel out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->cancel()Z

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AbsMultiWindowModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

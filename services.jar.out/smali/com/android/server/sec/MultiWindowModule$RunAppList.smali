.class public Lcom/android/server/sec/MultiWindowModule$RunAppList;
.super Ljava/util/LinkedList;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RunAppList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14bdL


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1273
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method private final checkIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .parameter "intent"

    .prologue
    const/high16 v5, 0x1000

    const/high16 v4, 0x20

    .line 1299
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, sIntentAction:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1301
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1304
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 1305
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    .end local v0           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1313
    .local v1, flag:I
    and-int v3, v1, v5

    if-eq v3, v5, :cond_1

    .line 1314
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1316
    :cond_1
    and-int v3, v1, v4

    if-eq v3, v4, :cond_2

    .line 1317
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1319
    :cond_2
    return-object p1

    .line 1307
    .end local v1           #flag:I
    .restart local v0       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1308
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private final convertIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .parameter "componentName"

    .prologue
    .line 1283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1284
    .local v0, Result:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1287
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1289
    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->convertIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public add(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1273
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1357
    .local p1, collection:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v1

    .line 1359
    .local v1, iCurrentCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1360
    .local v2, item:Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->convertIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1363
    .end local v2           #item:Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public addFirst(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1335
    return-void
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1273
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->addFirst(Landroid/content/Intent;)V

    return-void
.end method

.method public addLast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1339
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1340
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1273
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->addLast(Landroid/content/Intent;)V

    return-void
.end method

.method public push(Landroid/content/Intent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1325
    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1273
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->push(Landroid/content/Intent;)V

    return-void
.end method
